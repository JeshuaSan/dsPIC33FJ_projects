#include "common/globals.h"
#include "device/configbits.h"
#include "device/pinconfig.h"
#include "device/sysconfig.h"
#include "peripheral/timer.h"
#include <stdint.h>

volatile uint16_t _ms = 0;

int main(void)
{
    sys_init();
    
    timer_init(TIMER1);
    timer_set_ms(TIMER1,10);
    timer_start(TIMER1);

    while(1)
    {
        if (_ms > 1000)
        {
            _ms = 0;
            LED ^= 1;
            BIT_TGL(LATA, 4);
        }
    }
    return (0);
}


void __attribute__ ((interrupt, no_auto_psv)) _T1Interrupt(void)
{
    BIT_CLR(IFS0, TMR1_INT);      // Clear Timer1 interrupt flag
    _ms++;
}