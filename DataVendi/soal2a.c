/* soal2a.c : Program yang menampilkan pengukur waktu (menit dan detik).
*            Program dijalankan dengan frekuensi =100 untuk mendekati waktu sebenarnya.
*            [PETUNJUK PEMAKAIAN]
*            1. Tekan dan Lepas Saklar 1 untuk menyalakan pengukur waktu.
*            2. Tekan dan Tahan Saklar 2 untuk menghentikan pengukur waktu.
 * Vendi A Nugroho, 27-03-2018
 */

#include <8051.h>
#define A0 P3_3     /* Dua bit untuk memilih alamat dari */
#define A1 P3_4     /* keempat seven-segment yang tersedia */
#define SS P1       /* seven-segment terhubung dengan P1 */
#define START P2_0  /* saklar SW0*/
#define STOP P2_1  /* saklar SW1*/

void main(void)
{
  unsigned char x,t=57.5,i,j,k,l,a[10]={0x0C0,0x0F9,0x0A4,0x0B0,0x99,0x92,0x082,0x0F8,0x80,0x90};
  unsigned char sd,pd,sm,pm;
  START=1;STOP=1;
  P0_7 = 1;
  while (1) {
    if (START == 0) {        /* tombol keypad (B0,K0) ditekan */
      while (START == 0) ;   /* tunggu sampai tombol dilepas */
      for (l = 0; l < 6; l++) {

        for (k = 0; k < 10; k++) {

          for (j = 0; j < 6; j++) {
            for (i = 0; i < 10; i++) {
              A1 = 0;  A0 = 0; /*SS0=satuan detik*/
              SS=a[i];sd=a[i];
              for (x = 0; x < t; x++){;}

              A1 = 0;  A0 = 1; /*SS1=puluhan detik*/
              SS=a[j];pd=a[j];
              for (x = 0; x < t; x++){;}

              A1 = 1;  A0 = 0; /*SS2=satuan menit*/
              SS=a[k];sm=a[k];
              for (x = 0; x < t; x++){;}

              A1 = 1;  A0 = 1; /*SS3=puluhan menit*/
              SS=a[l];pm=a[l];
              for (x = 0; x < t; x++){;}

              if (STOP == 0) {
                while (STOP == 0){
                  A1 = 0;  A0 = 0; /*SS0=satuan detik*/
                  SS=sd;for (x = 0; x < t; x++){;}

                  A1 = 0;  A0 = 1; /*SS1=puluhan detik*/
                  SS=pd;for (x = 0; x < t; x++){;}

                  A1 = 1;  A0 = 0; /*SS2=satuan menit*/
                  SS=sm;for (x = 0; x < t; x++){;}

                  A1 = 1;  A0 = 1; /*SS3=puluhan menit*/
                  SS=pm;for (x = 0; x < t; x++){;}
                };
              }
            }
          }
        }
      }

    }
  }
}
