#ifndef CONTROL_H
#define CONTROL_H

#include <dsp.h>

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


void ctrl_initPID(ePIDindex iPID);
void ctrl_resetPID(ePIDindex iPID);
void ctrl_setGain(ePIDindex iPID, eKIndex kIndex, fractional k);

#endif	/* CONTROL_H */