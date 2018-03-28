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
#define KALIBRATOR 60
#define DELAY 10


void main(void)
{
    unsigned int digit[4]    = {2,3,5,9}; // pukul 23.59
    unsigned int angka[10] = {0x0C0,0x0F9,0x0A4,0x0B0,0x99,0x92,0x82,0x0F8,0x80,0x90}; //data angka
    int i;
    int j;
    int k = 0; // selektor digit
    int t; //
    P0_7 = 1; // menyalakan Seven Segment
    while(1)
    {
        int kal;
        //penampil seven segment
        for(kal = 0; kal<KALIBRATOR; kal++){
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
        }
        //perhitungan dan perubahan waktu
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
        if(digit[0]*10 + digit[1] >= 24){
            digit[0] = 0;
            digit[1] = 0;
        }
            
        
    }
}
