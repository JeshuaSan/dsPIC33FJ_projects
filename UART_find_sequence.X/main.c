#include "device/configbits.h"
#include "device/sysconfig.h"
#include "device/pinconfig.h"
#include "peripheral/uart.h"
#include <stdint.h>


enum states {
    search,
    found_J,
    found_d1,
    found_d2
};
int main(void)
{
    sys_init();

    uart_init(115200);

    uint8_t firstState = search;
    uint8_t state = firstState;

    uint8_t data[] = {0,0};
    while(1)
    {
        if (uart_charReady())
        {
            uint8_t echo = uart_getc();
            switch(state)
            {
                case search:
                    if(echo == 'J') state = found_J;
                    else state = search;
                    break;

                case found_J:
                    data[0] = echo;
                    state = found_d1;
                    break;

                case found_d1:
                    data[1] = echo;
                    state = found_d2;
                    break;

                case found_d2:
                    if (echo == 'S') uart_putc('A');
                    state = search;
                    break;

            }

            LED ^= 1;
        }
    }
    return (0);
}