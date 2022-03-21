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
FINAL_IMAGE=${DISTDIR}/cansw_picam.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/cansw_picam.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=mcc_generated_files/pin_manager.c mcc_generated_files/mcc.c mcc_generated_files/device_config.c mcc_generated_files/adcc.c mcc_generated_files/fvr.c main.c timer.c canlib/can_common.c canlib/pic18f26k83/pic18f26k83_can.c canlib/util/timing_util.c error_checks.c canlib/util/can_tx_buffer.c canlib/util/safe_ring_buffer.c cam.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/mcc_generated_files/pin_manager.p1 ${OBJECTDIR}/mcc_generated_files/mcc.p1 ${OBJECTDIR}/mcc_generated_files/device_config.p1 ${OBJECTDIR}/mcc_generated_files/adcc.p1 ${OBJECTDIR}/mcc_generated_files/fvr.p1 ${OBJECTDIR}/main.p1 ${OBJECTDIR}/timer.p1 ${OBJECTDIR}/canlib/can_common.p1 ${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_can.p1 ${OBJECTDIR}/canlib/util/timing_util.p1 ${OBJECTDIR}/error_checks.p1 ${OBJECTDIR}/canlib/util/can_tx_buffer.p1 ${OBJECTDIR}/canlib/util/safe_ring_buffer.p1 ${OBJECTDIR}/cam.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/mcc_generated_files/pin_manager.p1.d ${OBJECTDIR}/mcc_generated_files/mcc.p1.d ${OBJECTDIR}/mcc_generated_files/device_config.p1.d ${OBJECTDIR}/mcc_generated_files/adcc.p1.d ${OBJECTDIR}/mcc_generated_files/fvr.p1.d ${OBJECTDIR}/main.p1.d ${OBJECTDIR}/timer.p1.d ${OBJECTDIR}/canlib/can_common.p1.d ${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_can.p1.d ${OBJECTDIR}/canlib/util/timing_util.p1.d ${OBJECTDIR}/error_checks.p1.d ${OBJECTDIR}/canlib/util/can_tx_buffer.p1.d ${OBJECTDIR}/canlib/util/safe_ring_buffer.p1.d ${OBJECTDIR}/cam.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/mcc_generated_files/pin_manager.p1 ${OBJECTDIR}/mcc_generated_files/mcc.p1 ${OBJECTDIR}/mcc_generated_files/device_config.p1 ${OBJECTDIR}/mcc_generated_files/adcc.p1 ${OBJECTDIR}/mcc_generated_files/fvr.p1 ${OBJECTDIR}/main.p1 ${OBJECTDIR}/timer.p1 ${OBJECTDIR}/canlib/can_common.p1 ${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_can.p1 ${OBJECTDIR}/canlib/util/timing_util.p1 ${OBJECTDIR}/error_checks.p1 ${OBJECTDIR}/canlib/util/can_tx_buffer.p1 ${OBJECTDIR}/canlib/util/safe_ring_buffer.p1 ${OBJECTDIR}/cam.p1

# Source Files
SOURCEFILES=mcc_generated_files/pin_manager.c mcc_generated_files/mcc.c mcc_generated_files/device_config.c mcc_generated_files/adcc.c mcc_generated_files/fvr.c main.c timer.c canlib/can_common.c canlib/pic18f26k83/pic18f26k83_can.c canlib/util/timing_util.c error_checks.c canlib/util/can_tx_buffer.c canlib/util/safe_ring_buffer.c cam.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/cansw_picam.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F26K83
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/pin_manager.p1: mcc_generated_files/pin_manager.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_UNIQUE_ID=BOARD_ID_VENT -xassembler-with-cpp -I"canlib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/pin_manager.p1 mcc_generated_files/pin_manager.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/pin_manager.d ${OBJECTDIR}/mcc_generated_files/pin_manager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/pin_manager.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/mcc.p1: mcc_generated_files/mcc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_UNIQUE_ID=BOARD_ID_VENT -xassembler-with-cpp -I"canlib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/mcc.p1 mcc_generated_files/mcc.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/mcc.d ${OBJECTDIR}/mcc_generated_files/mcc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/mcc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/device_config.p1: mcc_generated_files/device_config.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_UNIQUE_ID=BOARD_ID_VENT -xassembler-with-cpp -I"canlib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/device_config.p1 mcc_generated_files/device_config.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/device_config.d ${OBJECTDIR}/mcc_generated_files/device_config.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/device_config.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/adcc.p1: mcc_generated_files/adcc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adcc.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adcc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_UNIQUE_ID=BOARD_ID_VENT -xassembler-with-cpp -I"canlib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/adcc.p1 mcc_generated_files/adcc.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/adcc.d ${OBJECTDIR}/mcc_generated_files/adcc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/adcc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/fvr.p1: mcc_generated_files/fvr.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/fvr.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/fvr.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_UNIQUE_ID=BOARD_ID_VENT -xassembler-with-cpp -I"canlib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/fvr.p1 mcc_generated_files/fvr.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/fvr.d ${OBJECTDIR}/mcc_generated_files/fvr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/fvr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_UNIQUE_ID=BOARD_ID_VENT -xassembler-with-cpp -I"canlib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/timer.p1: timer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/timer.p1.d 
	@${RM} ${OBJECTDIR}/timer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_UNIQUE_ID=BOARD_ID_VENT -xassembler-with-cpp -I"canlib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/timer.p1 timer.c 
	@-${MV} ${OBJECTDIR}/timer.d ${OBJECTDIR}/timer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/timer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/can_common.p1: canlib/can_common.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib" 
	@${RM} ${OBJECTDIR}/canlib/can_common.p1.d 
	@${RM} ${OBJECTDIR}/canlib/can_common.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_UNIQUE_ID=BOARD_ID_VENT -xassembler-with-cpp -I"canlib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/can_common.p1 canlib/can_common.c 
	@-${MV} ${OBJECTDIR}/canlib/can_common.d ${OBJECTDIR}/canlib/can_common.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/can_common.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_can.p1: canlib/pic18f26k83/pic18f26k83_can.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/pic18f26k83" 
	@${RM} ${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_can.p1.d 
	@${RM} ${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_can.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_UNIQUE_ID=BOARD_ID_VENT -xassembler-with-cpp -I"canlib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_can.p1 canlib/pic18f26k83/pic18f26k83_can.c 
	@-${MV} ${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_can.d ${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_can.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_can.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/util/timing_util.p1: canlib/util/timing_util.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/util" 
	@${RM} ${OBJECTDIR}/canlib/util/timing_util.p1.d 
	@${RM} ${OBJECTDIR}/canlib/util/timing_util.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_UNIQUE_ID=BOARD_ID_VENT -xassembler-with-cpp -I"canlib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/util/timing_util.p1 canlib/util/timing_util.c 
	@-${MV} ${OBJECTDIR}/canlib/util/timing_util.d ${OBJECTDIR}/canlib/util/timing_util.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/util/timing_util.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/error_checks.p1: error_checks.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/error_checks.p1.d 
	@${RM} ${OBJECTDIR}/error_checks.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_UNIQUE_ID=BOARD_ID_VENT -xassembler-with-cpp -I"canlib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/error_checks.p1 error_checks.c 
	@-${MV} ${OBJECTDIR}/error_checks.d ${OBJECTDIR}/error_checks.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/error_checks.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/util/can_tx_buffer.p1: canlib/util/can_tx_buffer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/util" 
	@${RM} ${OBJECTDIR}/canlib/util/can_tx_buffer.p1.d 
	@${RM} ${OBJECTDIR}/canlib/util/can_tx_buffer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_UNIQUE_ID=BOARD_ID_VENT -xassembler-with-cpp -I"canlib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/util/can_tx_buffer.p1 canlib/util/can_tx_buffer.c 
	@-${MV} ${OBJECTDIR}/canlib/util/can_tx_buffer.d ${OBJECTDIR}/canlib/util/can_tx_buffer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/util/can_tx_buffer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/util/safe_ring_buffer.p1: canlib/util/safe_ring_buffer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/util" 
	@${RM} ${OBJECTDIR}/canlib/util/safe_ring_buffer.p1.d 
	@${RM} ${OBJECTDIR}/canlib/util/safe_ring_buffer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_UNIQUE_ID=BOARD_ID_VENT -xassembler-with-cpp -I"canlib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/util/safe_ring_buffer.p1 canlib/util/safe_ring_buffer.c 
	@-${MV} ${OBJECTDIR}/canlib/util/safe_ring_buffer.d ${OBJECTDIR}/canlib/util/safe_ring_buffer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/util/safe_ring_buffer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/cam.p1: cam.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/cam.p1.d 
	@${RM} ${OBJECTDIR}/cam.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_UNIQUE_ID=BOARD_ID_VENT -xassembler-with-cpp -I"canlib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/cam.p1 cam.c 
	@-${MV} ${OBJECTDIR}/cam.d ${OBJECTDIR}/cam.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/cam.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/mcc_generated_files/pin_manager.p1: mcc_generated_files/pin_manager.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_UNIQUE_ID=BOARD_ID_VENT -xassembler-with-cpp -I"canlib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/pin_manager.p1 mcc_generated_files/pin_manager.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/pin_manager.d ${OBJECTDIR}/mcc_generated_files/pin_manager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/pin_manager.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/mcc.p1: mcc_generated_files/mcc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_UNIQUE_ID=BOARD_ID_VENT -xassembler-with-cpp -I"canlib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/mcc.p1 mcc_generated_files/mcc.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/mcc.d ${OBJECTDIR}/mcc_generated_files/mcc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/mcc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/device_config.p1: mcc_generated_files/device_config.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_UNIQUE_ID=BOARD_ID_VENT -xassembler-with-cpp -I"canlib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/device_config.p1 mcc_generated_files/device_config.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/device_config.d ${OBJECTDIR}/mcc_generated_files/device_config.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/device_config.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/adcc.p1: mcc_generated_files/adcc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adcc.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adcc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_UNIQUE_ID=BOARD_ID_VENT -xassembler-with-cpp -I"canlib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/adcc.p1 mcc_generated_files/adcc.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/adcc.d ${OBJECTDIR}/mcc_generated_files/adcc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/adcc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/fvr.p1: mcc_generated_files/fvr.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/fvr.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/fvr.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_UNIQUE_ID=BOARD_ID_VENT -xassembler-with-cpp -I"canlib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/fvr.p1 mcc_generated_files/fvr.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/fvr.d ${OBJECTDIR}/mcc_generated_files/fvr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/fvr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_UNIQUE_ID=BOARD_ID_VENT -xassembler-with-cpp -I"canlib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/timer.p1: timer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/timer.p1.d 
	@${RM} ${OBJECTDIR}/timer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_UNIQUE_ID=BOARD_ID_VENT -xassembler-with-cpp -I"canlib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/timer.p1 timer.c 
	@-${MV} ${OBJECTDIR}/timer.d ${OBJECTDIR}/timer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/timer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/can_common.p1: canlib/can_common.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib" 
	@${RM} ${OBJECTDIR}/canlib/can_common.p1.d 
	@${RM} ${OBJECTDIR}/canlib/can_common.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_UNIQUE_ID=BOARD_ID_VENT -xassembler-with-cpp -I"canlib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/can_common.p1 canlib/can_common.c 
	@-${MV} ${OBJECTDIR}/canlib/can_common.d ${OBJECTDIR}/canlib/can_common.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/can_common.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_can.p1: canlib/pic18f26k83/pic18f26k83_can.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/pic18f26k83" 
	@${RM} ${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_can.p1.d 
	@${RM} ${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_can.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_UNIQUE_ID=BOARD_ID_VENT -xassembler-with-cpp -I"canlib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_can.p1 canlib/pic18f26k83/pic18f26k83_can.c 
	@-${MV} ${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_can.d ${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_can.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/pic18f26k83/pic18f26k83_can.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/util/timing_util.p1: canlib/util/timing_util.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/util" 
	@${RM} ${OBJECTDIR}/canlib/util/timing_util.p1.d 
	@${RM} ${OBJECTDIR}/canlib/util/timing_util.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_UNIQUE_ID=BOARD_ID_VENT -xassembler-with-cpp -I"canlib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/util/timing_util.p1 canlib/util/timing_util.c 
	@-${MV} ${OBJECTDIR}/canlib/util/timing_util.d ${OBJECTDIR}/canlib/util/timing_util.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/util/timing_util.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/error_checks.p1: error_checks.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/error_checks.p1.d 
	@${RM} ${OBJECTDIR}/error_checks.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_UNIQUE_ID=BOARD_ID_VENT -xassembler-with-cpp -I"canlib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/error_checks.p1 error_checks.c 
	@-${MV} ${OBJECTDIR}/error_checks.d ${OBJECTDIR}/error_checks.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/error_checks.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/util/can_tx_buffer.p1: canlib/util/can_tx_buffer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/util" 
	@${RM} ${OBJECTDIR}/canlib/util/can_tx_buffer.p1.d 
	@${RM} ${OBJECTDIR}/canlib/util/can_tx_buffer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_UNIQUE_ID=BOARD_ID_VENT -xassembler-with-cpp -I"canlib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/util/can_tx_buffer.p1 canlib/util/can_tx_buffer.c 
	@-${MV} ${OBJECTDIR}/canlib/util/can_tx_buffer.d ${OBJECTDIR}/canlib/util/can_tx_buffer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/util/can_tx_buffer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/canlib/util/safe_ring_buffer.p1: canlib/util/safe_ring_buffer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/canlib/util" 
	@${RM} ${OBJECTDIR}/canlib/util/safe_ring_buffer.p1.d 
	@${RM} ${OBJECTDIR}/canlib/util/safe_ring_buffer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_UNIQUE_ID=BOARD_ID_VENT -xassembler-with-cpp -I"canlib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/canlib/util/safe_ring_buffer.p1 canlib/util/safe_ring_buffer.c 
	@-${MV} ${OBJECTDIR}/canlib/util/safe_ring_buffer.d ${OBJECTDIR}/canlib/util/safe_ring_buffer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/canlib/util/safe_ring_buffer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/cam.p1: cam.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/cam.p1.d 
	@${RM} ${OBJECTDIR}/cam.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_UNIQUE_ID=BOARD_ID_VENT -xassembler-with-cpp -I"canlib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/cam.p1 cam.c 
	@-${MV} ${OBJECTDIR}/cam.d ${OBJECTDIR}/cam.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/cam.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/cansw_picam.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/cansw_picam.${IMAGE_TYPE}.map  -D__DEBUG=1  -mdebugger=pickit3  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1    -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_UNIQUE_ID=BOARD_ID_VENT -xassembler-with-cpp -I"canlib" -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto        $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/cansw_picam.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} ${DISTDIR}/cansw_picam.${IMAGE_TYPE}.hex 
	
else
${DISTDIR}/cansw_picam.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/cansw_picam.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1    -fshort-double -fshort-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -DBOARD_UNIQUE_ID=BOARD_ID_VENT -xassembler-with-cpp -I"canlib" -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/cansw_picam.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
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

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
