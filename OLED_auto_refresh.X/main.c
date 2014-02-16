#include <stdint.h>
#include "configbits.h"
#include "sysconfig.h"
#include "pinconfig.h"
#include "globals.h"
#include <libpic30.h>
#include "oled/oled.h"
#include "timer/timer1.h"


volatile uint16_t _ms = 0;
volatile uint8_t oledUpdate = 0;

int main(void) {
    sys_init();
    oled_init();
    timer1_init();
    timer1_set_ms(1);
    timer1_start();
    int8_t x = 0;
    oled_clearDisplay();
    oled_printf(1, 1, "Hello World!!");
    oled_render();
    __delay_ms(1000);
    while(1)
    {
        if (oledUpdate)
        {
            oled_clearDisplay();
            oled_printf(1,1,"HEX: %X", x&0xFF);
            oled_printf(1,2,"DEC: %i", x);
            oled_drawPixel(20,20);
            oled_render();
            LED ^= 1;
            x+=1;
            oledUpdate = 0;
        }
    }
    return (0);
}




void __attribute__ ((__interrupt__, no_auto_psv)) _T1Interrupt(void)
{
    IFS0bits.T1IF = 0;      // Clear Timer1 interrupt flag
    _ms++;
    if (_ms == 33)
    {
        oledUpdate = 1;
        _ms = 0;
    }
}