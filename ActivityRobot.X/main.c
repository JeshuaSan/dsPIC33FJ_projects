#include "device/configbits.h"
#include "device/bsp.h"
#include "peripheral/ic.h"
#include "oled/oled.h"
#include "servo/servo.h"
#include <libpic30.h>

#define TMR3_PS         256U
#define TMR3_PERIOD     (FCY / TMR3_PS)

uint8_t oledUpdate = 0;


uint16_t period[] = {0, 0};
uint16_t freq[] = {0, 0};
uint16_t ellapsedTime = 0;

static void OledUpdate(void);

int main(void) 
{
    sys_init();
    
    ic_init(_IC_1, IC_1);
    ic_start(_IC_1,_IC_EVERY_RISING);
    ic_init(_IC_2, IC_2);
    ic_start(_IC_2,_IC_EVERY_RISING);
    
    servo_init(50U, PTCKPS_64);
    servo_setDCPC(SERVO_1, 50);
    servo_setDCPC(SERVO_2, 50);
    servo_start();
    
    oled_init();
    oled_clearDisplay();
    oled_render();
    
    __delay_ms(1000);
    
    while(1)
    {
        if (BIT_CHECK(_sysTick, SYSTICK_10MS))
        {
            if(++oledUpdate > 5)
            {
                OledUpdate();
                oledUpdate = 0;
            }
            
            period[0] = ic_getPeriod(_IC_1);
            freq[0] = period[0] == 0 ? 0 : TMR3_PERIOD / period[0];
            
            period[1] = ic_getPeriod(_IC_2);
            freq[1] = period[1] == 0 ? 0 : TMR3_PERIOD / period[1];
            
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
    oled_printf(1, 1, "Freq 1: %u Hz", freq[0]);
    oled_printf(1, 2, "Period 1: %u us", period[0]);
    oled_printf(1, 3, "Freq 2: %u Hz", freq[1]);
    oled_printf(1, 4, "Period 2: %u us", period[1]);
    oled_printf(1, 5, "Ellapsed time: %i s", ellapsedTime);
    oled_render();
}


