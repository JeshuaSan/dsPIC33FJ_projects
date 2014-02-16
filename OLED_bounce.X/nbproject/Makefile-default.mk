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
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/OLED_bounce.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/OLED_bounce.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../include/oled/oled.c ../include/oled/oled_draw.c ../include/oled/oled_print.c ../include/oled/SSD1306.c ../include/spi/spi.c ../include/timer/timer1.c ../include/sysconfig.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/2142847026/oled.o ${OBJECTDIR}/_ext/2142847026/oled_draw.o ${OBJECTDIR}/_ext/2142847026/oled_print.o ${OBJECTDIR}/_ext/2142847026/SSD1306.o ${OBJECTDIR}/_ext/346513930/spi.o ${OBJECTDIR}/_ext/2008284431/timer1.o ${OBJECTDIR}/_ext/262068057/sysconfig.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/2142847026/oled.o.d ${OBJECTDIR}/_ext/2142847026/oled_draw.o.d ${OBJECTDIR}/_ext/2142847026/oled_print.o.d ${OBJECTDIR}/_ext/2142847026/SSD1306.o.d ${OBJECTDIR}/_ext/346513930/spi.o.d ${OBJECTDIR}/_ext/2008284431/timer1.o.d ${OBJECTDIR}/_ext/262068057/sysconfig.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/2142847026/oled.o ${OBJECTDIR}/_ext/2142847026/oled_draw.o ${OBJECTDIR}/_ext/2142847026/oled_print.o ${OBJECTDIR}/_ext/2142847026/SSD1306.o ${OBJECTDIR}/_ext/346513930/spi.o ${OBJECTDIR}/_ext/2008284431/timer1.o ${OBJECTDIR}/_ext/262068057/sysconfig.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=../include/oled/oled.c ../include/oled/oled_draw.c ../include/oled/oled_print.c ../include/oled/SSD1306.c ../include/spi/spi.c ../include/timer/timer1.c ../include/sysconfig.c main.c


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/OLED_bounce.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33FJ128MC802
MP_LINKER_FILE_OPTION=,--script=p33FJ128MC802.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/2142847026/oled.o: ../include/oled/oled.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2142847026 
	@${RM} ${OBJECTDIR}/_ext/2142847026/oled.o.d 
	@${RM} ${OBJECTDIR}/_ext/2142847026/oled.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../include/oled/oled.c  -o ${OBJECTDIR}/_ext/2142847026/oled.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2142847026/oled.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1  -omf=elf -O0 -I"../include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/2142847026/oled.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2142847026/oled_draw.o: ../include/oled/oled_draw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2142847026 
	@${RM} ${OBJECTDIR}/_ext/2142847026/oled_draw.o.d 
	@${RM} ${OBJECTDIR}/_ext/2142847026/oled_draw.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../include/oled/oled_draw.c  -o ${OBJECTDIR}/_ext/2142847026/oled_draw.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2142847026/oled_draw.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1  -omf=elf -O0 -I"../include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/2142847026/oled_draw.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2142847026/oled_print.o: ../include/oled/oled_print.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2142847026 
	@${RM} ${OBJECTDIR}/_ext/2142847026/oled_print.o.d 
	@${RM} ${OBJECTDIR}/_ext/2142847026/oled_print.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../include/oled/oled_print.c  -o ${OBJECTDIR}/_ext/2142847026/oled_print.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2142847026/oled_print.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1  -omf=elf -O0 -I"../include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/2142847026/oled_print.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2142847026/SSD1306.o: ../include/oled/SSD1306.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2142847026 
	@${RM} ${OBJECTDIR}/_ext/2142847026/SSD1306.o.d 
	@${RM} ${OBJECTDIR}/_ext/2142847026/SSD1306.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../include/oled/SSD1306.c  -o ${OBJECTDIR}/_ext/2142847026/SSD1306.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2142847026/SSD1306.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1  -omf=elf -O0 -I"../include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/2142847026/SSD1306.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/346513930/spi.o: ../include/spi/spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/346513930 
	@${RM} ${OBJECTDIR}/_ext/346513930/spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/346513930/spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../include/spi/spi.c  -o ${OBJECTDIR}/_ext/346513930/spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/346513930/spi.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1  -omf=elf -O0 -I"../include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/346513930/spi.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2008284431/timer1.o: ../include/timer/timer1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2008284431 
	@${RM} ${OBJECTDIR}/_ext/2008284431/timer1.o.d 
	@${RM} ${OBJECTDIR}/_ext/2008284431/timer1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../include/timer/timer1.c  -o ${OBJECTDIR}/_ext/2008284431/timer1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2008284431/timer1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1  -omf=elf -O0 -I"../include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/2008284431/timer1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/262068057/sysconfig.o: ../include/sysconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/262068057 
	@${RM} ${OBJECTDIR}/_ext/262068057/sysconfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/262068057/sysconfig.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../include/sysconfig.c  -o ${OBJECTDIR}/_ext/262068057/sysconfig.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/262068057/sysconfig.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1  -omf=elf -O0 -I"../include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/262068057/sysconfig.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1  -omf=elf -O0 -I"../include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/2142847026/oled.o: ../include/oled/oled.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2142847026 
	@${RM} ${OBJECTDIR}/_ext/2142847026/oled.o.d 
	@${RM} ${OBJECTDIR}/_ext/2142847026/oled.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../include/oled/oled.c  -o ${OBJECTDIR}/_ext/2142847026/oled.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2142847026/oled.o.d"      -g -omf=elf -O0 -I"../include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/2142847026/oled.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2142847026/oled_draw.o: ../include/oled/oled_draw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2142847026 
	@${RM} ${OBJECTDIR}/_ext/2142847026/oled_draw.o.d 
	@${RM} ${OBJECTDIR}/_ext/2142847026/oled_draw.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../include/oled/oled_draw.c  -o ${OBJECTDIR}/_ext/2142847026/oled_draw.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2142847026/oled_draw.o.d"      -g -omf=elf -O0 -I"../include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/2142847026/oled_draw.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2142847026/oled_print.o: ../include/oled/oled_print.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2142847026 
	@${RM} ${OBJECTDIR}/_ext/2142847026/oled_print.o.d 
	@${RM} ${OBJECTDIR}/_ext/2142847026/oled_print.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../include/oled/oled_print.c  -o ${OBJECTDIR}/_ext/2142847026/oled_print.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2142847026/oled_print.o.d"      -g -omf=elf -O0 -I"../include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/2142847026/oled_print.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2142847026/SSD1306.o: ../include/oled/SSD1306.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2142847026 
	@${RM} ${OBJECTDIR}/_ext/2142847026/SSD1306.o.d 
	@${RM} ${OBJECTDIR}/_ext/2142847026/SSD1306.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../include/oled/SSD1306.c  -o ${OBJECTDIR}/_ext/2142847026/SSD1306.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2142847026/SSD1306.o.d"      -g -omf=elf -O0 -I"../include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/2142847026/SSD1306.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/346513930/spi.o: ../include/spi/spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/346513930 
	@${RM} ${OBJECTDIR}/_ext/346513930/spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/346513930/spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../include/spi/spi.c  -o ${OBJECTDIR}/_ext/346513930/spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/346513930/spi.o.d"      -g -omf=elf -O0 -I"../include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/346513930/spi.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2008284431/timer1.o: ../include/timer/timer1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2008284431 
	@${RM} ${OBJECTDIR}/_ext/2008284431/timer1.o.d 
	@${RM} ${OBJECTDIR}/_ext/2008284431/timer1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../include/timer/timer1.c  -o ${OBJECTDIR}/_ext/2008284431/timer1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2008284431/timer1.o.d"      -g -omf=elf -O0 -I"../include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/2008284431/timer1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/262068057/sysconfig.o: ../include/sysconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/262068057 
	@${RM} ${OBJECTDIR}/_ext/262068057/sysconfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/262068057/sysconfig.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../include/sysconfig.c  -o ${OBJECTDIR}/_ext/262068057/sysconfig.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/262068057/sysconfig.o.d"      -g -omf=elf -O0 -I"../include" -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/_ext/262068057/sysconfig.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d"      -g -omf=elf -O0 -I"../include" -msmart-io=1 -Wall -msfr-warn=off
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
dist/${CND_CONF}/${IMAGE_TYPE}/OLED_bounce.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/OLED_bounce.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1  -omf=elf  -mreserve=data@0x800:0x822   -Wl,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PICKIT2=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST) 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/OLED_bounce.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/OLED_bounce.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -Wl,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST) 
	${MP_CC_DIR}/xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/OLED_bounce.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf 
	
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

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
