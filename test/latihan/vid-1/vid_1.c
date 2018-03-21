#include <8051.h>


void _main_(void) __naked
{
    P1 = 0b10101010;
    while(1){P1 = ~P1;}
}