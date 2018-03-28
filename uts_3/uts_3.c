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
#define B0 P0_0     /* baris-0 keypad yang terhubung P0.0 */
#define B1 P0_1     /* baris-1 keypad yang terhubung P0.1 */
#define B2 P0_2     /* baris-2 keypad yang terhubung P0.2 */
#define B3 P0_3     /* baris-3 keypad yang terhubung P0.3 */
#define K0 P0_4     /* kolom-0 keypad yang terhubung P0.4 */
#define K1 P0_5     /* kolom-1 keypad yang terhubung P0.5 */
#define K2 P0_6     /* kolom-2 keypad yang terhubung P0.6 */
#define SS P1      //seven segment


void main(void)
{
  unsigned int angka[11] = {0x0C0,0x0F9,0x0A4,0x0B0,0x99,0x92,0x82,0x0F8,0x80,0x90,0xBF}; //data angka
  K0 = 1;  K1 = 1;  K2 = 1;   /* awali dgn semua kolom = HI */
  P0_7 = 1; //menyalakan seven segment
  while (1) {
    B0 = 0;  B1 = 1;  B2 = 1;  B3 = 1;         /* uji baris-0 */
    if (K0 == 0) {        /* tombol keypad (B0,K0) ditekan */
      while (K0 == 0) ;   /* tunggu sampai tombol dilepas */
      SS = angka[10];
      K0 = 1;             /* awali semua kolom = HI */
    }

    B0 = 0;  B1 = 1;  B2 = 1;  B3 = 1;         /* uji baris-0 */
    if (K1 == 0) {        /* tombol keypad (B0,K1) ditekan */
      while (K1 == 0) ;
      SS = angka[0];
      K1 = 1;
    }
    B0 = 0;  B1 = 1;  B2 = 1;  B3 = 1;         /* uji baris-0 */
    if (K2 == 0) {        /* tombol keypad (B0,K2) ditekan */
      while (K2 == 0) ;
      SS = angka[10];
      K2 = 1;
    }
    B0 = 1;  B1 = 0;  B2 = 1;  B3 = 1;         /* uji baris-1 */
    if (K0 == 0) {        /* tombol keypad (B1,K0) ditekan */
      while (K0 == 0) ;
      SS = angka[9];
      K0 = 1;
    }
    B0 = 1;  B1 = 0;  B2 = 1;  B3 = 1;         /* uji baris-1 */
    if (K1 == 0) {        /* tombol keypad (B1,K1) ditekan */
      while (K1 == 0) ;
      SS = angka[8];
      K1 = 1;
    }
    B0 = 1;  B1 = 0;  B2 = 1;  B3 = 1;         /* uji baris-1 */
    if (K2 == 0) {        /* tombol keypad (B1,K2) ditekan */
      while (K2 == 0) ;
      SS = angka[7];
      K2 = 1;
    }
    B0 = 1;  B1 = 1;  B2 = 0;  B3 = 1;         /* uji baris-2 */
    if (K0 == 0) {        /* tombol keypad (B2,K0) ditekan */
      while (K0 == 0) ;
      SS = angka[6];
      K0 = 1;
    }
    B0 = 1;  B1 = 1;  B2 = 0;  B3 = 1;         /* uji baris-2 */
    if (K1 == 0) {        /* tombol keypad (B2,K1) ditekan */
      while (K1 == 0) ;
      SS = angka[5];
      K1 = 1;
    }
    B0 = 1;  B1 = 1;  B2 = 0;  B3 = 1;         /* uji baris-2 */
    if (K2 == 0) {        /* tombol keypad (B2,K2) ditekan */
      while (K2 == 0) ;
      SS = angka[4];
      K2 = 1;
    }
    B0 = 1;  B1 = 1;  B2 = 1;  B3 = 0;         /* uji baris-3 */
    if (K0 == 0) {        /* tombol keypad (B3,K0) ditekan */
      while (K0 == 0) ;
      SS = angka[3];
      K0 = 1;
    }
    B0 = 1;  B1 = 1;  B2 = 1;  B3 = 0;         /* uji baris-3 */
    if (K1 == 0) {        /* tombol keypad (B3,K1) ditekan */
      while (K1 == 0) ;
      SS = angka[2];
      K1 = 1;
    }
    B0 = 1;  B1 = 1;  B2 = 1;  B3 = 0;         /* uji baris-3 */
    if (K2 == 0) {        /* tombol keypad (B3,K2) ditekan */
      while (K2 == 0) ;
      SS = angka[1];
      K2 = 1;
    }
  }
}
