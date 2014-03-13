#include "device/configbits.h"
#include "device/pinconfig.h"
#include "device/sysconfig.h"
#include "peripheral/uart.h"
#include "cobs/cobs.h"
#include <stdint.h>

#define SIZE    (14U)

int main(void)
{
    sys_init();
    uart_init(115200U);

    uint8_t rawBuffer[] = {0x07, 0x09, 0x00, 0x01, 0x00, 0x00, 0x02, 0x03, 0x04, 0x05, 0x06, 0x00, 0x18, 0x22};
    uint8_t encodedBuffer[SIZE+1] = {0};
    uint8_t decodedBuffer[SIZE] = {0};


    cobs_encode(rawBuffer, 14, encodedBuffer);
    cobs_decode(encodedBuffer, 15, decodedBuffer);
    uint8_t *ptrBuffer = rawBuffer;

    while(1)
    {
        if (uart_charReady())
        {
            uint8_t echo = uart_getc();
            uint8_t i = SIZE+1;
            for(i=0; i<14; ++i)
            {
                uart_putc(*ptrBuffer);
                ++ptrBuffer;
            }
            LED ^= 1;
        }
        ptrBuffer = rawBuffer;
    }
    return (0);
}
