#include "device/configbits.h"
#include "device/sysconfig.h"
#include "peripheral/mcpwm.h"
#include <stdint.h>


int main()
{
    sys_init();

    mcpwm_init(10000U);

    while(1)
    {

    }
    return 0;
}

