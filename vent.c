#include <xc.h>

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
