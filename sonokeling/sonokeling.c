#include <8052.h>


int a ;
int b ;

void _main_(void) __naked
{
    while (1){
        int i;
        a = 1;
        b = 0b10000000;
        for(i=0;i<8;i++)
        {
            P1 ^= a+b;
            a <<=1;
            b >>=1;
        }

    }
}