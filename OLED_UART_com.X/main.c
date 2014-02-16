#include <stdint.h>
#include "configbits.h"
#include "sysconfig.h"
#include "pinconfig.h"
#include <libpic30.h>
#include "oled/oled.h"
#include "uart/uart.h"
#include "timer/timer1.h"

enum states {
    search_ini,
    search_d1,
    search_d2,
    search_end,
};


volatile uint8_t oledUpdate = 0;

int main(void)
{
    sys_init();

    oled_init();

    uart_init(115200);

    timer1_init();
    timer1_set_ms(16);

    oled_clearDisplay();
    oled_render();


    uint8_t firstState = search_ini;
    uint8_t state = firstState;

    uint8_t data[] = {0,0};

    timer1_start();
    while(1)
    {
        if (uart_charReady())
        {
            uint8_t echo = uart_getc();
            switch(state)
            {
                case search_ini:
                    if(echo == 'J')
                        state = search_d1;
                    else state = search_ini;
                    break;

                case search_d1:
                    data[0] = echo;
                    state = search_d2;
                    break;

                case search_d2:
                    data[1] = echo;
                    state = search_end;
                    break;

                case search_end:
                    if (echo == 'S')
                    {
                        oled_drawPixel(data[0], data[1]);
                    }
                    else if (echo == 'C')
                    {
                        oled_clearDisplay();
                    }
                    state = search_ini;
                    break;
            }
        }

        if (oledUpdate)
        {
            oled_render();
            oledUpdate = 0;
            LED ^= 1;
        }
    }
    return (0);
}

void __attribute__ ((__interrupt__, no_auto_psv)) _T1Interrupt(void)
{
    IFS0bits.T1IF = 0;      // Clear Timer1 interrupt flag
    oledUpdate = 1;
}