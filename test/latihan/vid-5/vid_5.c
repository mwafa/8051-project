#include <8051.h>

void _main_(void) __naked
{
    while(1){
        P1 = (P1 == 0) ? 0xFF :(P1>>1);
    }
}