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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PIC24_MPLAB.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PIC24_MPLAB.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS
SUB_IMAGE_ADDRESS_COMMAND=--image-address $(SUB_IMAGE_ADDRESS)
else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MemMang/heap_1.c ../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/port.c ../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.S ../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/croutine.c ../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/list.c ../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/queue.c ../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/tasks.c ../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/timers.c ../Common/Minimal/BlockQ.c ../Common/Minimal/blocktim.c ../Common/Minimal/comtest.c ../Common/Minimal/crflash.c ../Common/Minimal/integer.c timertest.c lcd.c main.c serial/serial.c ParTest/ParTest.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/917228376/heap_1.o ${OBJECTDIR}/_ext/1369585783/port.o ${OBJECTDIR}/_ext/1369585783/portasm_PIC24.o ${OBJECTDIR}/_ext/95193323/croutine.o ${OBJECTDIR}/_ext/95193323/list.o ${OBJECTDIR}/_ext/95193323/queue.o ${OBJECTDIR}/_ext/95193323/tasks.o ${OBJECTDIR}/_ext/95193323/timers.o ${OBJECTDIR}/_ext/270959020/BlockQ.o ${OBJECTDIR}/_ext/270959020/blocktim.o ${OBJECTDIR}/_ext/270959020/comtest.o ${OBJECTDIR}/_ext/270959020/crflash.o ${OBJECTDIR}/_ext/270959020/integer.o ${OBJECTDIR}/timertest.o ${OBJECTDIR}/lcd.o ${OBJECTDIR}/main.o ${OBJECTDIR}/serial/serial.o ${OBJECTDIR}/ParTest/ParTest.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/917228376/heap_1.o.d ${OBJECTDIR}/_ext/1369585783/port.o.d ${OBJECTDIR}/_ext/1369585783/portasm_PIC24.o.d ${OBJECTDIR}/_ext/95193323/croutine.o.d ${OBJECTDIR}/_ext/95193323/list.o.d ${OBJECTDIR}/_ext/95193323/queue.o.d ${OBJECTDIR}/_ext/95193323/tasks.o.d ${OBJECTDIR}/_ext/95193323/timers.o.d ${OBJECTDIR}/_ext/270959020/BlockQ.o.d ${OBJECTDIR}/_ext/270959020/blocktim.o.d ${OBJECTDIR}/_ext/270959020/comtest.o.d ${OBJECTDIR}/_ext/270959020/crflash.o.d ${OBJECTDIR}/_ext/270959020/integer.o.d ${OBJECTDIR}/timertest.o.d ${OBJECTDIR}/lcd.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/serial/serial.o.d ${OBJECTDIR}/ParTest/ParTest.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/917228376/heap_1.o ${OBJECTDIR}/_ext/1369585783/port.o ${OBJECTDIR}/_ext/1369585783/portasm_PIC24.o ${OBJECTDIR}/_ext/95193323/croutine.o ${OBJECTDIR}/_ext/95193323/list.o ${OBJECTDIR}/_ext/95193323/queue.o ${OBJECTDIR}/_ext/95193323/tasks.o ${OBJECTDIR}/_ext/95193323/timers.o ${OBJECTDIR}/_ext/270959020/BlockQ.o ${OBJECTDIR}/_ext/270959020/blocktim.o ${OBJECTDIR}/_ext/270959020/comtest.o ${OBJECTDIR}/_ext/270959020/crflash.o ${OBJECTDIR}/_ext/270959020/integer.o ${OBJECTDIR}/timertest.o ${OBJECTDIR}/lcd.o ${OBJECTDIR}/main.o ${OBJECTDIR}/serial/serial.o ${OBJECTDIR}/ParTest/ParTest.o

# Source Files
SOURCEFILES=../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MemMang/heap_1.c ../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/port.c ../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.S ../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/croutine.c ../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/list.c ../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/queue.c ../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/tasks.c ../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/timers.c ../Common/Minimal/BlockQ.c ../Common/Minimal/blocktim.c ../Common/Minimal/comtest.c ../Common/Minimal/crflash.c ../Common/Minimal/integer.c timertest.c lcd.c main.c serial/serial.c ParTest/ParTest.c


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/PIC24_MPLAB.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ1024GB610
MP_LINKER_FILE_OPTION=,--script=p24FJ1024GB610.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/917228376/heap_1.o: ../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MemMang/heap_1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/917228376" 
	@${RM} ${OBJECTDIR}/_ext/917228376/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/917228376/heap_1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MemMang/heap_1.c  -o ${OBJECTDIR}/_ext/917228376/heap_1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/917228376/heap_1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O0 -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/include" -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off   -I ../../Source/include -I ../../Source/portable/MPLAB/PIC24_dsPIC -I ../Common/include -I . -Wextra
	@${FIXDEPS} "${OBJECTDIR}/_ext/917228376/heap_1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1369585783/port.o: ../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1369585783" 
	@${RM} ${OBJECTDIR}/_ext/1369585783/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1369585783/port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/port.c  -o ${OBJECTDIR}/_ext/1369585783/port.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1369585783/port.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O0 -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/include" -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off   -I ../../Source/include -I ../../Source/portable/MPLAB/PIC24_dsPIC -I ../Common/include -I . -Wextra
	@${FIXDEPS} "${OBJECTDIR}/_ext/1369585783/port.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/95193323/croutine.o: ../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/croutine.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/95193323" 
	@${RM} ${OBJECTDIR}/_ext/95193323/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/95193323/croutine.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/croutine.c  -o ${OBJECTDIR}/_ext/95193323/croutine.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/95193323/croutine.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O0 -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/include" -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off   -I ../../Source/include -I ../../Source/portable/MPLAB/PIC24_dsPIC -I ../Common/include -I . -Wextra
	@${FIXDEPS} "${OBJECTDIR}/_ext/95193323/croutine.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/95193323/list.o: ../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/95193323" 
	@${RM} ${OBJECTDIR}/_ext/95193323/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/95193323/list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/list.c  -o ${OBJECTDIR}/_ext/95193323/list.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/95193323/list.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O0 -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/include" -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off   -I ../../Source/include -I ../../Source/portable/MPLAB/PIC24_dsPIC -I ../Common/include -I . -Wextra
	@${FIXDEPS} "${OBJECTDIR}/_ext/95193323/list.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/95193323/queue.o: ../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/95193323" 
	@${RM} ${OBJECTDIR}/_ext/95193323/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/95193323/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/queue.c  -o ${OBJECTDIR}/_ext/95193323/queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/95193323/queue.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O0 -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/include" -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off   -I ../../Source/include -I ../../Source/portable/MPLAB/PIC24_dsPIC -I ../Common/include -I . -Wextra
	@${FIXDEPS} "${OBJECTDIR}/_ext/95193323/queue.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/95193323/tasks.o: ../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/95193323" 
	@${RM} ${OBJECTDIR}/_ext/95193323/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/95193323/tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/tasks.c  -o ${OBJECTDIR}/_ext/95193323/tasks.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/95193323/tasks.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O0 -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/include" -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off   -I ../../Source/include -I ../../Source/portable/MPLAB/PIC24_dsPIC -I ../Common/include -I . -Wextra
	@${FIXDEPS} "${OBJECTDIR}/_ext/95193323/tasks.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/95193323/timers.o: ../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/95193323" 
	@${RM} ${OBJECTDIR}/_ext/95193323/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/95193323/timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/timers.c  -o ${OBJECTDIR}/_ext/95193323/timers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/95193323/timers.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O0 -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/include" -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off   -I ../../Source/include -I ../../Source/portable/MPLAB/PIC24_dsPIC -I ../Common/include -I . -Wextra
	@${FIXDEPS} "${OBJECTDIR}/_ext/95193323/timers.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/270959020/BlockQ.o: ../Common/Minimal/BlockQ.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/270959020" 
	@${RM} ${OBJECTDIR}/_ext/270959020/BlockQ.o.d 
	@${RM} ${OBJECTDIR}/_ext/270959020/BlockQ.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../Common/Minimal/BlockQ.c  -o ${OBJECTDIR}/_ext/270959020/BlockQ.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/270959020/BlockQ.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O0 -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/include" -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off   -I ../../Source/include -I ../../Source/portable/MPLAB/PIC24_dsPIC -I ../Common/include -I . -Wextra
	@${FIXDEPS} "${OBJECTDIR}/_ext/270959020/BlockQ.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/270959020/blocktim.o: ../Common/Minimal/blocktim.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/270959020" 
	@${RM} ${OBJECTDIR}/_ext/270959020/blocktim.o.d 
	@${RM} ${OBJECTDIR}/_ext/270959020/blocktim.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../Common/Minimal/blocktim.c  -o ${OBJECTDIR}/_ext/270959020/blocktim.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/270959020/blocktim.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O0 -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/include" -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off   -I ../../Source/include -I ../../Source/portable/MPLAB/PIC24_dsPIC -I ../Common/include -I . -Wextra
	@${FIXDEPS} "${OBJECTDIR}/_ext/270959020/blocktim.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/270959020/comtest.o: ../Common/Minimal/comtest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/270959020" 
	@${RM} ${OBJECTDIR}/_ext/270959020/comtest.o.d 
	@${RM} ${OBJECTDIR}/_ext/270959020/comtest.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../Common/Minimal/comtest.c  -o ${OBJECTDIR}/_ext/270959020/comtest.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/270959020/comtest.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O0 -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/include" -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off   -I ../../Source/include -I ../../Source/portable/MPLAB/PIC24_dsPIC -I ../Common/include -I . -Wextra
	@${FIXDEPS} "${OBJECTDIR}/_ext/270959020/comtest.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/270959020/crflash.o: ../Common/Minimal/crflash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/270959020" 
	@${RM} ${OBJECTDIR}/_ext/270959020/crflash.o.d 
	@${RM} ${OBJECTDIR}/_ext/270959020/crflash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../Common/Minimal/crflash.c  -o ${OBJECTDIR}/_ext/270959020/crflash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/270959020/crflash.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O0 -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/include" -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off   -I ../../Source/include -I ../../Source/portable/MPLAB/PIC24_dsPIC -I ../Common/include -I . -Wextra
	@${FIXDEPS} "${OBJECTDIR}/_ext/270959020/crflash.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/270959020/integer.o: ../Common/Minimal/integer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/270959020" 
	@${RM} ${OBJECTDIR}/_ext/270959020/integer.o.d 
	@${RM} ${OBJECTDIR}/_ext/270959020/integer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../Common/Minimal/integer.c  -o ${OBJECTDIR}/_ext/270959020/integer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/270959020/integer.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O0 -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/include" -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off   -I ../../Source/include -I ../../Source/portable/MPLAB/PIC24_dsPIC -I ../Common/include -I . -Wextra
	@${FIXDEPS} "${OBJECTDIR}/_ext/270959020/integer.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/timertest.o: timertest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/timertest.o.d 
	@${RM} ${OBJECTDIR}/timertest.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  timertest.c  -o ${OBJECTDIR}/timertest.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/timertest.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O0 -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/include" -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off   -I ../../Source/include -I ../../Source/portable/MPLAB/PIC24_dsPIC -I ../Common/include -I . -Wextra
	@${FIXDEPS} "${OBJECTDIR}/timertest.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/lcd.o: lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lcd.o.d 
	@${RM} ${OBJECTDIR}/lcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lcd.c  -o ${OBJECTDIR}/lcd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/lcd.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O0 -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/include" -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off   -I ../../Source/include -I ../../Source/portable/MPLAB/PIC24_dsPIC -I ../Common/include -I . -Wextra
	@${FIXDEPS} "${OBJECTDIR}/lcd.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O0 -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/include" -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off   -I ../../Source/include -I ../../Source/portable/MPLAB/PIC24_dsPIC -I ../Common/include -I . -Wextra
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/serial/serial.o: serial/serial.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/serial" 
	@${RM} ${OBJECTDIR}/serial/serial.o.d 
	@${RM} ${OBJECTDIR}/serial/serial.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  serial/serial.c  -o ${OBJECTDIR}/serial/serial.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/serial/serial.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O0 -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/include" -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off   -I ../../Source/include -I ../../Source/portable/MPLAB/PIC24_dsPIC -I ../Common/include -I . -Wextra
	@${FIXDEPS} "${OBJECTDIR}/serial/serial.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/ParTest/ParTest.o: ParTest/ParTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/ParTest" 
	@${RM} ${OBJECTDIR}/ParTest/ParTest.o.d 
	@${RM} ${OBJECTDIR}/ParTest/ParTest.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ParTest/ParTest.c  -o ${OBJECTDIR}/ParTest/ParTest.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/ParTest/ParTest.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O0 -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/include" -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off   -I ../../Source/include -I ../../Source/portable/MPLAB/PIC24_dsPIC -I ../Common/include -I . -Wextra
	@${FIXDEPS} "${OBJECTDIR}/ParTest/ParTest.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/917228376/heap_1.o: ../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MemMang/heap_1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/917228376" 
	@${RM} ${OBJECTDIR}/_ext/917228376/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/917228376/heap_1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MemMang/heap_1.c  -o ${OBJECTDIR}/_ext/917228376/heap_1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/917228376/heap_1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O0 -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/include" -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off   -I ../../Source/include -I ../../Source/portable/MPLAB/PIC24_dsPIC -I ../Common/include -I . -Wextra
	@${FIXDEPS} "${OBJECTDIR}/_ext/917228376/heap_1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1369585783/port.o: ../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1369585783" 
	@${RM} ${OBJECTDIR}/_ext/1369585783/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1369585783/port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/port.c  -o ${OBJECTDIR}/_ext/1369585783/port.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1369585783/port.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O0 -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/include" -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off   -I ../../Source/include -I ../../Source/portable/MPLAB/PIC24_dsPIC -I ../Common/include -I . -Wextra
	@${FIXDEPS} "${OBJECTDIR}/_ext/1369585783/port.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/95193323/croutine.o: ../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/croutine.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/95193323" 
	@${RM} ${OBJECTDIR}/_ext/95193323/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/95193323/croutine.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/croutine.c  -o ${OBJECTDIR}/_ext/95193323/croutine.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/95193323/croutine.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O0 -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/include" -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off   -I ../../Source/include -I ../../Source/portable/MPLAB/PIC24_dsPIC -I ../Common/include -I . -Wextra
	@${FIXDEPS} "${OBJECTDIR}/_ext/95193323/croutine.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/95193323/list.o: ../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/95193323" 
	@${RM} ${OBJECTDIR}/_ext/95193323/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/95193323/list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/list.c  -o ${OBJECTDIR}/_ext/95193323/list.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/95193323/list.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O0 -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/include" -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off   -I ../../Source/include -I ../../Source/portable/MPLAB/PIC24_dsPIC -I ../Common/include -I . -Wextra
	@${FIXDEPS} "${OBJECTDIR}/_ext/95193323/list.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/95193323/queue.o: ../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/95193323" 
	@${RM} ${OBJECTDIR}/_ext/95193323/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/95193323/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/queue.c  -o ${OBJECTDIR}/_ext/95193323/queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/95193323/queue.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O0 -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/include" -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off   -I ../../Source/include -I ../../Source/portable/MPLAB/PIC24_dsPIC -I ../Common/include -I . -Wextra
	@${FIXDEPS} "${OBJECTDIR}/_ext/95193323/queue.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/95193323/tasks.o: ../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/95193323" 
	@${RM} ${OBJECTDIR}/_ext/95193323/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/95193323/tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/tasks.c  -o ${OBJECTDIR}/_ext/95193323/tasks.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/95193323/tasks.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O0 -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/include" -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off   -I ../../Source/include -I ../../Source/portable/MPLAB/PIC24_dsPIC -I ../Common/include -I . -Wextra
	@${FIXDEPS} "${OBJECTDIR}/_ext/95193323/tasks.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/95193323/timers.o: ../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/95193323" 
	@${RM} ${OBJECTDIR}/_ext/95193323/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/95193323/timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/timers.c  -o ${OBJECTDIR}/_ext/95193323/timers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/95193323/timers.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O0 -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/include" -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off   -I ../../Source/include -I ../../Source/portable/MPLAB/PIC24_dsPIC -I ../Common/include -I . -Wextra
	@${FIXDEPS} "${OBJECTDIR}/_ext/95193323/timers.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/270959020/BlockQ.o: ../Common/Minimal/BlockQ.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/270959020" 
	@${RM} ${OBJECTDIR}/_ext/270959020/BlockQ.o.d 
	@${RM} ${OBJECTDIR}/_ext/270959020/BlockQ.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../Common/Minimal/BlockQ.c  -o ${OBJECTDIR}/_ext/270959020/BlockQ.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/270959020/BlockQ.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O0 -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/include" -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off   -I ../../Source/include -I ../../Source/portable/MPLAB/PIC24_dsPIC -I ../Common/include -I . -Wextra
	@${FIXDEPS} "${OBJECTDIR}/_ext/270959020/BlockQ.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/270959020/blocktim.o: ../Common/Minimal/blocktim.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/270959020" 
	@${RM} ${OBJECTDIR}/_ext/270959020/blocktim.o.d 
	@${RM} ${OBJECTDIR}/_ext/270959020/blocktim.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../Common/Minimal/blocktim.c  -o ${OBJECTDIR}/_ext/270959020/blocktim.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/270959020/blocktim.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O0 -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/include" -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off   -I ../../Source/include -I ../../Source/portable/MPLAB/PIC24_dsPIC -I ../Common/include -I . -Wextra
	@${FIXDEPS} "${OBJECTDIR}/_ext/270959020/blocktim.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/270959020/comtest.o: ../Common/Minimal/comtest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/270959020" 
	@${RM} ${OBJECTDIR}/_ext/270959020/comtest.o.d 
	@${RM} ${OBJECTDIR}/_ext/270959020/comtest.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../Common/Minimal/comtest.c  -o ${OBJECTDIR}/_ext/270959020/comtest.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/270959020/comtest.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O0 -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/include" -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off   -I ../../Source/include -I ../../Source/portable/MPLAB/PIC24_dsPIC -I ../Common/include -I . -Wextra
	@${FIXDEPS} "${OBJECTDIR}/_ext/270959020/comtest.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/270959020/crflash.o: ../Common/Minimal/crflash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/270959020" 
	@${RM} ${OBJECTDIR}/_ext/270959020/crflash.o.d 
	@${RM} ${OBJECTDIR}/_ext/270959020/crflash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../Common/Minimal/crflash.c  -o ${OBJECTDIR}/_ext/270959020/crflash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/270959020/crflash.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O0 -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/include" -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off   -I ../../Source/include -I ../../Source/portable/MPLAB/PIC24_dsPIC -I ../Common/include -I . -Wextra
	@${FIXDEPS} "${OBJECTDIR}/_ext/270959020/crflash.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/270959020/integer.o: ../Common/Minimal/integer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/270959020" 
	@${RM} ${OBJECTDIR}/_ext/270959020/integer.o.d 
	@${RM} ${OBJECTDIR}/_ext/270959020/integer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../Common/Minimal/integer.c  -o ${OBJECTDIR}/_ext/270959020/integer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/270959020/integer.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O0 -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/include" -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off   -I ../../Source/include -I ../../Source/portable/MPLAB/PIC24_dsPIC -I ../Common/include -I . -Wextra
	@${FIXDEPS} "${OBJECTDIR}/_ext/270959020/integer.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/timertest.o: timertest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/timertest.o.d 
	@${RM} ${OBJECTDIR}/timertest.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  timertest.c  -o ${OBJECTDIR}/timertest.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/timertest.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O0 -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/include" -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off   -I ../../Source/include -I ../../Source/portable/MPLAB/PIC24_dsPIC -I ../Common/include -I . -Wextra
	@${FIXDEPS} "${OBJECTDIR}/timertest.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/lcd.o: lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lcd.o.d 
	@${RM} ${OBJECTDIR}/lcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lcd.c  -o ${OBJECTDIR}/lcd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/lcd.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O0 -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/include" -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off   -I ../../Source/include -I ../../Source/portable/MPLAB/PIC24_dsPIC -I ../Common/include -I . -Wextra
	@${FIXDEPS} "${OBJECTDIR}/lcd.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O0 -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/include" -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off   -I ../../Source/include -I ../../Source/portable/MPLAB/PIC24_dsPIC -I ../Common/include -I . -Wextra
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/serial/serial.o: serial/serial.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/serial" 
	@${RM} ${OBJECTDIR}/serial/serial.o.d 
	@${RM} ${OBJECTDIR}/serial/serial.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  serial/serial.c  -o ${OBJECTDIR}/serial/serial.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/serial/serial.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O0 -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/include" -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off   -I ../../Source/include -I ../../Source/portable/MPLAB/PIC24_dsPIC -I ../Common/include -I . -Wextra
	@${FIXDEPS} "${OBJECTDIR}/serial/serial.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/ParTest/ParTest.o: ParTest/ParTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/ParTest" 
	@${RM} ${OBJECTDIR}/ParTest/ParTest.o.d 
	@${RM} ${OBJECTDIR}/ParTest/ParTest.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ParTest/ParTest.c  -o ${OBJECTDIR}/ParTest/ParTest.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/ParTest/ParTest.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O0 -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/include" -I"/home/scott/Documents/FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -msmart-io=1 -Wall -msfr-warn=off   -I ../../Source/include -I ../../Source/portable/MPLAB/PIC24_dsPIC -I ../Common/include -I . -Wextra
	@${FIXDEPS} "${OBJECTDIR}/ParTest/ParTest.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1369585783/portasm_PIC24.o: ../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1369585783" 
	@${RM} ${OBJECTDIR}/_ext/1369585783/portasm_PIC24.o.d 
	@${RM} ${OBJECTDIR}/_ext/1369585783/portasm_PIC24.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.S  -o ${OBJECTDIR}/_ext/1369585783/portasm_PIC24.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1369585783/portasm_PIC24.o.d"  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,-MD,"${OBJECTDIR}/_ext/1369585783/portasm_PIC24.o.asm.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/1369585783/portasm_PIC24.o.d" "${OBJECTDIR}/_ext/1369585783/portasm_PIC24.o.asm.d"  -t $(SILENT)  -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/1369585783/portasm_PIC24.o: ../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1369585783" 
	@${RM} ${OBJECTDIR}/_ext/1369585783/portasm_PIC24.o.d 
	@${RM} ${OBJECTDIR}/_ext/1369585783/portasm_PIC24.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  ../../FreeRTOS/FreeRTOSv10.2.0/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.S  -o ${OBJECTDIR}/_ext/1369585783/portasm_PIC24.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1369585783/portasm_PIC24.o.d"  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,-MD,"${OBJECTDIR}/_ext/1369585783/portasm_PIC24.o.asm.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/_ext/1369585783/portasm_PIC24.o.d" "${OBJECTDIR}/_ext/1369585783/portasm_PIC24.o.asm.d"  -t $(SILENT)  -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/PIC24_MPLAB.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/PIC24_MPLAB.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x800:0x81B -mreserve=data@0x81C:0x81D -mreserve=data@0x81E:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x827 -mreserve=data@0x82A:0x84F   -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_PK3=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST) 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/PIC24_MPLAB.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/PIC24_MPLAB.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST) 
	${MP_CC_DIR}/xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/PIC24_MPLAB.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf  
	
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
