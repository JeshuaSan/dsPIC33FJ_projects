#include "device/configbits.h"
#include "device/bsp.h"
#include "oled/oled.h"
#include "peripheral/timer.h"
#include "peripheral/adc.h"
#include <stdint.h>


volatile uint8_t oledUpdate = 0;
volatile uint16_t counter = 0;
int main(void)
{
    sys_init();
    timer_init(TIMER1);
    adc_init(AN4, AN5);

    oled_init();
    oled_clearDisplay();
    oled_printf(1,1,"ADC example");
    oled_render();

    adc_start();
    uint16_t adc0 = 0;
    uint16_t adc1 = 0;
    timer_set_ms(TIMER1, 30);
    timer_start(TIMER1);

    while(1)
    {
        if (BIT_CHECK(_sysTick, SYSTICK_10MS))
        {
            if(++oledUpdate > 5)
            {
                adc0 = adc_read(AN4)/16;
                adc1 = adc_read(AN5)/8;
                oled_clearDisplay();
                oled_printf(1,2,"AN4: %i", adc0);
                oled_printf(1,3,"AN5: %i", adc1);
                oled_printf(1,4,"counter: %X", counter);
                oled_render();
                oledUpdate = 0;
            }
        }
    }
    return (0);
}