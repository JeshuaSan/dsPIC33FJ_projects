/* 
 * File:   robot.h
 * Author: jesus
 *
 * Created on July 27, 2015, 8:45 PM
 */

#ifndef ROBOT_H
#define	ROBOT_H

#ifdef	__cplusplus
extern "C" {
#endif
    
#include <stdint.h>
    
    enum
    {
        wL,
        wR
    };

    typedef struct
    {
        uint16_t wSpeed[2];
        int16_t line;
    } RobotParams;

    typedef struct
    {
        RobotParams params;
    } Robot;

    extern Robot _robot;
    
#ifdef	__cplusplus
}
#endif

#endif	/* ROBOT_H */

