;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (MINGW64)
;--------------------------------------------------------
	.module soal1a
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
;t                         Allocated to registers 
;x                         Allocated to registers r2 
;i                         Allocated to registers r3 
;j                         Allocated to registers r5 
;k                         Allocated to registers r6 
;l                         Allocated to registers r7 
;a                         Allocated with name '_main_a_1_2'
;------------------------------------------------------------
;	soal1a.c:10: void main(void) {
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
;	soal1a.c:11: unsigned char t=250,x,i,j,k,l,a[10]={0x0C0,0x0F9,0x0A4,0x0B0,0x99,0x92,0x082,0x0F8,0x80,0x90};
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
;	soal1a.c:12: P0_7 = 1;
	setb	_P0_7
;	soal1a.c:14: for ( l = 0; l < 4; l++) {
00191$:
	mov	r7,#0x00
00159$:
;	soal1a.c:15: if (l<2) {
	cjne	r7,#0x02,00271$
00271$:
	jc	00272$
	ljmp	00109$
00272$:
;	soal1a.c:16: for ( k = 0; k < 10; k++) {
	mov	a,r7
	add	a,#_main_a_1_2
	mov	r1,a
	mov	r6,#0x00
;	soal1a.c:17: for (j = 0; j < 6; j++) {
00174$:
	mov	a,r6
	add	a,#_main_a_1_2
	mov	r0,a
	mov	r5,#0x00
;	soal1a.c:18: for (i = 0; i < 10; i++) {
00172$:
	mov	a,r5
	add	a,#_main_a_1_2
	mov	r4,a
	mov	r3,#0x00
00135$:
;	soal1a.c:19: A1 = 0;  A0 = 0; /*SS0=satuan menit*/
	clr	_P3_4
	clr	_P3_3
;	soal1a.c:20: SS=a[i];
	mov	a,r3
	add	a,#_main_a_1_2
	mov	r2,a
	push	ar0
	mov	r0,ar2
	mov	_P1,@r0
	pop	ar0
;	soal1a.c:21: for (x = 0; x < t; x++){;}
	mov	r2,#0x00
00124$:
	cjne	r2,#0xfa,00273$
00273$:
	jnc	00101$
	inc	r2
	sjmp	00124$
00101$:
;	soal1a.c:23: A1 = 0;  A0 = 1; /*SS1=puluhan menit*/
	clr	_P3_4
	setb	_P3_3
;	soal1a.c:24: SS=a[j];
	push	ar0
	mov	r0,ar4
	mov	_P1,@r0
	pop	ar0
;	soal1a.c:25: for (x = 0; x < t; x++){;}
	mov	r2,#0x00
00127$:
	cjne	r2,#0xfa,00275$
00275$:
	jnc	00102$
	inc	r2
	sjmp	00127$
00102$:
;	soal1a.c:27: A1 = 1;  A0 = 0; /*SS2=satuan jam*/
	setb	_P3_4
	clr	_P3_3
;	soal1a.c:28: SS=a[k];
	mov	_P1,@r0
;	soal1a.c:29: for (x = 0; x < t; x++){;}
	mov	r2,#0x00
00130$:
	cjne	r2,#0xfa,00277$
00277$:
	jnc	00103$
	inc	r2
	sjmp	00130$
00103$:
;	soal1a.c:31: A1 = 1;  A0 = 1; /*SS2=puluhan jam*/
	setb	_P3_4
	setb	_P3_3
;	soal1a.c:32: SS=a[l];
	mov	_P1,@r1
;	soal1a.c:33: for (x = 0; x < t; x++){;}
	mov	r2,#0x00
00133$:
	cjne	r2,#0xfa,00279$
00279$:
	jnc	00136$
	inc	r2
	sjmp	00133$
00136$:
;	soal1a.c:18: for (i = 0; i < 10; i++) {
	inc	r3
	cjne	r3,#0x0a,00281$
00281$:
	jc	00135$
;	soal1a.c:17: for (j = 0; j < 6; j++) {
	inc	r5
	cjne	r5,#0x06,00283$
00283$:
	jc	00172$
;	soal1a.c:16: for ( k = 0; k < 10; k++) {
	inc	r6
	cjne	r6,#0x0a,00285$
00285$:
	jc	00174$
00109$:
;	soal1a.c:39: if (l==3) {
	cjne	r7,#0x03,00287$
	sjmp	00288$
00287$:
	ljmp	00160$
00288$:
;	soal1a.c:40: for ( k = 0; k < 4; k++) {
	mov	a,r7
	add	a,#_main_a_1_2
	mov	r1,a
	mov	r6,#0x00
;	soal1a.c:41: for (j = 0; j < 6; j++) {
00188$:
	mov	a,r6
	add	a,#_main_a_1_2
	mov	r0,a
	mov	r5,#0x00
;	soal1a.c:42: for (i = 0; i < 10; i++) {
00186$:
	mov	a,r5
	add	a,#_main_a_1_2
	mov	r4,a
	mov	r3,#0x00
00153$:
;	soal1a.c:43: A1 = 0;  A0 = 0; /*SS0=satuan menit*/
	clr	_P3_4
	clr	_P3_3
;	soal1a.c:44: SS=a[i];
	mov	a,r3
	add	a,#_main_a_1_2
	mov	r2,a
	push	ar0
	mov	r0,ar2
	mov	_P1,@r0
	pop	ar0
;	soal1a.c:45: for (x = 0; x < t; x++){;}
	mov	r2,#0x00
00142$:
	cjne	r2,#0xfa,00289$
00289$:
	jnc	00110$
	inc	r2
	sjmp	00142$
00110$:
;	soal1a.c:47: A1 = 0;  A0 = 1; /*SS1=puluhan menit*/
	clr	_P3_4
	setb	_P3_3
;	soal1a.c:48: SS=a[j];
	push	ar0
	mov	r0,ar4
	mov	_P1,@r0
	pop	ar0
;	soal1a.c:49: for (x = 0; x < t; x++){;}
	mov	r2,#0x00
00145$:
	cjne	r2,#0xfa,00291$
00291$:
	jnc	00111$
	inc	r2
	sjmp	00145$
00111$:
;	soal1a.c:51: A1 = 1;  A0 = 0; /*SS2=satuan jam*/
	setb	_P3_4
	clr	_P3_3
;	soal1a.c:52: SS=a[k];
	mov	_P1,@r0
;	soal1a.c:53: for (x = 0; x < t; x++){;}
	mov	r2,#0x00
00148$:
	cjne	r2,#0xfa,00293$
00293$:
	jnc	00112$
	inc	r2
	sjmp	00148$
00112$:
;	soal1a.c:55: A1 = 1;  A0 = 1; /*SS2=puluhan jam*/
	setb	_P3_4
	setb	_P3_3
;	soal1a.c:56: SS=a[l];
	mov	_P1,@r1
;	soal1a.c:57: for (x = 0; x < t; x++){;}
	mov	r2,#0x00
00151$:
	cjne	r2,#0xfa,00295$
00295$:
	jnc	00154$
	inc	r2
	sjmp	00151$
00154$:
;	soal1a.c:42: for (i = 0; i < 10; i++) {
	inc	r3
	cjne	r3,#0x0a,00297$
00297$:
	jc	00153$
;	soal1a.c:41: for (j = 0; j < 6; j++) {
	inc	r5
	cjne	r5,#0x06,00299$
00299$:
	jc	00186$
;	soal1a.c:40: for ( k = 0; k < 4; k++) {
	inc	r6
	cjne	r6,#0x04,00301$
00301$:
	jc	00188$
00160$:
;	soal1a.c:14: for ( l = 0; l < 4; l++) {
	inc	r7
	cjne	r7,#0x04,00303$
00303$:
	jnc	00304$
	ljmp	00159$
00304$:
	ljmp	00191$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
