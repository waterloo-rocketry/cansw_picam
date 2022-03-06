#ifndef ERROR_CHECKS_H
#define	ERROR_CHECKS_H

#include "canlib/message_types.h"

#include <stdbool.h>

// From bus line. At this current, a warning will be sent out over CAN
#define CAM_OVERCURRENT_THRESHOLD_mA 500

// General board status checkers
bool check_bus_current_error(void);

#endif	/* ERROR_CHECKS_H */

