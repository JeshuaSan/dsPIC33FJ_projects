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
    uint16_t i = 0;
    sys_init();
    oled_init();
    
    timer_init(TIMER1);
    timer_set_ms(TIMER1,1);
    timer_start(TIMER1);
    
    servo_init(50U, PTCKPS_64);
    //mcpwm_setDCPC(MC_PWM1, 50);
    //mcpwm_setDC(MC_PWM1, 5570U);
    //mcpwm_setDC(MC_PWM1, 1024U);
    //mcpwm_setDC(MC_PWM1, 4915U);
    //mcpwm_setDCPC(MC_PWM2, 0);
    servo_start();
    

    
    i = 0xFFFF;
    for(i = 2048; i < 4096; i+=10)
    {
        P1DC1 = i;
        __delay_ms(1000);
        oled_clearDisplay();
        oled_printf(1,1,"DC: %i", i);
        oled_render();
    }
    P1DC1 = 0;
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
    if (_ms == 33)
    {
        oledUpdate = 1;
        _ms = 0;
    }
}

