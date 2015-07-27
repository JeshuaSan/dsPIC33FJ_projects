#include "device/configbits.h"
#include "device/bsp.h"
#include "common/globals.h"
#include "common/types.h"
#include "peripheral/ic.h"
#include "peripheral/timer.h"
#include "oled/oled.h"
#include <stdint.h>

#define TMR3_PS         256U
#define TMR3_PERIOD     (FCY / TMR3_PS)

int main(void)
{
    sys_init();

    ic_init(_IC_1, IC_1);
    ic_start(_IC_1,_IC_EVERY_RISING);
    uint16_t period[] = {0, 0};
    uint16_t freq[] = {0, 0};

    oled_init();
    oled_clearDisplay();

    while(1)
    {
        if (BIT_CHECK(_sysTick, SYSTICK_100MS))
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
            BIT_CLR(_sysTick, SYSTICK_10MS);
        }
    }
    return 0;
}