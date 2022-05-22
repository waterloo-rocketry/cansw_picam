#ifndef CAM_H
#define CAM_H


#include <stdbool.h>
#include "canlib/message_types.h"

#define MAX_LOOP_TIME_DIFF_ms 250

#define WHITE_LED_ON()              (LATB4 = 1)
#define WHITE_LED_OFF()             (LATB4 = 0)
#define BLUE_LED_ON()               (LATC3 = 1)
#define BLUE_LED_OFF()              (LATC3 = 0)
#define PI_ZERO_ON()                (LATC4 = 1)
#define PI_ZERO_OFF()               (LATC4 = 0)
#define PI_ZERO_SIGNAL_SHUTDOWN()   (LATC6 = 1)
#define PI_ZERO_UNSIGNAL_SHUTDOWN() (LATC6 = 0)

void LED_init(void);
void cam_init(void);

void cam_on(void); // Turn on Raspberry Pi
void cam_off(void); // Turn off Raspberry Pi

void cam_send_status(enum ACTUATOR_STATE req_state);

bool get_cam_state(void);


#endif /*CAM_H*/
