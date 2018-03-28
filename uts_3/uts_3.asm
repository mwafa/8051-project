;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (MINGW64)
;--------------------------------------------------------
	.module uts_3
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_main_angka_1_2:
	.ds 22
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;angka                     Allocated with name '_main_angka_1_2'
;------------------------------------------------------------
;	uts_3.c:23: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	uts_3.c:25: unsigned int angka[11] = {0x0C0,0x0F9,0x0A4,0x0B0,0x99,0x92,0x82,0x0F8,0x80,0x90,0xBF}; //data angka
	mov	(_main_angka_1_2 + 0),#0xc0
	mov	(_main_angka_1_2 + 1),#0x00
	mov	((_main_angka_1_2 + 0x0002) + 0),#0xf9
	mov	((_main_angka_1_2 + 0x0002) + 1),#0x00
	mov	((_main_angka_1_2 + 0x0004) + 0),#0xa4
	mov	((_main_angka_1_2 + 0x0004) + 1),#0x00
	mov	((_main_angka_1_2 + 0x0006) + 0),#0xb0
	mov	((_main_angka_1_2 + 0x0006) + 1),#0x00
	mov	((_main_angka_1_2 + 0x0008) + 0),#0x99
	mov	((_main_angka_1_2 + 0x0008) + 1),#0x00
	mov	((_main_angka_1_2 + 0x000a) + 0),#0x92
	mov	((_main_angka_1_2 + 0x000a) + 1),#0x00
	mov	((_main_angka_1_2 + 0x000c) + 0),#0x82
	mov	((_main_angka_1_2 + 0x000c) + 1),#0x00
	mov	((_main_angka_1_2 + 0x000e) + 0),#0xf8
	mov	((_main_angka_1_2 + 0x000e) + 1),#0x00
	mov	((_main_angka_1_2 + 0x0010) + 0),#0x80
	mov	((_main_angka_1_2 + 0x0010) + 1),#0x00
	mov	((_main_angka_1_2 + 0x0012) + 0),#0x90
	mov	((_main_angka_1_2 + 0x0012) + 1),#0x00
	mov	((_main_angka_1_2 + 0x0014) + 0),#0xbf
	mov	((_main_angka_1_2 + 0x0014) + 1),#0x00
;	uts_3.c:26: K0 = 1;  K1 = 1;  K2 = 1;   /* awali dgn semua kolom = HI */
	setb	_P0_4
	setb	_P0_5
	setb	_P0_6
;	uts_3.c:27: P0_7 = 1; //menyalakan seven segment
	setb	_P0_7
;	uts_3.c:28: while (1) {
00162$:
;	uts_3.c:29: B0 = 0;  B1 = 1;  B2 = 1;  B3 = 1;         /* uji baris-0 */
	clr	_P0_0
	setb	_P0_1
	setb	_P0_2
	setb	_P0_3
;	uts_3.c:30: if (K0 == 0) {        /* tombol keypad (B0,K0) ditekan */
	jb	_P0_4,00105$
;	uts_3.c:31: while (K0 == 0) ;   /* tunggu sampai tombol dilepas */
00101$:
	jnb	_P0_4,00101$
;	uts_3.c:32: SS = angka[10];
	mov	_P1,(_main_angka_1_2 + 0x0014)
;	uts_3.c:33: K0 = 1;             /* awali semua kolom = HI */
	setb	_P0_4
00105$:
;	uts_3.c:36: B0 = 0;  B1 = 1;  B2 = 1;  B3 = 1;         /* uji baris-0 */
	clr	_P0_0
	setb	_P0_1
	setb	_P0_2
	setb	_P0_3
;	uts_3.c:37: if (K1 == 0) {        /* tombol keypad (B0,K1) ditekan */
	jb	_P0_5,00110$
;	uts_3.c:38: while (K1 == 0) ;
00106$:
	jnb	_P0_5,00106$
;	uts_3.c:39: SS = angka[0];
	mov	_P1,_main_angka_1_2
;	uts_3.c:40: K1 = 1;
	setb	_P0_5
00110$:
;	uts_3.c:42: B0 = 0;  B1 = 1;  B2 = 1;  B3 = 1;         /* uji baris-0 */
	clr	_P0_0
	setb	_P0_1
	setb	_P0_2
	setb	_P0_3
;	uts_3.c:43: if (K2 == 0) {        /* tombol keypad (B0,K2) ditekan */
	jb	_P0_6,00115$
;	uts_3.c:44: while (K2 == 0) ;
00111$:
	jnb	_P0_6,00111$
;	uts_3.c:45: SS = angka[10];
	mov	_P1,(_main_angka_1_2 + 0x0014)
;	uts_3.c:46: K2 = 1;
	setb	_P0_6
00115$:
;	uts_3.c:48: B0 = 1;  B1 = 0;  B2 = 1;  B3 = 1;         /* uji baris-1 */
	setb	_P0_0
	clr	_P0_1
	setb	_P0_2
	setb	_P0_3
;	uts_3.c:49: if (K0 == 0) {        /* tombol keypad (B1,K0) ditekan */
	jb	_P0_4,00120$
;	uts_3.c:50: while (K0 == 0) ;
00116$:
	jnb	_P0_4,00116$
;	uts_3.c:51: SS = angka[9];
	mov	_P1,(_main_angka_1_2 + 0x0012)
;	uts_3.c:52: K0 = 1;
	setb	_P0_4
00120$:
;	uts_3.c:54: B0 = 1;  B1 = 0;  B2 = 1;  B3 = 1;         /* uji baris-1 */
	setb	_P0_0
	clr	_P0_1
	setb	_P0_2
	setb	_P0_3
;	uts_3.c:55: if (K1 == 0) {        /* tombol keypad (B1,K1) ditekan */
	jb	_P0_5,00125$
;	uts_3.c:56: while (K1 == 0) ;
00121$:
	jnb	_P0_5,00121$
;	uts_3.c:57: SS = angka[8];
	mov	_P1,(_main_angka_1_2 + 0x0010)
;	uts_3.c:58: K1 = 1;
	setb	_P0_5
00125$:
;	uts_3.c:60: B0 = 1;  B1 = 0;  B2 = 1;  B3 = 1;         /* uji baris-1 */
	setb	_P0_0
	clr	_P0_1
	setb	_P0_2
	setb	_P0_3
;	uts_3.c:61: if (K2 == 0) {        /* tombol keypad (B1,K2) ditekan */
	jb	_P0_6,00130$
;	uts_3.c:62: while (K2 == 0) ;
00126$:
	jnb	_P0_6,00126$
;	uts_3.c:63: SS = angka[7];
	mov	_P1,(_main_angka_1_2 + 0x000e)
;	uts_3.c:64: K2 = 1;
	setb	_P0_6
00130$:
;	uts_3.c:66: B0 = 1;  B1 = 1;  B2 = 0;  B3 = 1;         /* uji baris-2 */
	setb	_P0_0
	setb	_P0_1
	clr	_P0_2
	setb	_P0_3
;	uts_3.c:67: if (K0 == 0) {        /* tombol keypad (B2,K0) ditekan */
	jb	_P0_4,00135$
;	uts_3.c:68: while (K0 == 0) ;
00131$:
	jnb	_P0_4,00131$
;	uts_3.c:69: SS = angka[6];
	mov	_P1,(_main_angka_1_2 + 0x000c)
;	uts_3.c:70: K0 = 1;
	setb	_P0_4
00135$:
;	uts_3.c:72: B0 = 1;  B1 = 1;  B2 = 0;  B3 = 1;         /* uji baris-2 */
	setb	_P0_0
	setb	_P0_1
	clr	_P0_2
	setb	_P0_3
;	uts_3.c:73: if (K1 == 0) {        /* tombol keypad (B2,K1) ditekan */
	jb	_P0_5,00140$
;	uts_3.c:74: while (K1 == 0) ;
00136$:
	jnb	_P0_5,00136$
;	uts_3.c:75: SS = angka[5];
	mov	_P1,(_main_angka_1_2 + 0x000a)
;	uts_3.c:76: K1 = 1;
	setb	_P0_5
00140$:
;	uts_3.c:78: B0 = 1;  B1 = 1;  B2 = 0;  B3 = 1;         /* uji baris-2 */
	setb	_P0_0
	setb	_P0_1
	clr	_P0_2
	setb	_P0_3
;	uts_3.c:79: if (K2 == 0) {        /* tombol keypad (B2,K2) ditekan */
	jb	_P0_6,00145$
;	uts_3.c:80: while (K2 == 0) ;
00141$:
	jnb	_P0_6,00141$
;	uts_3.c:81: SS = angka[4];
	mov	_P1,(_main_angka_1_2 + 0x0008)
;	uts_3.c:82: K2 = 1;
	setb	_P0_6
00145$:
;	uts_3.c:84: B0 = 1;  B1 = 1;  B2 = 1;  B3 = 0;         /* uji baris-3 */
	setb	_P0_0
	setb	_P0_1
	setb	_P0_2
	clr	_P0_3
;	uts_3.c:85: if (K0 == 0) {        /* tombol keypad (B3,K0) ditekan */
	jb	_P0_4,00150$
;	uts_3.c:86: while (K0 == 0) ;
00146$:
	jnb	_P0_4,00146$
;	uts_3.c:87: SS = angka[3];
	mov	_P1,(_main_angka_1_2 + 0x0006)
;	uts_3.c:88: K0 = 1;
	setb	_P0_4
00150$:
;	uts_3.c:90: B0 = 1;  B1 = 1;  B2 = 1;  B3 = 0;         /* uji baris-3 */
	setb	_P0_0
	setb	_P0_1
	setb	_P0_2
	clr	_P0_3
;	uts_3.c:91: if (K1 == 0) {        /* tombol keypad (B3,K1) ditekan */
	jb	_P0_5,00155$
;	uts_3.c:92: while (K1 == 0) ;
00151$:
	jnb	_P0_5,00151$
;	uts_3.c:93: SS = angka[2];
	mov	_P1,(_main_angka_1_2 + 0x0004)
;	uts_3.c:94: K1 = 1;
	setb	_P0_5
00155$:
;	uts_3.c:96: B0 = 1;  B1 = 1;  B2 = 1;  B3 = 0;         /* uji baris-3 */
	setb	_P0_0
	setb	_P0_1
	setb	_P0_2
	clr	_P0_3
;	uts_3.c:97: if (K2 == 0) {        /* tombol keypad (B3,K2) ditekan */
	jnb	_P0_6,00263$
	ljmp	00162$
00263$:
;	uts_3.c:98: while (K2 == 0) ;
00156$:
	jnb	_P0_6,00156$
;	uts_3.c:99: SS = angka[1];
	mov	_P1,(_main_angka_1_2 + 0x0002)
;	uts_3.c:100: K2 = 1;
	setb	_P0_6
	ljmp	00162$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
