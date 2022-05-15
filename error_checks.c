#include "canlib/can.h"
#include "canlib/can_common.h"
#include "canlib/pic18f26k83/pic18f26k83_can.h"
#include "canlib/message_types.h"
#include "canlib/util/can_tx_buffer.h"

#include "mcc_generated_files/fvr.h"
#include "mcc_generated_files/adcc.h"
#include "mcc_generated_files/mcc.h"

#include "timer.h"
#include "error_checks.h"
#include "cam.h"

#include <stdlib.h>

//******************************************************************************
//                              STATUS CHECKS                                 //
//******************************************************************************

bool check_bus_current_error(void){
    adc_result_t sense_raw_mV = ADCC_GetSingleConversion(channel_VSENSE);
    int curr_draw_mA = (sense_raw_mV) / 20;
    uint32_t timestamp = millis();
    uint8_t curr_data[2] = {0};
    curr_data[0] = (curr_draw_mA >> 8) & 0xff;
    curr_data[1] = (curr_draw_mA >> 0) & 0xff;
    
    if (curr_draw_mA > CAM_OVERCURRENT_THRESHOLD_mA) {
        can_msg_t error_msg;
        build_board_stat_msg(timestamp, E_BUS_OVER_CURRENT, curr_data, 2, &error_msg);
        txb_enqueue(&error_msg);
        return false;
    }
    
    // things look ok
    can_msg_t current_draw_msg;
    build_board_stat_msg(timestamp, E_NOMINAL, curr_data, 2, &current_draw_msg);
    txb_enqueue(&current_draw_msg);
    
    return true;
}

