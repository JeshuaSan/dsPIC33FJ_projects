#include "device/configbits.h"
#include "device/sysconfig.h"
#include "device/pinconfig.h"
#include "common/globals.h"
#include "oled/oled.h"
#include <libpic30.h>
#include <stdint.h>



int main(void)
{
    sys_init();
    oled_init();

    oled_clearDisplay();
    oled_prints(35, 4, "Hello world");  // print on center of the screen
    oled_render();

    while(1)
    {
        LED ^= 1;
        __delay_ms(100);
    }
    return (0);
}
