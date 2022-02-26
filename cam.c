#include <xc.h>
#include <stdint.h>
#include <stdbool.h>

#include "canlib/can.h"
#include "canlib/can_common.h"
#include "canlib/pic18f26k83/pic18f26k83_can.h"
#include "canlib/message_types.h"
#include "canlib/util/can_tx_buffer.h"

#include "mcc_generated_files/mcc.h"

#include "cam.h"
#include "vent.h"
#include "timer.h"

void cam_init(void){
    PI_ZERO_OFF(); // vent.h
}

void cam_on(void){
    PI_ZERO_ON();
}

void cam_off(void){
    PI_ZERO_OFF();
}

bool get_cam_on_state(void){
    return PORTCbits.RC4;
}

bool get_cam_off_state(void){
    return !PORTCbits.RC4; // seemingly redundant
}

void cam_send_status(enum CAM_STATE req_state) {
    // This is the same as the injector valve status.
    enum CAM_STATE curr_state;

    bool cam_on = get_cam_on_state();
    bool cam_off = get_cam_off_state();

    // on
    if (cam_on && !cam_off){
        curr_state = CAM_ON;
    }

    // off
    else if (!CAM_ON && CAM_OFF){
        curr_state = CAM_OFF;
    }

    // in between on and off
    else if (!CAM_ON && !CAM_OFF){
        curr_state = CAM_UNK;
    }

    // both limit switches triggered ie. both open and closed (illegal)
    else {
        curr_state = CAM_ILLEGAL;
    }

    can_msg_t stat_msg;
    build_cam_stat_msg(millis(), curr_state, req_state, &stat_msg); // canlib-->can_common.h 
    txb_enqueue(&stat_msg);
}
