#include "device/configbits.h"
#include "device/sysconfig.h"
#include "device/pinconfig.h"
#include "common/globals.h"
#include "common/types.h"
#include "peripheral/ic.h"
#include "peripheral/timer.h"
#include "oled/oled.h"
#include <stdint.h>

#define TMR3_PS         256U
#define TMR3_PERIOD     (FCY / TMR3_PS)

vuint8_t oledUpdate = 0;

int main(void)
{
    sys_init();

    ic_init(_IC_1, IC_1);
    ic_start(_IC_1,_IC_EVERY_RISING);
    uint16_t period[2];
    uint16_t freq[2];

    oled_init();
    oled_clearDisplay();

    timer_init(TMR1);
    timer_set_ms(TMR1, 100);
    timer_start(TMR1);


    while(1)
    {
        if (oledUpdate != 0)
        {
            period[0] = ic_getPeriod(_IC_1);
            if (period[0] != 0)
            {
                freq[0] = TMR3_PERIOD / period[0];
            }
            oled_clearDisplay();
            oled_printf(1, 1, "Freq 1: %u Hz", freq[0]);
            oled_printf(1, 2, "Period 1: %u us", period[0]);
            oled_render();
            oledUpdate = 0;
        }
    }
    return 0;
}

void _ISR_NOPSV _T1Interrupt(void)
{
    oledUpdate = 1;
    BIT_CLR(IFS0, TMR1_INT);
}