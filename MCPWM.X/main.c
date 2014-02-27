#include "device/configbits.h"
#include "device/sysconfig.h"
#include "peripheral/mcpwm.h"
#include <stdint.h>


int main()
{
    sys_init();

    mcpwm_init(15000U);
    mcpwm_setDCPC(MC_PWM1, 80);
    mcpwm_setDCPC(MC_PWM2, 20);
    mcpwm_start();
    while(1)
    {

    }
    return 0;
}

