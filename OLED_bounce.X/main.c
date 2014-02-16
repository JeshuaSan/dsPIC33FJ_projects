#include "device/configbits.h"
#include "device/sysconfig.h"
#include "device/pinconfig.h"
#include "peripheral/timer.h"
#include "oled/oled.h"
#include <stdint.h>


volatile uint8_t oledUpdate = 0;

void move(uint8_t* x, uint8_t* y, uint8_t* dx, uint8_t* dy);
void bounce(uint8_t* x, uint8_t* y, uint8_t* dx, uint8_t* dy);

int main(void)
{
    sys_init();
    oled_init();

    timer_init(TIMER1);
    timer_set_ms(TIMER1,16);
    
    // Initial parameters
    uint8_t x = OLED_WIDTH / 2;     // x initial position
    uint8_t y = OLED_HEIGHT / 2;    // y initial position
    uint8_t dx = 1;                 // x speed
    uint8_t dy = 1;                 // y speed

    
    oled_clearDisplay();
    oled_drawPixel(x,y);
    oled_render();
    
    timer_start(TIMER1);

    while(1)
    {
        if(oledUpdate)
        {
            LED ^= 1;
            oled_clearDisplay();
            move(&x, &y, &dx, &dy);
            oled_render();
            oledUpdate = 0;
        }
    }
    return (0);
}

void move(uint8_t* x, uint8_t* y, uint8_t* dx, uint8_t* dy)
{
    *x += *dx;
    *y += *dy;

    // Bounce off edges
    bounce(x, y, dx, dy);

    // Update pixel position
    oled_drawPixel(*x, *y);
}
void bounce(uint8_t* x, uint8_t* y, uint8_t* dx, uint8_t* dy)
{
    // bounce horizontally
    if ( (*x >= OLED_WIDTH) || *x <= 1)
    {
        *dx *= -1;
    }
    
    // bounce vertically
    if ((*y >= OLED_HEIGHT) || *y <= 1)    
    {
        *dy *= -1;
    }
}

void __attribute__ ((__interrupt__, no_auto_psv)) _T1Interrupt(void)
{
    IFS0bits.T1IF = 0;      // Clear Timer1 interrupt flag
    oledUpdate = 1;
}