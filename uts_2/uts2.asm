;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (MINGW64)
;--------------------------------------------------------
	.module uts2
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
_main_digit_1_2:
	.ds 8
_main_angka_1_2:
	.ds 20
_main_i_1_2:
	.ds 2
_main_k_1_2:
	.ds 2
_main_t_1_2:
	.ds 2
_main_state_1_2:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
_main_sloc0_1_0:
	.ds 1
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
;digit                     Allocated with name '_main_digit_1_2'
;angka                     Allocated with name '_main_angka_1_2'
;i                         Allocated with name '_main_i_1_2'
;j                         Allocated to registers r6 r7 
;k                         Allocated with name '_main_k_1_2'
;t                         Allocated with name '_main_t_1_2'
;state                     Allocated with name '_main_state_1_2'
;------------------------------------------------------------
;	uts2.c:20: void main(void)
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
;	uts2.c:22: unsigned int digit[4]    = {0,0,0,0}; // mulai stopwatch 00.00
	clr	a
	mov	(_main_digit_1_2 + 0),a
	mov	(_main_digit_1_2 + 1),a
	mov	((_main_digit_1_2 + 0x0002) + 0),a
	mov	((_main_digit_1_2 + 0x0002) + 1),a
	mov	((_main_digit_1_2 + 0x0004) + 0),a
	mov	((_main_digit_1_2 + 0x0004) + 1),a
	mov	((_main_digit_1_2 + 0x0006) + 0),a
	mov	((_main_digit_1_2 + 0x0006) + 1),a
;	uts2.c:23: unsigned int angka[10] = {0x0C0,0x0F9,0x0A4,0x0B0,0x99,0x92,0x82,0x0F8,0x80,0x90}; //data angka
	mov	(_main_angka_1_2 + 0),#0xc0
;	1-genFromRTrack replaced	mov	(_main_angka_1_2 + 1),#0x00
	mov	(_main_angka_1_2 + 1),a
	mov	((_main_angka_1_2 + 0x0002) + 0),#0xf9
;	1-genFromRTrack replaced	mov	((_main_angka_1_2 + 0x0002) + 1),#0x00
	mov	((_main_angka_1_2 + 0x0002) + 1),a
	mov	((_main_angka_1_2 + 0x0004) + 0),#0xa4
;	1-genFromRTrack replaced	mov	((_main_angka_1_2 + 0x0004) + 1),#0x00
	mov	((_main_angka_1_2 + 0x0004) + 1),a
	mov	((_main_angka_1_2 + 0x0006) + 0),#0xb0
;	1-genFromRTrack replaced	mov	((_main_angka_1_2 + 0x0006) + 1),#0x00
	mov	((_main_angka_1_2 + 0x0006) + 1),a
	mov	((_main_angka_1_2 + 0x0008) + 0),#0x99
;	1-genFromRTrack replaced	mov	((_main_angka_1_2 + 0x0008) + 1),#0x00
	mov	((_main_angka_1_2 + 0x0008) + 1),a
	mov	((_main_angka_1_2 + 0x000a) + 0),#0x92
;	1-genFromRTrack replaced	mov	((_main_angka_1_2 + 0x000a) + 1),#0x00
	mov	((_main_angka_1_2 + 0x000a) + 1),a
	mov	((_main_angka_1_2 + 0x000c) + 0),#0x82
;	1-genFromRTrack replaced	mov	((_main_angka_1_2 + 0x000c) + 1),#0x00
	mov	((_main_angka_1_2 + 0x000c) + 1),a
	mov	((_main_angka_1_2 + 0x000e) + 0),#0xf8
;	1-genFromRTrack replaced	mov	((_main_angka_1_2 + 0x000e) + 1),#0x00
	mov	((_main_angka_1_2 + 0x000e) + 1),a
	mov	((_main_angka_1_2 + 0x0010) + 0),#0x80
;	1-genFromRTrack replaced	mov	((_main_angka_1_2 + 0x0010) + 1),#0x00
	mov	((_main_angka_1_2 + 0x0010) + 1),a
	mov	((_main_angka_1_2 + 0x0012) + 0),#0x90
;	1-genFromRTrack replaced	mov	((_main_angka_1_2 + 0x0012) + 1),#0x00
	mov	((_main_angka_1_2 + 0x0012) + 1),a
;	uts2.c:29: unsigned int state = 0; // 0 = stop/ belum mulai perhitungan
	mov	_main_state_1_2,a
	mov	(_main_state_1_2 + 1),a
;	uts2.c:32: saklar0 = 1;
	setb	_P2_0
;	uts2.c:33: saklar1 = 1;
	setb	_P2_1
;	uts2.c:34: P0_7 = 1; // menyalakan Seven Segment
	setb	_P0_7
;	uts2.c:35: while(1)
00119$:
;	uts2.c:39: if(~saklar0 & state==0){
	mov	c,_P2_0
	clr	a
	rlc	a
	mov	r5,#0x00
	cpl	a
	mov	r4,a
	mov	a,r5
	cpl	a
	mov	r5,a
	mov	a,_main_state_1_2
	orl	a,(_main_state_1_2 + 1)
	cjne	a,#0x01,00174$
00174$:
	mov  _main_sloc0_1_0,c
	clr	a
	rlc	a
	mov	r2,a
	mov	r3,#0x00
	anl	ar4,a
	mov	a,r3
	anl	ar5,a
	mov	a,r4
	orl	a,r5
	jz	00102$
;	uts2.c:40: digit[0]    = 0; // mulai stopwatch 00.00 
	clr	a
	mov	(_main_digit_1_2 + 0),a
	mov	(_main_digit_1_2 + 1),a
;	uts2.c:41: digit[1]    = 0; // mulai stopwatch 00.00 
	mov	((_main_digit_1_2 + 0x0002) + 0),a
	mov	((_main_digit_1_2 + 0x0002) + 1),a
;	uts2.c:42: digit[2]    = 0; // mulai stopwatch 00.00 
	mov	((_main_digit_1_2 + 0x0004) + 0),a
	mov	((_main_digit_1_2 + 0x0004) + 1),a
;	uts2.c:43: digit[3]    = 0; // mulai stopwatch 00.00 
	mov	((_main_digit_1_2 + 0x0006) + 0),a
	mov	((_main_digit_1_2 + 0x0006) + 1),a
;	uts2.c:44: state = 1;
	mov	_main_state_1_2,#0x01
;	1-genFromRTrack replaced	mov	(_main_state_1_2 + 1),#0x00
	mov	(_main_state_1_2 + 1),a
00102$:
;	uts2.c:47: if(~saklar1 & state == 1){
	mov	c,_P2_1
	clr	a
	rlc	a
	mov	r5,#0x00
	cpl	a
	mov	r4,a
	mov	a,r5
	cpl	a
	mov	r5,a
	mov	a,#0x01
	cjne	a,_main_state_1_2,00176$
	dec	a
	cjne	a,(_main_state_1_2 + 1),00176$
	mov	a,#0x01
	sjmp	00177$
00176$:
	clr	a
00177$:
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	a,r3
	anl	ar4,a
	mov	a,r2
	anl	ar5,a
	mov	a,r4
	orl	a,r5
	jz	00104$
;	uts2.c:48: state = 0;
	clr	a
	mov	_main_state_1_2,a
	mov	(_main_state_1_2 + 1),a
00104$:
;	uts2.c:52: k = 0;
	clr	a
	mov	_main_k_1_2,a
	mov	(_main_k_1_2 + 1),a
;	uts2.c:53: for(i= 1; i>=0 ; i--){
	mov	_main_i_1_2,#0x01
;	1-genFromRTrack replaced	mov	(_main_i_1_2 + 1),#0x00
	mov	(_main_i_1_2 + 1),a
;	uts2.c:54: for(j = 1; j>=0; j--){
00134$:
	mov	r6,#0x01
	mov	r7,#0x00
	mov	r4,_main_k_1_2
	mov	r5,(_main_k_1_2 + 1)
00124$:
;	uts2.c:55: A1 = i; A0 = j;
	mov	a,_main_i_1_2
	orl	a,(_main_i_1_2 + 1)
	add	a,#0xff
	mov	_P3_4,c
	mov	a,r6
	orl	a,r7
	add	a,#0xff
	mov	_P3_3,c
;	uts2.c:56: P1 = angka[digit[k]];
	mov	ar2,r4
	mov	a,r5
	xch	a,r2
	add	a,acc
	xch	a,r2
	rlc	a
	mov	a,r2
	add	a,#_main_digit_1_2
	mov	r1,a
	mov	ar2,@r1
	inc	r1
	mov	ar3,@r1
	dec	r1
	mov	a,r3
	xch	a,r2
	add	a,acc
	xch	a,r2
	rlc	a
	mov	a,r2
	add	a,#_main_angka_1_2
	mov	r1,a
	mov	ar2,@r1
	inc	r1
	mov	ar3,@r1
	dec	r1
	mov	_P1,r2
;	uts2.c:57: k++;
	inc	r4
	cjne	r4,#0x00,00179$
	inc	r5
00179$:
;	uts2.c:59: for(t = 0; t<DELAY;t++){
	mov	_main_t_1_2,#0x0a
	mov	(_main_t_1_2 + 1),#0x00
00123$:
	mov	a,_main_t_1_2
	add	a,#0xff
	mov	r2,a
	mov	a,(_main_t_1_2 + 1)
	addc	a,#0xff
	mov	r3,a
	mov	_main_t_1_2,r2
	mov	(_main_t_1_2 + 1),r3
	mov	a,r2
	orl	a,r3
	jnz	00123$
;	uts2.c:62: P1 = 0xFF; // memadamkan sevent segment sebelum berganti digit.
	mov	_P1,#0xff
;	uts2.c:54: for(j = 1; j>=0; j--){
	dec	r6
	cjne	r6,#0xff,00181$
	dec	r7
00181$:
	mov	a,r7
	jnb	acc.7,00124$
;	uts2.c:53: for(i= 1; i>=0 ; i--){
	mov	_main_k_1_2,r4
	mov	(_main_k_1_2 + 1),r5
	dec	_main_i_1_2
	mov	a,#0xff
	cjne	a,_main_i_1_2,00183$
	dec	(_main_i_1_2 + 1)
00183$:
	mov	a,(_main_i_1_2 + 1)
	jnb	acc.7,00134$
;	uts2.c:67: if(state == 1){
	mov	a,#0x01
	cjne	a,_main_state_1_2,00185$
	dec	a
	cjne	a,(_main_state_1_2 + 1),00185$
	sjmp	00186$
00185$:
	ljmp	00119$
00186$:
;	uts2.c:68: digit[3]++;
	mov	r6,((_main_digit_1_2 + 0x0006) + 0)
	mov	r7,((_main_digit_1_2 + 0x0006) + 1)
	inc	r6
	cjne	r6,#0x00,00187$
	inc	r7
00187$:
	mov	((_main_digit_1_2 + 0x0006) + 0),r6
	mov	((_main_digit_1_2 + 0x0006) + 1),r7
;	uts2.c:69: if(digit[3] >= 10){
	clr	c
	mov	a,r6
	subb	a,#0x0a
	mov	a,r7
	subb	a,#0x00
	jc	00109$
;	uts2.c:70: digit[3] = 0;
	clr	a
	mov	((_main_digit_1_2 + 0x0006) + 0),a
	mov	((_main_digit_1_2 + 0x0006) + 1),a
;	uts2.c:71: digit[2]++;
	mov	r6,((_main_digit_1_2 + 0x0004) + 0)
	mov	r7,((_main_digit_1_2 + 0x0004) + 1)
	inc	r6
	cjne	r6,#0x00,00189$
	inc	r7
00189$:
	mov	((_main_digit_1_2 + 0x0004) + 0),r6
	mov	((_main_digit_1_2 + 0x0004) + 1),r7
00109$:
;	uts2.c:73: if(digit[2] >= 6){
	clr	c
	mov	a,(_main_digit_1_2 + 0x0004)
	subb	a,#0x06
	mov	a,((_main_digit_1_2 + 0x0004) + 1)
	subb	a,#0x00
	jc	00111$
;	uts2.c:74: digit[2] = 0;
	clr	a
	mov	((_main_digit_1_2 + 0x0004) + 0),a
	mov	((_main_digit_1_2 + 0x0004) + 1),a
;	uts2.c:75: digit[1]++;
	mov	r6,((_main_digit_1_2 + 0x0002) + 0)
	mov	r7,((_main_digit_1_2 + 0x0002) + 1)
	inc	r6
	cjne	r6,#0x00,00191$
	inc	r7
00191$:
	mov	((_main_digit_1_2 + 0x0002) + 0),r6
	mov	((_main_digit_1_2 + 0x0002) + 1),r7
00111$:
;	uts2.c:77: if(digit[1]>=10){
	clr	c
	mov	a,(_main_digit_1_2 + 0x0002)
	subb	a,#0x0a
	mov	a,((_main_digit_1_2 + 0x0002) + 1)
	subb	a,#0x00
	jc	00113$
;	uts2.c:78: digit[1]=0;
	clr	a
	mov	((_main_digit_1_2 + 0x0002) + 0),a
	mov	((_main_digit_1_2 + 0x0002) + 1),a
;	uts2.c:79: digit[0]++;
	mov	r6,(_main_digit_1_2 + 0)
	mov	r7,(_main_digit_1_2 + 1)
	inc	r6
	cjne	r6,#0x00,00193$
	inc	r7
00193$:
	mov	(_main_digit_1_2 + 0),r6
	mov	(_main_digit_1_2 + 1),r7
00113$:
;	uts2.c:81: if(digit[0]*10 + digit[1] == 99){
	mov	__mulint_PARM_2,(_main_digit_1_2 + 0)
	mov	(__mulint_PARM_2 + 1),(_main_digit_1_2 + 1)
	mov	dptr,#0x000a
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	a,(_main_digit_1_2 + 0x0002)
	add	a,r6
	mov	r6,a
	mov	a,((_main_digit_1_2 + 0x0002) + 1)
	addc	a,r7
	mov	r7,a
	cjne	r6,#0x63,00194$
	cjne	r7,#0x00,00194$
	sjmp	00195$
00194$:
	ljmp	00119$
00195$:
;	uts2.c:82: digit[0] = 0;
	clr	a
	mov	(_main_digit_1_2 + 0),a
	mov	(_main_digit_1_2 + 1),a
;	uts2.c:83: digit[1] = 0;
	mov	((_main_digit_1_2 + 0x0002) + 0),a
	mov	((_main_digit_1_2 + 0x0002) + 1),a
	ljmp	00119$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
