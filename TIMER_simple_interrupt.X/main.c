#include "common/globals.h"
#include "common/types.h"
#include "device/configbits.h"
#include "device/bsp.h"
#include "peripheral/timer.h"
#include <stdint.h>

vuint16_t _ms = 0;

int main(void)
{
    sys_init();
    
    timer_init(TIMER1);
    timer_set_ms(TIMER1,1);
    timer_start(TIMER1);

    while(1)
    {
        if (_ms > 1000)
        {
            _ms = 0;
//            LED ^= 1;
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