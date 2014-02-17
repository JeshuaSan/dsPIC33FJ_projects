#include "device/configbits.h"
#include "device/sysconfig.h"
#include "device/pinconfig.h"
#include "common/globals.h"
#include "common/types.h"
#include "peripheral/qei.h"
#include "oled/oled.h"
#include <stdint.h>

int main()
{
    sys_init();

    qei_init(QEI1);

    while(1)
    {

    }
}