#include "control.h"
#include <libq.h>

/** Control
 * 0 = Left wheel speed
 * 1 = Right wheel speed
 * 2 = Orientation
 */

tPID ctrlPID[3];
fractional abcCoefficient[3][3] __attribute__ ((space(xmemory),far));
fractional controlHistory[3][3] __attribute__ ((space(ymemory),far));
fractional kCoeffs[3][3];


static void ctrl_configPID(void);