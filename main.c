#include <stdio.h>
#include <stdlib.h>

#include "canlib/can.h"
#include "canlib/can_common.h"
#include "canlib/pic18f26k83/pic18f26k83_can.h"
#include "canlib/message_types.h"
#include "canlib/util/timing_util.h"
#include "canlib/util/can_tx_buffer.h"

#include "mcc_generated_files/mcc.h"
#include "mcc_generated_files/adcc.h"
#include "mcc_generated_files/pin_manager.h"

#include "error_checks.h"
#include "cam.h"
#include "timer.h"
#include "board.h"

#include <xc.h>

static void can_msg_handler(const can_msg_t *msg);
static void send_status_ok(void);

// Follows ACTUATOR_STATE in message_types.h
// SHOULD ONLY BE MODIFIED IN ISR
static enum ACTUATOR_STATE requested_cam_state = ACTUATOR_OPEN;
static uint32_t last_can_traffic_timestamp_ms = 0;

//memory pool for the CAN tx buffer
uint8_t tx_pool[100];

int main(int argc, char** argv) {
    // MCC generated initializer
    SYSTEM_Initialize();
    OSCILLATOR_Initialize();

    FVR_Initialize();
    ADCC_Initialize();
    ADCC_DisableContinuousConversion();

    LED_init();

    // init our millisecond function
    timer0_init();

    // Enable global interrupts
    INTCON0bits.GIE = 1;

    // Set up CAN TX
    TRISC0 = 0;
    RC0PPS = 0x33;

    // Set up CAN RX
    TRISC1 = 1;
    ANSELC1 = 0;
    CANRXPPS = 0x11;

    // set up CAN module
    can_timing_t can_setup;
    can_generate_timing_params(_XTAL_FREQ, &can_setup);
    can_init(&can_setup, can_msg_handler);
    // set up CAN tx buffer
    txb_init(tx_pool, sizeof(tx_pool), can_send, can_send_rdy);

    // loop timer
    uint32_t last_millis = millis();

    // Set up camera 
    cam_init();

    bool blue_led_on = false;   // visual heartbeat
    while (1) {
        if (millis() - last_millis > MAX_LOOP_TIME_DIFF_ms) {

            // Check the bus current and report it in a CAN message. Send
            // a warning if the current is too high. 
            bool status_ok = true;
            status_ok &= check_bus_current_error();
            if (status_ok) { send_status_ok(); }
  
            // if there was an issue, a message would already have been sent out
            cam_send_status(requested_cam_state);

            if (requested_cam_state == ACTUATOR_CLOSED) {
                cam_on();
            } else if (requested_cam_state == ACTUATOR_OPEN) {
                cam_off();
            } else {
                // shouldn't get here - we messed up
                can_msg_t error_msg;
                build_board_stat_msg(millis(), E_CODING_SCREWUP, NULL, 0, &error_msg);
                txb_enqueue(&error_msg);
            }

            // visual heartbeat indicator
            if (blue_led_on) {
                BLUE_LED_OFF();
                blue_led_on = false;
            } else {
                BLUE_LED_ON();
                blue_led_on = true;
            }

            // update our loop counter
            last_millis = millis();
        }
        //send any queued CAN messages
        txb_heartbeat();
    }

    // unreachable
    return (EXIT_SUCCESS);
}

static void interrupt interrupt_handler() {
    if (PIR5) {
        can_handle_interrupt();
    }

    // Timer0 has overflowed - update millis() function
    // This happens approximately every 500us
    if (PIE3bits.TMR0IE == 1 && PIR3bits.TMR0IF == 1) {
        timer0_handle_interrupt();
        PIR3bits.TMR0IF = 0;
    }
}

static void can_msg_handler(const can_msg_t *msg) {
    uint16_t msg_type = get_message_type(msg);
    static enum ACTUATOR_ID actuator_id = BOARD_ACTUATOR_ID;

    // declare this in advance cause we can't declare it inside the switch
    // and I don't want to replace this entire thing with an if else
    int cmd_type = -1;
    int dest_id = -1;

    // ignore messages that were sent from this board
    if (get_board_unique_id(msg) == BOARD_UNIQUE_ID) {
        return;
    }

    switch (msg_type) {
        case MSG_GENERAL_CMD:
            cmd_type = get_general_cmd_type(msg);
            if (cmd_type == BUS_DOWN_WARNING) {
                requested_cam_state = ACTUATOR_OPEN;
            }
            break;

        case MSG_ACTUATOR_CMD:
            dest_id = get_actuator_id(msg);
            if(dest_id == actuator_id)
                requested_cam_state = get_req_actuator_state(msg);
            break;

        case MSG_LEDS_ON:
            BLUE_LED_ON();
            WHITE_LED_ON();
            break;

        case MSG_LEDS_OFF:
            BLUE_LED_OFF();
            WHITE_LED_OFF();
            break;

        case MSG_RESET_CMD:
            dest_id = get_reset_board_id(msg);
            if (dest_id == BOARD_UNIQUE_ID || dest_id == 0 ){
                RESET();
            }
            break;
        
        // all the other ones - do nothing
        default:
            break;
    }

    // keep track of heartbeat here
    last_can_traffic_timestamp_ms = millis();
}

// Send a CAN message with nominal status
static void send_status_ok(void) {
    can_msg_t board_stat_msg;
    build_board_stat_msg(millis(), E_NOMINAL, NULL, 0, &board_stat_msg);

    // send it off at low priority
    txb_enqueue(&board_stat_msg);
}
