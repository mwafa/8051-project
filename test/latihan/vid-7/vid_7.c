#include <8051.h>

void _main_(void) __naked
{
    while(1){
        P1 = (P1 == 0xFF) ? 0 : ~(~P1>>1);
    }
}