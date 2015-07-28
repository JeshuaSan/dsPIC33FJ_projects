#ifndef CONTROL_H
#define CONTROL_H

#include <dsp.h>
#include <stdint.h>

typedef enum {
    pidL = 0,
    pidR,
    pidO,
} ePIDindex;

typedef enum{
    kp = 0,
    ki,
    kd
} eKIndex;

typedef struct
{
    fractional Kp;
    fractional Ki;
    fractional Kd;
} Gains;


void ctrl_init(ePIDindex iPID, Gains gains);
void ctrl_reset(ePIDindex iPID);
void ctrl_setGain(ePIDindex iPID, eKIndex kIndex, fractional k);
void ctrl_setSetpoint(ePIDindex iPID,  fractional setpoint);
void ctrl_computeSpeed(void);
int16_t ctrl_getControlOutput(ePIDindex iPID);
int16_t ctrl_getMeasuredOutput(ePIDindex iPID);
fractional ctrl_PID(ePIDindex iPID, fractional val);

#endif	/* CONTROL_H */