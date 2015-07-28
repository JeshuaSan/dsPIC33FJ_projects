#include "device/configbits.h"
#include "device/bsp.h"
#include "peripheral/ic.h"
#include "oled/oled.h"
#include "servo/servo.h"
#include "control/control.h"
#include "robot/robot.h"
#include <libpic30.h>

#define TMR3_PS         256U
#define TMR3_PERIOD     (FCY / TMR3_PS)

uint8_t oledUpdate = 0;
uint8_t computePID = 0;


uint16_t freq[] = {0, 0};
uint16_t ellapsedTime = 0;

static void OledUpdate(void);
    fractional out;
Gains K[2];

int main(void) 
{
    sys_init();
    
    ic_init(_IC_1, IC_1);
    ic_start(_IC_1,_IC_EVERY_RISING);
    ic_init(_IC_2, IC_3);
    ic_start(_IC_2,_IC_EVERY_RISING);
    
    servo_init(50U, PTCKPS_64);
    //servo_setDCPC(SERVO_1, 90);
    //servo_setDCPC(SERVO_2, 0);
    servo_start();
    
    oled_init();
    oled_clearDisplay();
    oled_render();
    
    __delay_ms(1000);
    
    K[0].Kp = Q15(0.1000);
    K[0].Ki = Q15(0.0060);
    K[0].Kd = Q15(0.0000);
    ctrl_init(pidL, K[0]);
    ctrl_setSetpoint(pidL, 0);
    
    ctrl_init(pidO, K[0]);
    ctrl_setSetpoint(pidO, 0);
    
    while(1)
    {
        if (BIT_CHECK(_sysTick, SYSTICK_1MS))
        {
            
            BIT_CLR(_sysTick, SYSTICK_1MS);
        }
        if (BIT_CHECK(_sysTick, SYSTICK_10MS))
        {
            if(++oledUpdate > 5)
            {
                OledUpdate();
                oledUpdate = 0;
            }
            
            if(++computePID > 2)
            {
                //ctrl_computeSpeed();
                out = ctrl_PID(pidO, Q15(0.5));
                computePID = 0;
            }
            
            _robot.params.wSpeed[wL] = ic_getPeriod(_IC_1);
            //freq[0] = _robot.params.wSpeed[wL] == 0 ? 0 : TMR3_PERIOD / _robot.params.wSpeed[wL];
            
            _robot.params.wSpeed[wR]= ic_getPeriod(_IC_2);
            //freq[1] = _robot.params.wSpeed[wR] == 0 ? 0 : TMR3_PERIOD / _robot.params.wSpeed[wR];
            
            BIT_CLR(_sysTick, SYSTICK_10MS);
        }
        
        if (BIT_CHECK(_sysTick, SYSTICK_100MS))
        {
            
            BIT_CLR(_sysTick, SYSTICK_100MS);
        }
        
        if (BIT_CHECK(_sysTick, SYSTICK_1000MS))
        {
            ++ellapsedTime;
            BIT_CLR(_sysTick, SYSTICK_1000MS);
        }
    }
    
    return (0);
}

static void OledUpdate(void)
{
    oled_clearDisplay();
    oled_printf(1, 1, "Orientation: %i ", out);
    oled_printf(1, 3, "Out: %i", ctrl_getControlOutput(pidL));
    oled_printf(1, 5, "Ellapsed time: %i s", ellapsedTime);
    oled_render();
}


