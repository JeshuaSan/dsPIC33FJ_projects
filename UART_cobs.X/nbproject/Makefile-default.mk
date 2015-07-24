#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/UART_cobs.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/UART_cobs.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../../libs/cobs/cobs.c ../../libs/dspic33f_pic24h_corelibs/src/device/sysconfig.c ../../libs/dspic33f_pic24h_corelibs/src/peripheral/adc.c ../../libs/dspic33f_pic24h_corelibs/src/peripheral/ic.c ../../libs/dspic33f_pic24h_corelibs/src/peripheral/mcpwm.c ../../libs/dspic33f_pic24h_corelibs/src/peripheral/pps.c ../../libs/dspic33f_pic24h_corelibs/src/peripheral/qei.c ../../libs/dspic33f_pic24h_corelibs/src/peripheral/spi.c ../../libs/dspic33f_pic24h_corelibs/src/peripheral/timer.c ../../libs/dspic33f_pic24h_corelibs/src/peripheral/uart.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1321969922/cobs.o ${OBJECTDIR}/_ext/506297139/sysconfig.o ${OBJECTDIR}/_ext/230937639/adc.o ${OBJECTDIR}/_ext/230937639/ic.o ${OBJECTDIR}/_ext/230937639/mcpwm.o ${OBJECTDIR}/_ext/230937639/pps.o ${OBJECTDIR}/_ext/230937639/qei.o ${OBJECTDIR}/_ext/230937639/spi.o ${OBJECTDIR}/_ext/230937639/timer.o ${OBJECTDIR}/_ext/230937639/uart.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1321969922/cobs.o.d ${OBJECTDIR}/_ext/506297139/sysconfig.o.d ${OBJECTDIR}/_ext/230937639/adc.o.d ${OBJECTDIR}/_ext/230937639/ic.o.d ${OBJECTDIR}/_ext/230937639/mcpwm.o.d ${OBJECTDIR}/_ext/230937639/pps.o.d ${OBJECTDIR}/_ext/230937639/qei.o.d ${OBJECTDIR}/_ext/230937639/spi.o.d ${OBJECTDIR}/_ext/230937639/timer.o.d ${OBJECTDIR}/_ext/230937639/uart.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1321969922/cobs.o ${OBJECTDIR}/_ext/506297139/sysconfig.o ${OBJECTDIR}/_ext/230937639/adc.o ${OBJECTDIR}/_ext/230937639/ic.o ${OBJECTDIR}/_ext/230937639/mcpwm.o ${OBJECTDIR}/_ext/230937639/pps.o ${OBJECTDIR}/_ext/230937639/qei.o ${OBJECTDIR}/_ext/230937639/spi.o ${OBJECTDIR}/_ext/230937639/timer.o ${OBJECTDIR}/_ext/230937639/uart.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=../../libs/cobs/cobs.c ../../libs/dspic33f_pic24h_corelibs/src/device/sysconfig.c ../../libs/dspic33f_pic24h_corelibs/src/peripheral/adc.c ../../libs/dspic33f_pic24h_corelibs/src/peripheral/ic.c ../../libs/dspic33f_pic24h_corelibs/src/peripheral/mcpwm.c ../../libs/dspic33f_pic24h_corelibs/src/peripheral/pps.c ../../libs/dspic33f_pic24h_corelibs/src/peripheral/qei.c ../../libs/dspic33f_pic24h_corelibs/src/peripheral/spi.c ../../libs/dspic33f_pic24h_corelibs/src/peripheral/timer.c ../../libs/dspic33f_pic24h_corelibs/src/peripheral/uart.c main.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/UART_cobs.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33FJ128MC802
MP_LINKER_FILE_OPTION=,--script=p33FJ128MC802.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1321969922/cobs.o: ../../libs/cobs/cobs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1321969922" 
	@${RM} ${OBJECTDIR}/_ext/1321969922/cobs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1321969922/cobs.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libs/cobs/cobs.c  -o ${OBJECTDIR}/_ext/1321969922/cobs.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1321969922/cobs.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1    -omf=elf -O1 -I"../../libs/dspic33f_pic24h_corelibs/include" -I"../../libs" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1321969922/cobs.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/506297139/sysconfig.o: ../../libs/dspic33f_pic24h_corelibs/src/device/sysconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/506297139" 
	@${RM} ${OBJECTDIR}/_ext/506297139/sysconfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/506297139/sysconfig.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libs/dspic33f_pic24h_corelibs/src/device/sysconfig.c  -o ${OBJECTDIR}/_ext/506297139/sysconfig.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/506297139/sysconfig.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1    -omf=elf -O1 -I"../../libs/dspic33f_pic24h_corelibs/include" -I"../../libs" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/506297139/sysconfig.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/230937639/adc.o: ../../libs/dspic33f_pic24h_corelibs/src/peripheral/adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/230937639" 
	@${RM} ${OBJECTDIR}/_ext/230937639/adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/230937639/adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libs/dspic33f_pic24h_corelibs/src/peripheral/adc.c  -o ${OBJECTDIR}/_ext/230937639/adc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/230937639/adc.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1    -omf=elf -O1 -I"../../libs/dspic33f_pic24h_corelibs/include" -I"../../libs" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/230937639/adc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/230937639/ic.o: ../../libs/dspic33f_pic24h_corelibs/src/peripheral/ic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/230937639" 
	@${RM} ${OBJECTDIR}/_ext/230937639/ic.o.d 
	@${RM} ${OBJECTDIR}/_ext/230937639/ic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libs/dspic33f_pic24h_corelibs/src/peripheral/ic.c  -o ${OBJECTDIR}/_ext/230937639/ic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/230937639/ic.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1    -omf=elf -O1 -I"../../libs/dspic33f_pic24h_corelibs/include" -I"../../libs" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/230937639/ic.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/230937639/mcpwm.o: ../../libs/dspic33f_pic24h_corelibs/src/peripheral/mcpwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/230937639" 
	@${RM} ${OBJECTDIR}/_ext/230937639/mcpwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/230937639/mcpwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libs/dspic33f_pic24h_corelibs/src/peripheral/mcpwm.c  -o ${OBJECTDIR}/_ext/230937639/mcpwm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/230937639/mcpwm.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1    -omf=elf -O1 -I"../../libs/dspic33f_pic24h_corelibs/include" -I"../../libs" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/230937639/mcpwm.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/230937639/pps.o: ../../libs/dspic33f_pic24h_corelibs/src/peripheral/pps.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/230937639" 
	@${RM} ${OBJECTDIR}/_ext/230937639/pps.o.d 
	@${RM} ${OBJECTDIR}/_ext/230937639/pps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libs/dspic33f_pic24h_corelibs/src/peripheral/pps.c  -o ${OBJECTDIR}/_ext/230937639/pps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/230937639/pps.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1    -omf=elf -O1 -I"../../libs/dspic33f_pic24h_corelibs/include" -I"../../libs" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/230937639/pps.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/230937639/qei.o: ../../libs/dspic33f_pic24h_corelibs/src/peripheral/qei.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/230937639" 
	@${RM} ${OBJECTDIR}/_ext/230937639/qei.o.d 
	@${RM} ${OBJECTDIR}/_ext/230937639/qei.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libs/dspic33f_pic24h_corelibs/src/peripheral/qei.c  -o ${OBJECTDIR}/_ext/230937639/qei.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/230937639/qei.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1    -omf=elf -O1 -I"../../libs/dspic33f_pic24h_corelibs/include" -I"../../libs" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/230937639/qei.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/230937639/spi.o: ../../libs/dspic33f_pic24h_corelibs/src/peripheral/spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/230937639" 
	@${RM} ${OBJECTDIR}/_ext/230937639/spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/230937639/spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libs/dspic33f_pic24h_corelibs/src/peripheral/spi.c  -o ${OBJECTDIR}/_ext/230937639/spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/230937639/spi.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1    -omf=elf -O1 -I"../../libs/dspic33f_pic24h_corelibs/include" -I"../../libs" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/230937639/spi.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/230937639/timer.o: ../../libs/dspic33f_pic24h_corelibs/src/peripheral/timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/230937639" 
	@${RM} ${OBJECTDIR}/_ext/230937639/timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/230937639/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libs/dspic33f_pic24h_corelibs/src/peripheral/timer.c  -o ${OBJECTDIR}/_ext/230937639/timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/230937639/timer.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1    -omf=elf -O1 -I"../../libs/dspic33f_pic24h_corelibs/include" -I"../../libs" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/230937639/timer.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/230937639/uart.o: ../../libs/dspic33f_pic24h_corelibs/src/peripheral/uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/230937639" 
	@${RM} ${OBJECTDIR}/_ext/230937639/uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/230937639/uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libs/dspic33f_pic24h_corelibs/src/peripheral/uart.c  -o ${OBJECTDIR}/_ext/230937639/uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/230937639/uart.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1    -omf=elf -O1 -I"../../libs/dspic33f_pic24h_corelibs/include" -I"../../libs" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/230937639/uart.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1    -omf=elf -O1 -I"../../libs/dspic33f_pic24h_corelibs/include" -I"../../libs" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1321969922/cobs.o: ../../libs/cobs/cobs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1321969922" 
	@${RM} ${OBJECTDIR}/_ext/1321969922/cobs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1321969922/cobs.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libs/cobs/cobs.c  -o ${OBJECTDIR}/_ext/1321969922/cobs.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1321969922/cobs.o.d"        -g -omf=elf -O1 -I"../../libs/dspic33f_pic24h_corelibs/include" -I"../../libs" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/1321969922/cobs.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/506297139/sysconfig.o: ../../libs/dspic33f_pic24h_corelibs/src/device/sysconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/506297139" 
	@${RM} ${OBJECTDIR}/_ext/506297139/sysconfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/506297139/sysconfig.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libs/dspic33f_pic24h_corelibs/src/device/sysconfig.c  -o ${OBJECTDIR}/_ext/506297139/sysconfig.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/506297139/sysconfig.o.d"        -g -omf=elf -O1 -I"../../libs/dspic33f_pic24h_corelibs/include" -I"../../libs" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/506297139/sysconfig.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/230937639/adc.o: ../../libs/dspic33f_pic24h_corelibs/src/peripheral/adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/230937639" 
	@${RM} ${OBJECTDIR}/_ext/230937639/adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/230937639/adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libs/dspic33f_pic24h_corelibs/src/peripheral/adc.c  -o ${OBJECTDIR}/_ext/230937639/adc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/230937639/adc.o.d"        -g -omf=elf -O1 -I"../../libs/dspic33f_pic24h_corelibs/include" -I"../../libs" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/230937639/adc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/230937639/ic.o: ../../libs/dspic33f_pic24h_corelibs/src/peripheral/ic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/230937639" 
	@${RM} ${OBJECTDIR}/_ext/230937639/ic.o.d 
	@${RM} ${OBJECTDIR}/_ext/230937639/ic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libs/dspic33f_pic24h_corelibs/src/peripheral/ic.c  -o ${OBJECTDIR}/_ext/230937639/ic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/230937639/ic.o.d"        -g -omf=elf -O1 -I"../../libs/dspic33f_pic24h_corelibs/include" -I"../../libs" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/230937639/ic.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/230937639/mcpwm.o: ../../libs/dspic33f_pic24h_corelibs/src/peripheral/mcpwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/230937639" 
	@${RM} ${OBJECTDIR}/_ext/230937639/mcpwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/230937639/mcpwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libs/dspic33f_pic24h_corelibs/src/peripheral/mcpwm.c  -o ${OBJECTDIR}/_ext/230937639/mcpwm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/230937639/mcpwm.o.d"        -g -omf=elf -O1 -I"../../libs/dspic33f_pic24h_corelibs/include" -I"../../libs" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/230937639/mcpwm.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/230937639/pps.o: ../../libs/dspic33f_pic24h_corelibs/src/peripheral/pps.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/230937639" 
	@${RM} ${OBJECTDIR}/_ext/230937639/pps.o.d 
	@${RM} ${OBJECTDIR}/_ext/230937639/pps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libs/dspic33f_pic24h_corelibs/src/peripheral/pps.c  -o ${OBJECTDIR}/_ext/230937639/pps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/230937639/pps.o.d"        -g -omf=elf -O1 -I"../../libs/dspic33f_pic24h_corelibs/include" -I"../../libs" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/230937639/pps.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/230937639/qei.o: ../../libs/dspic33f_pic24h_corelibs/src/peripheral/qei.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/230937639" 
	@${RM} ${OBJECTDIR}/_ext/230937639/qei.o.d 
	@${RM} ${OBJECTDIR}/_ext/230937639/qei.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libs/dspic33f_pic24h_corelibs/src/peripheral/qei.c  -o ${OBJECTDIR}/_ext/230937639/qei.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/230937639/qei.o.d"        -g -omf=elf -O1 -I"../../libs/dspic33f_pic24h_corelibs/include" -I"../../libs" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/230937639/qei.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/230937639/spi.o: ../../libs/dspic33f_pic24h_corelibs/src/peripheral/spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/230937639" 
	@${RM} ${OBJECTDIR}/_ext/230937639/spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/230937639/spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libs/dspic33f_pic24h_corelibs/src/peripheral/spi.c  -o ${OBJECTDIR}/_ext/230937639/spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/230937639/spi.o.d"        -g -omf=elf -O1 -I"../../libs/dspic33f_pic24h_corelibs/include" -I"../../libs" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/230937639/spi.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/230937639/timer.o: ../../libs/dspic33f_pic24h_corelibs/src/peripheral/timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/230937639" 
	@${RM} ${OBJECTDIR}/_ext/230937639/timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/230937639/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libs/dspic33f_pic24h_corelibs/src/peripheral/timer.c  -o ${OBJECTDIR}/_ext/230937639/timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/230937639/timer.o.d"        -g -omf=elf -O1 -I"../../libs/dspic33f_pic24h_corelibs/include" -I"../../libs" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/230937639/timer.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/230937639/uart.o: ../../libs/dspic33f_pic24h_corelibs/src/peripheral/uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/230937639" 
	@${RM} ${OBJECTDIR}/_ext/230937639/uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/230937639/uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../libs/dspic33f_pic24h_corelibs/src/peripheral/uart.c  -o ${OBJECTDIR}/_ext/230937639/uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/230937639/uart.o.d"        -g -omf=elf -O1 -I"../../libs/dspic33f_pic24h_corelibs/include" -I"../../libs" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/230937639/uart.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d"        -g -omf=elf -O1 -I"../../libs/dspic33f_pic24h_corelibs/include" -I"../../libs" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/UART_cobs.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/UART_cobs.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1  -omf=elf  -mreserve=data@0x800:0x822   -Wl,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PICKIT2=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST) 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/UART_cobs.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/UART_cobs.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -Wl,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST) 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/UART_cobs.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf  
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
