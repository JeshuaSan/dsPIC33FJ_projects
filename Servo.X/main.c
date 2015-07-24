#include "common/globals.h"
#include "common/types.h"
#include "device/configbits.h"
#include "device/pinconfig.h"
#include "device/sysconfig.h"
#include "peripheral/timer.h"
#include "peripheral/mcpwm.h"
#include <stdint.h>

vuint16_t _ms = 0;

int main(void)
{
    sys_init();
    
    timer_init(TIMER1);
    timer_set_ms(TIMER1,1);
    timer_start(TIMER1);
    
    mcpwm_init(50U, PTCKPS_64);
    mcpwm_setDCPC(MC_PWM1, 50);
    mcpwm_setDCPC(MC_PWM2, 50);
    mcpwm_start();

    while(1)
    {
        if (_ms > 1000)
        {
            _ms = 0;
            BIT_TGL(LATA, 4);
        }
    }
    return (0);
}


void _ISR_NOPSV _T1Interrupt(void)
{
    BIT_CLR(IFS0, TMR1_INT);      // Clear Timer1 interrupt flag
    ++_ms;
}