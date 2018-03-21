#include <8052.h>
#define a P1_3
#define b P2_3

void main(void){
    while(1){
        if(a = 1){
            a = 0;
        }else{
            a = 1;
        }
    }
}