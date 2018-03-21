#include <8051.h>

void _main_(void) __naked
{
    P1 = 0b11111110;
    while(1){
        P1 = (P1 == 0b01111111) ? 0b11111110 :(P1<<1)+1;
    }
}