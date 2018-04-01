;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (MINGW64)
;--------------------------------------------------------
	.module soal2a
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
_main_x_1_2:
	.ds 1
_main_i_1_2:
	.ds 1
_main_j_1_2:
	.ds 1
_main_l_1_2:
	.ds 1
_main_a_1_2:
	.ds 10
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
;x                         Allocated with name '_main_x_1_2'
;t                         Allocated to registers 
;i                         Allocated with name '_main_i_1_2'
;j                         Allocated with name '_main_j_1_2'
;k                         Allocated to registers r6 
;l                         Allocated with name '_main_l_1_2'
;a                         Allocated with name '_main_a_1_2'
;sd                        Allocated to registers r2 
;pd                        Allocated to registers r5 
;sm                        Allocated to registers r7 
;pm                        Allocated to registers r3 
;------------------------------------------------------------
;	soal2a.c:16: void main(void)
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
;	soal2a.c:18: unsigned char x,t=57.5,i,j,k,l,a[10]={0x0C0,0x0F9,0x0A4,0x0B0,0x99,0x92,0x082,0x0F8,0x80,0x90};
	mov	_main_a_1_2,#0xc0
	mov	(_main_a_1_2 + 0x0001),#0xf9
	mov	(_main_a_1_2 + 0x0002),#0xa4
	mov	(_main_a_1_2 + 0x0003),#0xb0
	mov	(_main_a_1_2 + 0x0004),#0x99
	mov	(_main_a_1_2 + 0x0005),#0x92
	mov	(_main_a_1_2 + 0x0006),#0x82
	mov	(_main_a_1_2 + 0x0007),#0xf8
	mov	(_main_a_1_2 + 0x0008),#0x80
	mov	(_main_a_1_2 + 0x0009),#0x90
;	soal2a.c:20: START=1;STOP=1;
	setb	_P2_0
	setb	_P2_1
;	soal2a.c:21: P0_7 = 1;
	setb	_P0_7
;	soal2a.c:22: while (1) {
00124$:
;	soal2a.c:23: if (START == 0) {        /* tombol keypad (B0,K0) ditekan */
	jb	_P2_0,00124$
;	soal2a.c:24: while (START == 0) ;   /* tunggu sampai tombol dilepas */
00101$:
	jnb	_P2_0,00101$
;	soal2a.c:25: for (l = 0; l < 6; l++) {
	mov	_main_l_1_2,#0x00
;	soal2a.c:27: for (k = 0; k < 10; k++) {
00185$:
	mov	a,_main_l_1_2
	add	a,#_main_a_1_2
	mov	r1,a
	mov	r6,#0x00
;	soal2a.c:29: for (j = 0; j < 6; j++) {
00183$:
	mov	a,r6
	add	a,#_main_a_1_2
	mov	r0,a
	mov	_main_j_1_2,#0x00
;	soal2a.c:30: for (i = 0; i < 10; i++) {
00181$:
	mov	a,_main_j_1_2
	add	a,#_main_a_1_2
	mov	r4,a
	mov	_main_i_1_2,#0x00
00150$:
;	soal2a.c:31: A1 = 0;  A0 = 0; /*SS0=satuan detik*/
	clr	_P3_4
	clr	_P3_3
;	soal2a.c:32: SS=a[i];sd=a[i];
	mov	a,_main_i_1_2
	add	a,#_main_a_1_2
	mov	r2,a
	push	ar0
	mov	r0,ar2
	mov	ar2,@r0
	pop	ar0
	mov	_P1,r2
;	soal2a.c:33: for (x = 0; x < t; x++){;}
	mov	_main_x_1_2,#0x00
00127$:
	mov	a,#0x100 - 0x39
	add	a,_main_x_1_2
	jc	00104$
	inc	_main_x_1_2
	sjmp	00127$
00104$:
;	soal2a.c:35: A1 = 0;  A0 = 1; /*SS1=puluhan detik*/
	clr	_P3_4
	setb	_P3_3
;	soal2a.c:36: SS=a[j];pd=a[j];
	push	ar0
	mov	r0,ar4
	mov	ar5,@r0
	pop	ar0
	mov	_P1,r5
;	soal2a.c:37: for (x = 0; x < t; x++){;}
	mov	_main_x_1_2,#0x00
00130$:
	mov	a,#0x100 - 0x39
	add	a,_main_x_1_2
	jc	00105$
	inc	_main_x_1_2
	sjmp	00130$
00105$:
;	soal2a.c:39: A1 = 1;  A0 = 0; /*SS2=satuan menit*/
	setb	_P3_4
	clr	_P3_3
;	soal2a.c:40: SS=a[k];sm=a[k];
	mov	ar7,@r0
	mov	_P1,r7
;	soal2a.c:41: for (x = 0; x < t; x++){;}
	mov	_main_x_1_2,#0x00
00133$:
	mov	a,#0x100 - 0x39
	add	a,_main_x_1_2
	jc	00106$
	inc	_main_x_1_2
	sjmp	00133$
00106$:
;	soal2a.c:43: A1 = 1;  A0 = 1; /*SS3=puluhan menit*/
	setb	_P3_4
	setb	_P3_3
;	soal2a.c:44: SS=a[l];pm=a[l];
	mov	ar3,@r1
	mov	_P1,r3
;	soal2a.c:45: for (x = 0; x < t; x++){;}
	mov	_main_x_1_2,#0x00
00136$:
	mov	a,#0x100 - 0x39
	add	a,_main_x_1_2
	jc	00107$
	inc	_main_x_1_2
	sjmp	00136$
00107$:
;	soal2a.c:47: if (STOP == 0) {
	jb	_P2_1,00151$
;	soal2a.c:48: while (STOP == 0){
00112$:
	jb	_P2_1,00151$
;	soal2a.c:49: A1 = 0;  A0 = 0; /*SS0=satuan detik*/
	clr	_P3_4
	clr	_P3_3
;	soal2a.c:50: SS=sd;for (x = 0; x < t; x++){;}
	mov	_P1,r2
	mov	_main_x_1_2,#0x00
00139$:
	mov	a,#0x100 - 0x39
	add	a,_main_x_1_2
	jc	00108$
	inc	_main_x_1_2
	sjmp	00139$
00108$:
;	soal2a.c:52: A1 = 0;  A0 = 1; /*SS1=puluhan detik*/
	clr	_P3_4
	setb	_P3_3
;	soal2a.c:53: SS=pd;for (x = 0; x < t; x++){;}
	mov	_P1,r5
	mov	_main_x_1_2,#0x00
00142$:
	mov	a,#0x100 - 0x39
	add	a,_main_x_1_2
	jc	00109$
	inc	_main_x_1_2
	sjmp	00142$
00109$:
;	soal2a.c:55: A1 = 1;  A0 = 0; /*SS2=satuan menit*/
	setb	_P3_4
	clr	_P3_3
;	soal2a.c:56: SS=sm;for (x = 0; x < t; x++){;}
	mov	_P1,r7
	mov	_main_x_1_2,#0x00
00145$:
	mov	a,#0x100 - 0x39
	add	a,_main_x_1_2
	jc	00110$
	inc	_main_x_1_2
	sjmp	00145$
00110$:
;	soal2a.c:58: A1 = 1;  A0 = 1; /*SS3=puluhan menit*/
	setb	_P3_4
	setb	_P3_3
;	soal2a.c:59: SS=pm;for (x = 0; x < t; x++){;}
	mov	_P1,r3
	mov	_main_x_1_2,#0x00
00148$:
	mov	a,#0x100 - 0x39
	add	a,_main_x_1_2
	jc	00112$
	inc	_main_x_1_2
	sjmp	00148$
00151$:
;	soal2a.c:30: for (i = 0; i < 10; i++) {
	inc	_main_i_1_2
	mov	a,#0x100 - 0x0a
	add	a,_main_i_1_2
	jc	00270$
	ljmp	00150$
00270$:
;	soal2a.c:29: for (j = 0; j < 6; j++) {
	inc	_main_j_1_2
	mov	a,#0x100 - 0x06
	add	a,_main_j_1_2
	jc	00271$
	ljmp	00181$
00271$:
;	soal2a.c:27: for (k = 0; k < 10; k++) {
	inc	r6
	cjne	r6,#0x0a,00272$
00272$:
	jnc	00273$
	ljmp	00183$
00273$:
;	soal2a.c:25: for (l = 0; l < 6; l++) {
	inc	_main_l_1_2
	mov	a,#0x100 - 0x06
	add	a,_main_l_1_2
	jc	00274$
	ljmp	00185$
00274$:
	ljmp	00124$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
