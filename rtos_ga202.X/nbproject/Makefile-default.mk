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
FINAL_IMAGE=${DISTDIR}/rtos_ga202.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/rtos_ga202.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=src/app/taskBQ76920.c FreeRTOS/Source/croutine.c FreeRTOS/Source/event_groups.c FreeRTOS/Source/list.c FreeRTOS/Source/queue.c FreeRTOS/Source/stream_buffer.c FreeRTOS/Source/tasks.c FreeRTOS/Source/timers.c FreeRTOS/Source/portable/GCC/MemMang/heap_4.c FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/port.c FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.S FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.S mcc_generated_files/traps.c mcc_generated_files/pin_manager.c mcc_generated_files/system.c mcc_generated_files/clock.c mcc_generated_files/mcc.c mcc_generated_files/interrupt_manager.c mcc_generated_files/uart1.c mcc_generated_files/i2c1.c src/main.c src/rtos_hooks.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/src/app/taskBQ76920.o ${OBJECTDIR}/FreeRTOS/Source/croutine.o ${OBJECTDIR}/FreeRTOS/Source/event_groups.o ${OBJECTDIR}/FreeRTOS/Source/list.o ${OBJECTDIR}/FreeRTOS/Source/queue.o ${OBJECTDIR}/FreeRTOS/Source/stream_buffer.o ${OBJECTDIR}/FreeRTOS/Source/tasks.o ${OBJECTDIR}/FreeRTOS/Source/timers.o ${OBJECTDIR}/FreeRTOS/Source/portable/GCC/MemMang/heap_4.o ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/port.o ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/mcc_generated_files/i2c1.o ${OBJECTDIR}/src/main.o ${OBJECTDIR}/src/rtos_hooks.o
POSSIBLE_DEPFILES=${OBJECTDIR}/src/app/taskBQ76920.o.d ${OBJECTDIR}/FreeRTOS/Source/croutine.o.d ${OBJECTDIR}/FreeRTOS/Source/event_groups.o.d ${OBJECTDIR}/FreeRTOS/Source/list.o.d ${OBJECTDIR}/FreeRTOS/Source/queue.o.d ${OBJECTDIR}/FreeRTOS/Source/stream_buffer.o.d ${OBJECTDIR}/FreeRTOS/Source/tasks.o.d ${OBJECTDIR}/FreeRTOS/Source/timers.o.d ${OBJECTDIR}/FreeRTOS/Source/portable/GCC/MemMang/heap_4.o.d ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/port.o.d ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o.d ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.o.d ${OBJECTDIR}/mcc_generated_files/traps.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/system.o.d ${OBJECTDIR}/mcc_generated_files/clock.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/uart1.o.d ${OBJECTDIR}/mcc_generated_files/i2c1.o.d ${OBJECTDIR}/src/main.o.d ${OBJECTDIR}/src/rtos_hooks.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/src/app/taskBQ76920.o ${OBJECTDIR}/FreeRTOS/Source/croutine.o ${OBJECTDIR}/FreeRTOS/Source/event_groups.o ${OBJECTDIR}/FreeRTOS/Source/list.o ${OBJECTDIR}/FreeRTOS/Source/queue.o ${OBJECTDIR}/FreeRTOS/Source/stream_buffer.o ${OBJECTDIR}/FreeRTOS/Source/tasks.o ${OBJECTDIR}/FreeRTOS/Source/timers.o ${OBJECTDIR}/FreeRTOS/Source/portable/GCC/MemMang/heap_4.o ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/port.o ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/mcc_generated_files/i2c1.o ${OBJECTDIR}/src/main.o ${OBJECTDIR}/src/rtos_hooks.o

# Source Files
SOURCEFILES=src/app/taskBQ76920.c FreeRTOS/Source/croutine.c FreeRTOS/Source/event_groups.c FreeRTOS/Source/list.c FreeRTOS/Source/queue.c FreeRTOS/Source/stream_buffer.c FreeRTOS/Source/tasks.c FreeRTOS/Source/timers.c FreeRTOS/Source/portable/GCC/MemMang/heap_4.c FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/port.c FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.S FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.S mcc_generated_files/traps.c mcc_generated_files/pin_manager.c mcc_generated_files/system.c mcc_generated_files/clock.c mcc_generated_files/mcc.c mcc_generated_files/interrupt_manager.c mcc_generated_files/uart1.c mcc_generated_files/i2c1.c src/main.c src/rtos_hooks.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/rtos_ga202.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ128GA202
MP_LINKER_FILE_OPTION=,--script=p24FJ128GA202.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/src/app/taskBQ76920.o: src/app/taskBQ76920.c  .generated_files/flags/default/ce924aa1b80142c086da223fa0aa4d7dd0eaa43e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src/app" 
	@${RM} ${OBJECTDIR}/src/app/taskBQ76920.o.d 
	@${RM} ${OBJECTDIR}/src/app/taskBQ76920.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/app/taskBQ76920.c  -o ${OBJECTDIR}/src/app/taskBQ76920.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/app/taskBQ76920.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -O0 -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/FreeRTOS/Source/croutine.o: FreeRTOS/Source/croutine.c  .generated_files/flags/default/9114cead911edb3c0a155f8aa5aba31f63b1dcaa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/FreeRTOS/Source" 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/croutine.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/croutine.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  FreeRTOS/Source/croutine.c  -o ${OBJECTDIR}/FreeRTOS/Source/croutine.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/FreeRTOS/Source/croutine.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -O0 -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/FreeRTOS/Source/event_groups.o: FreeRTOS/Source/event_groups.c  .generated_files/flags/default/df45825012254d0d6ffcc7c1ec8386750f4a01d6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/FreeRTOS/Source" 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/event_groups.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/event_groups.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  FreeRTOS/Source/event_groups.c  -o ${OBJECTDIR}/FreeRTOS/Source/event_groups.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/FreeRTOS/Source/event_groups.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -O0 -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/FreeRTOS/Source/list.o: FreeRTOS/Source/list.c  .generated_files/flags/default/69fbe485ba4eb6770161226a1ecdf22b55f9acb9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/FreeRTOS/Source" 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/list.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  FreeRTOS/Source/list.c  -o ${OBJECTDIR}/FreeRTOS/Source/list.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/FreeRTOS/Source/list.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -O0 -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/FreeRTOS/Source/queue.o: FreeRTOS/Source/queue.c  .generated_files/flags/default/faa0ae82dba8a10edfac2f107bb6e19777d08573 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/FreeRTOS/Source" 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/queue.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  FreeRTOS/Source/queue.c  -o ${OBJECTDIR}/FreeRTOS/Source/queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/FreeRTOS/Source/queue.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -O0 -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/FreeRTOS/Source/stream_buffer.o: FreeRTOS/Source/stream_buffer.c  .generated_files/flags/default/53e57ef785e5dca85aeecf08aaacc0f9fbb9eaac .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/FreeRTOS/Source" 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/stream_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  FreeRTOS/Source/stream_buffer.c  -o ${OBJECTDIR}/FreeRTOS/Source/stream_buffer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/FreeRTOS/Source/stream_buffer.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -O0 -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/FreeRTOS/Source/tasks.o: FreeRTOS/Source/tasks.c  .generated_files/flags/default/4c2717204a965b1e6e1b6f6ac1fe17e757605d97 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/FreeRTOS/Source" 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/tasks.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  FreeRTOS/Source/tasks.c  -o ${OBJECTDIR}/FreeRTOS/Source/tasks.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/FreeRTOS/Source/tasks.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -O0 -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/FreeRTOS/Source/timers.o: FreeRTOS/Source/timers.c  .generated_files/flags/default/fcf503d22fef1efe3d33163e92e81a5dce871a79 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/FreeRTOS/Source" 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/timers.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  FreeRTOS/Source/timers.c  -o ${OBJECTDIR}/FreeRTOS/Source/timers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/FreeRTOS/Source/timers.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -O0 -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/FreeRTOS/Source/portable/GCC/MemMang/heap_4.o: FreeRTOS/Source/portable/GCC/MemMang/heap_4.c  .generated_files/flags/default/ded53c1aff4be194577c8da17b5ce62985989b0a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/FreeRTOS/Source/portable/GCC/MemMang" 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/GCC/MemMang/heap_4.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/GCC/MemMang/heap_4.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  FreeRTOS/Source/portable/GCC/MemMang/heap_4.c  -o ${OBJECTDIR}/FreeRTOS/Source/portable/GCC/MemMang/heap_4.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/FreeRTOS/Source/portable/GCC/MemMang/heap_4.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -O0 -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/port.o: FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/port.c  .generated_files/flags/default/3ca51bec78dcbcece848ea4bee384500d16d8fc9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/port.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/port.c  -o ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/port.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/port.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -O0 -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/295699f4b0f179bde0bc153ac86bf0d16d7b9c63 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -O0 -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/f09e17598d55c95e6c505e5c092d89e75452212 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -O0 -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/52de98cb115e9557a38f874e86735dd9a7cf9517 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -O0 -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/b009da4e4bc5b648884f787f2cc88ae0396a920e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -O0 -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/397ea302ea02a7d5500867b6396a766417534c57 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -O0 -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/6f21b4f82b44f06defab1ee318bfeae62f9576ef .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -O0 -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/flags/default/5f923fcd96d21d68c556ca55d77a2f9efc94ad6d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -O0 -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/i2c1.o: mcc_generated_files/i2c1.c  .generated_files/flags/default/7f77b6883eb1b514360aa2d1fe4fded9a4557bc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c1.c  -o ${OBJECTDIR}/mcc_generated_files/i2c1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -O0 -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/main.o: src/main.c  .generated_files/flags/default/9c01e58791d01dc8d2aaacffed6aaaa2b072c98c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/main.o.d 
	@${RM} ${OBJECTDIR}/src/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/main.c  -o ${OBJECTDIR}/src/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/main.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -O0 -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/rtos_hooks.o: src/rtos_hooks.c  .generated_files/flags/default/e8da21ae376b63da7c7eca68dd7917651028cf44 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/rtos_hooks.o.d 
	@${RM} ${OBJECTDIR}/src/rtos_hooks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/rtos_hooks.c  -o ${OBJECTDIR}/src/rtos_hooks.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/rtos_hooks.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -O0 -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/src/app/taskBQ76920.o: src/app/taskBQ76920.c  .generated_files/flags/default/d003f82e0041e00467b7ab10a4321acd0ae957d9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src/app" 
	@${RM} ${OBJECTDIR}/src/app/taskBQ76920.o.d 
	@${RM} ${OBJECTDIR}/src/app/taskBQ76920.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/app/taskBQ76920.c  -o ${OBJECTDIR}/src/app/taskBQ76920.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/app/taskBQ76920.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -O0 -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/FreeRTOS/Source/croutine.o: FreeRTOS/Source/croutine.c  .generated_files/flags/default/19e5ad369fdd5431b3a96cb7c1f850416d5a81da .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/FreeRTOS/Source" 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/croutine.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/croutine.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  FreeRTOS/Source/croutine.c  -o ${OBJECTDIR}/FreeRTOS/Source/croutine.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/FreeRTOS/Source/croutine.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -O0 -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/FreeRTOS/Source/event_groups.o: FreeRTOS/Source/event_groups.c  .generated_files/flags/default/85515845d07760fde165882f38dbac9ed15c33fe .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/FreeRTOS/Source" 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/event_groups.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/event_groups.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  FreeRTOS/Source/event_groups.c  -o ${OBJECTDIR}/FreeRTOS/Source/event_groups.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/FreeRTOS/Source/event_groups.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -O0 -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/FreeRTOS/Source/list.o: FreeRTOS/Source/list.c  .generated_files/flags/default/27d811f670916bccdf5d6c1a963e5bf705c2658e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/FreeRTOS/Source" 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/list.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  FreeRTOS/Source/list.c  -o ${OBJECTDIR}/FreeRTOS/Source/list.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/FreeRTOS/Source/list.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -O0 -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/FreeRTOS/Source/queue.o: FreeRTOS/Source/queue.c  .generated_files/flags/default/822a75a029e728b646c5e513c1a9cfefeb08e3ba .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/FreeRTOS/Source" 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/queue.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  FreeRTOS/Source/queue.c  -o ${OBJECTDIR}/FreeRTOS/Source/queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/FreeRTOS/Source/queue.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -O0 -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/FreeRTOS/Source/stream_buffer.o: FreeRTOS/Source/stream_buffer.c  .generated_files/flags/default/e5d96f005fd75e9d616f8050a80b4c37e66a97a5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/FreeRTOS/Source" 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/stream_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  FreeRTOS/Source/stream_buffer.c  -o ${OBJECTDIR}/FreeRTOS/Source/stream_buffer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/FreeRTOS/Source/stream_buffer.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -O0 -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/FreeRTOS/Source/tasks.o: FreeRTOS/Source/tasks.c  .generated_files/flags/default/13b61c67855b3771d9facad0b987f18004e01e84 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/FreeRTOS/Source" 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/tasks.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  FreeRTOS/Source/tasks.c  -o ${OBJECTDIR}/FreeRTOS/Source/tasks.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/FreeRTOS/Source/tasks.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -O0 -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/FreeRTOS/Source/timers.o: FreeRTOS/Source/timers.c  .generated_files/flags/default/aa7e92c1170b21bd9dffb6db00dc1c97eae6cc5f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/FreeRTOS/Source" 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/timers.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  FreeRTOS/Source/timers.c  -o ${OBJECTDIR}/FreeRTOS/Source/timers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/FreeRTOS/Source/timers.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -O0 -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/FreeRTOS/Source/portable/GCC/MemMang/heap_4.o: FreeRTOS/Source/portable/GCC/MemMang/heap_4.c  .generated_files/flags/default/f1ddd027b6a08becc06bb0033ae2616292a5ad87 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/FreeRTOS/Source/portable/GCC/MemMang" 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/GCC/MemMang/heap_4.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/GCC/MemMang/heap_4.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  FreeRTOS/Source/portable/GCC/MemMang/heap_4.c  -o ${OBJECTDIR}/FreeRTOS/Source/portable/GCC/MemMang/heap_4.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/FreeRTOS/Source/portable/GCC/MemMang/heap_4.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -O0 -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/port.o: FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/port.c  .generated_files/flags/default/9587a4f0edaf6d6fa517ad2a78f7ab9ff9a0905e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/port.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/port.c  -o ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/port.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/port.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -O0 -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/406b0e94748fc295f939494a22c03bfc31f9ded7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -O0 -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/357f55a05d86c3885ebd87d5000c6a9725f7d0d8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -O0 -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/72ea904fb05f1682926b2ff40e8594d29319cbb0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -O0 -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/8c99187aaca82bfcf67d49c7a5b7917368e81ff3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -O0 -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/2156813f15cc64530435a705fb668091d9705d3a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -O0 -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/1e33e3adc05e7f8f3a62e4756a58f74f8a5207ef .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -O0 -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/flags/default/68bb0e68e5fd558f55f6948e536323fccb24e01b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -O0 -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/i2c1.o: mcc_generated_files/i2c1.c  .generated_files/flags/default/8824370c18892b68f01242a2fd46cb44bd597393 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c1.c  -o ${OBJECTDIR}/mcc_generated_files/i2c1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -O0 -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/main.o: src/main.c  .generated_files/flags/default/6c10147bd5a0347b2ec6eb99cf13069b3a569d2d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/main.o.d 
	@${RM} ${OBJECTDIR}/src/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/main.c  -o ${OBJECTDIR}/src/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -O0 -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/rtos_hooks.o: src/rtos_hooks.c  .generated_files/flags/default/86c6ba950419a293778150451f79378823e3634b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/rtos_hooks.o.d 
	@${RM} ${OBJECTDIR}/src/rtos_hooks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/rtos_hooks.c  -o ${OBJECTDIR}/src/rtos_hooks.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/rtos_hooks.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -O0 -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o: FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.S  .generated_files/flags/default/fd4554848f77cdb5e03a0f7aab625fc2020ce26b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.S  -o ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o.d"  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -Wa,-MD,"${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o.asm.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.o: FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.S  .generated_files/flags/default/da88973a35c97659c43daec81be280a6a90f767c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.S  -o ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.o.d"  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -Wa,-MD,"${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.o.asm.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o: FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.S  .generated_files/flags/default/fc95a6cdeb6fd76dc1ed5ea745db598ded45979f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.S  -o ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o.d"  -omf=elf -DXPRJ_default=$(CND_CONF)    -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -Wa,-MD,"${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o.asm.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.o: FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.S  .generated_files/flags/default/18c6ca7f0e9b445cec19f21326c54f15817f6390 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.o.d 
	@${RM} ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.S  -o ${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.o.d"  -omf=elf -DXPRJ_default=$(CND_CONF)    -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -Wa,-MD,"${OBJECTDIR}/FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.o.asm.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/rtos_ga202.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/rtos_ga202.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app"  -mreserve=data@0x800:0x81B -mreserve=data@0x81C:0x81D -mreserve=data@0x81E:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x827 -mreserve=data@0x82A:0x84F   -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
${DISTDIR}/rtos_ga202.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/rtos_ga202.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files" -I"src/config" -I"FreeRTOS/Source/include" -I"FreeRTOS/Source/portable/MPLAB/PIC24_dsPIC" -I"src/app" -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex ${DISTDIR}/rtos_ga202.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
