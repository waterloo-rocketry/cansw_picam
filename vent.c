#include <xc.h>

void LED_init(void) {
    // XXX Adjust these defines according to the picam schematic
    TRISC2 = 0;     // set C2 output
    LATC2 = 1;      // turn the led off
    
    TRISC3 = 0;     // set C3 output
    LATC3 = 1;      // turn the led off
    
    TRISC4 = 0;     // set C4 output
    LATC4 = 1;      // turn the led off
}
