#include "common/globals.h"
#include "common/types.h"
#include "device/configbits.h"
#include "device/pinconfig.h"
#include "device/sysconfig.h"
#include "peripheral/timer.h"
#include "servo/servo.h"
#include "oled/oled.h"
#include <stdint.h>
#include <libpic30.h>

#define MAX_MS  (17U)    // 1.


volatile uint16_t _ms = 0;
volatile uint8_t oledUpdate = 0;

int main(void)
{
    sys_init();
    oled_init();
    
    timer_init(TIMER1);
    timer_set_ms(TIMER1,1);
    timer_start(TIMER1);
    
    servo_init(50U, PTCKPS_64);
    //servo_setDCPC(SERVO_1, 0);
    //servo_setDC(SERVO_1, 1695U);
    servo_setDCPC(SERVO_2, -50);
    //servo_setDC(SERVO_2, 1937U);
    servo_setDC(SERVO_1, 1866U);
    servo_start();

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

