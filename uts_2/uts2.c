/*
Nama: Muhammad Wafa
NIM : 15/384853/TK/43515
--------------------------------------
Keterangan:
- compile dan linking secara langsung.
    sdcc namafile.c
    packihx namafile.ihx > namafile.hex
- Edsim51 update freq. 100
*/
#include <8051.h>
#define SS P1
#define A0 P3_3
#define A1 P3_4
#define DELAY 10
#define saklar0 P2_0
#define saklar1 P2_1


void main(void)
{
    unsigned int digit[4]    = {0,0,0,0}; // mulai stopwatch 00.00
    unsigned int angka[10] = {0x0C0,0x0F9,0x0A4,0x0B0,0x99,0x92,0x82,0x0F8,0x80,0x90}; //data angka
    int i;
    int j;
    int k = 0; // selektor digit
    int t; //

    unsigned int state = 0; // 0 = stop/ belum mulai perhitungan

    // set saklar 0 dan 1 sebagai input
    saklar0 = 1;
    saklar1 = 1;
    P0_7 = 1; // menyalakan Seven Segment
    while(1)
    {


        if(~saklar0 & state==0){
            digit[0]    = 0; // mulai stopwatch 00.00 
            digit[1]    = 0; // mulai stopwatch 00.00 
            digit[2]    = 0; // mulai stopwatch 00.00 
            digit[3]    = 0; // mulai stopwatch 00.00 
            state = 1;
        }

        if(~saklar1 & state == 1){
            state = 0;
        }

        //penampil seven segment
        k = 0;
        for(i= 1; i>=0 ; i--){
            for(j = 1; j>=0; j--){
                A1 = i; A0 = j;
                P1 = angka[digit[k]];
                k++;
                //tunda
                for(t = 0; t<DELAY;t++){
                    ;
                }
                P1 = 0xFF; // memadamkan sevent segment sebelum berganti digit.
            }
        }

        //perhitungan dan perubahan waktu
        if(state == 1){
            digit[3]++;
            if(digit[3] >= 10){
                digit[3] = 0;
                digit[2]++;
            }
            if(digit[2] >= 6){
                digit[2] = 0;
                digit[1]++;
            }
            if(digit[1]>=10){
                digit[1]=0;
                digit[0]++;
            }
            if(digit[0]*10 + digit[1] == 99){
                digit[0] = 0;
                digit[1] = 0;
            }
        }    
    }
}
