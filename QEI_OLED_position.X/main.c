#include "device/configbits.h"
#include "device/sysconfig.h"
#include "device/pinconfig.h"
#include "common/globals.h"
#include "common/types.h"
#include "peripheral/qei.h"
#include "peripheral/timer.h"
#include "oled/oled.h"
#include <stdint.h>

vuint8_t oledUpdate = 0;

int main()
{
    sys_init();
    timer_init(TIMER1);
    timer_set_ms(TIMER1, 50);

    oled_init();

    qei_init(QEI1, QE1_A, QE1_B, QEI_4X_MATCH);
    timer_start(TIMER1);

    uint16_t count = 0;
    while(1)
    {
        if(oledUpdate)
        {
            count = qei_getCNT(QEI1);
            oled_clearDisplay();
            oled_printf(1, 1, "CNT: %i", count);
            oled_render();
            oledUpdate = 0;
            BIT_TGL(LATA, 4);
        }
    }
}

void _ISR_NOPSV _T1Interrupt(void)
{
    BIT_CLR(IFS0, TMR1_INT);
    oledUpdate = 1;
}