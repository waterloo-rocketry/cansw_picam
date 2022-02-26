#ifndef CAM_H
#define	CAM_H


#include <stdbool.h>
#include "canlib/message_types.h"

void cam_init(void);

void cam_on(void); // Turn on Raspberry Pi
void cam_off(void); // Turn off Raspberry Pi

void cam_send_status(enum CAM_STATE req_state);

bool get_cam_on_state(void);
bool get_cam_off_state(void);

#endif /*CAM_H*/
