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
#include "board.h"

void LED_init(void) {      
    // BLUE LED
    TRISC3 = 0;     
    LATC3 = 0;      
    
    // WHITE LED
    TRISB4 = 0;     
    LATB4 = 0;      
}

void cam_init(void) {
    PI_ZERO_OFF();
    PI_ZERO_UNSIGNAL_SHUTDOWN();

    // Pi Zero
    TRISC4 = 0;     
    LATC4  = 0;
    TRISC6 = 0;
    LATC6  = 0;
    TRISC7 = 1;
}

void cam_on(void) {
    PI_ZERO_UNSIGNAL_SHUTDOWN();
    PI_ZERO_ON();
}

void cam_off(void){
    PI_ZERO_SIGNAL_SHUTDOWN();
    // Wait until picam is no longer running
    if (PORTCbits.RC7) { PI_ZERO_OFF(); }
}

bool get_cam_state(void) {
    // RC7 is active low; LOW = picam is recording, HIGH = picam camera error
    return PORTCbits.RC4 && !PORTCbits.RC7;
}

void cam_send_status(enum ACTUATOR_STATE req_state) {
    // This is the same as the injector valve status.
    enum ACTUATOR_STATE curr_state;
    enum ACTUATOR_ID actuator_id = BOARD_ACTUATOR_ID;
    curr_state = get_cam_state() ? ACTUATOR_CLOSED : ACTUATOR_OPEN;

    can_msg_t stat_msg;
    build_actuator_stat_msg(millis(), actuator_id, curr_state, req_state, &stat_msg); // canlib-->can_common.h 
    txb_enqueue(&stat_msg);
}
