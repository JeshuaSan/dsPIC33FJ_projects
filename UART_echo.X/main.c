#include "device/configbits.h"
#include "device/pinconfig.h"
#include "device/sysconfig.h"
#include "peripheral/uart.h"
#include <stdint.h>


int main(void)
{
    sys_init();
    uart_init(115200U);
    uart_putc('a');
    while(1)
    {
        if (uart_charReady())
        {
            uint8_t echo = uart_getc();
            uart_putc(echo);
            LED ^= 1;
        }
    }
    return (0);
}
