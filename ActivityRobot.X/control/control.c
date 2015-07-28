#include "control.h"
#include "ActivityRobot.X/robot/robot.h"
#include <libq.h>
#include "servo/servo.h"

/** Control
 * 0 = Left wheel speed
 * 1 = Right wheel speed
 * 2 = Orientation
 */

tPID ctrlPID[3];
fractional abcCoefficient[3][3] __attribute__ ((space(xmemory),far));
fractional controlHistory[3][3] __attribute__ ((space(ymemory),far));
fractional kCoeffs[3][3];

static fractional _setpoint[3];



void ctrl_init(ePIDindex iPID, Gains gain)
{
    ctrlPID[iPID].abcCoefficients = &abcCoefficient[iPID][0];
    ctrlPID[iPID].controlHistory = &controlHistory[iPID][0];
    PIDInit(&ctrlPID[iPID]);

    kCoeffs[iPID][kp] = gain.Kp;
    kCoeffs[iPID][ki] = gain.Ki;
    kCoeffs[iPID][kd] = gain.Kd;
    PIDCoeffCalc(&kCoeffs[iPID][0], &ctrlPID[iPID]);
}

void ctrl_setSetpoint(ePIDindex iPID,  fractional setpoint)
{
    ctrlPID[iPID].controlReference = setpoint;
}

void ctrl_computeSpeed(void)
{
    ctrlPID[pidL].measuredOutput = 15 * _robot.params.wSpeed[pidL];
    PID(&ctrlPID[pidL]);
    servo_setDC(pidL, 1866 + (ctrlPID[pidL].controlOutput >> 7));
}

fractional ctrl_PID(ePIDindex iPID, fractional val)
{
    ctrlPID[pidO].measuredOutput = val;
    PID(&ctrlPID[iPID]);
    return ctrlPID[iPID].controlOutput;
}

int16_t ctrl_getControlOutput(ePIDindex iPID)
{
    return ctrlPID[iPID].controlOutput;
}

int16_t ctrl_getMeasuredOutput(ePIDindex iPID)
{
    return ctrlPID[iPID].measuredOutput;
}