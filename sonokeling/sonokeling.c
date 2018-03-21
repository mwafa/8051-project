#include <8052.h>

int a ;
int b ;

void _main_(void) __naked
{
    while (1){  
        a = 1;
        b = 0b10000000;
        while(b>0)
        {
            P1 ^= a+b;
            a <<=1;
            b >>=1;
        }

    }
}