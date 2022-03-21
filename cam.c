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
#include "timer.h"

void LED_init(void) {
    
    // Pi Zero
    TRISC4 = 0;     
    LATC4 = 0;      
    
    // BLUE LED
    TRISC3 = 0;     
    LATC3 = 0;      
    
    // WHITE LED
    TRISB4 = 0;     
    LATB4 = 0;      
}

void cam_init(void){
    PI_ZERO_OFF();
}

void cam_on(void){
    PI_ZERO_ON();
}

void cam_off(void){
    PI_ZERO_OFF();
}

bool get_cam_state(void){
    // ACTUATOR_OPEN = 0, hence !
    return !PORTCbits.RC4;
}

void cam_send_status(enum ACTUATOR_STATE req_state) {
    // This is the same as the injector valve status.
    enum ACTUATOR_STATE curr_state;
    enum ACTUATOR_ID actuator_id = PICAM;
    curr_state = get_cam_state();

    can_msg_t stat_msg;
    build_actuator_stat_msg(millis(), actuator_id, curr_state, req_state, &stat_msg); // canlib-->can_common.h 
    txb_enqueue(&stat_msg);
}
