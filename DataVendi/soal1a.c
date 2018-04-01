/* soal1a.c : Program yang menampilkan jam digital (jam dan menit).
*            Program dijalankan dengan frekuensi =10 untuk mendekati waktu sebenarnya.
 * Vendi A Nugroho, 27-03-2018
 */
#include <8051.h>
#define A0 P3_3     /* Dua bit untuk memilih alamat dari */
#define A1 P3_4     /* keempat seven-segment yang tersedia */
#define SS P1       /* seven-segment terhubung dengan P1 */

void main(void) {
  unsigned char t=250,x,i,j,k,l,a[10]={0x0C0,0x0F9,0x0A4,0x0B0,0x99,0x92,0x082,0x0F8,0x80,0x90};
  P0_7 = 1;
  while (1) {
    for ( l = 0; l < 4; l++) {
      if (l<2) {
        for ( k = 0; k < 10; k++) {
          for (j = 0; j < 6; j++) {
            for (i = 0; i < 10; i++) {
              A1 = 0;  A0 = 0; /*SS0=satuan menit*/
              SS=a[i];
              for (x = 0; x < t; x++){;}

              A1 = 0;  A0 = 1; /*SS1=puluhan menit*/
              SS=a[j];
              for (x = 0; x < t; x++){;}

              A1 = 1;  A0 = 0; /*SS2=satuan jam*/
              SS=a[k];
              for (x = 0; x < t; x++){;}

              A1 = 1;  A0 = 1; /*SS2=puluhan jam*/
              SS=a[l];
              for (x = 0; x < t; x++){;}
            }
          }
        }
      }

      if (l==3) {
        for ( k = 0; k < 4; k++) {
          for (j = 0; j < 6; j++) {
            for (i = 0; i < 10; i++) {
              A1 = 0;  A0 = 0; /*SS0=satuan menit*/
              SS=a[i];
              for (x = 0; x < t; x++){;}

              A1 = 0;  A0 = 1; /*SS1=puluhan menit*/
              SS=a[j];
              for (x = 0; x < t; x++){;}

              A1 = 1;  A0 = 0; /*SS2=satuan jam*/
              SS=a[k];
              for (x = 0; x < t; x++){;}

              A1 = 1;  A0 = 1; /*SS2=puluhan jam*/
              SS=a[l];
              for (x = 0; x < t; x++){;}
            }
          }
        }
      }
    }
  }
}
