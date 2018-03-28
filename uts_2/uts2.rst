                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module uts2
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _CY
                                     13 	.globl _AC
                                     14 	.globl _F0
                                     15 	.globl _RS1
                                     16 	.globl _RS0
                                     17 	.globl _OV
                                     18 	.globl _F1
                                     19 	.globl _P
                                     20 	.globl _PS
                                     21 	.globl _PT1
                                     22 	.globl _PX1
                                     23 	.globl _PT0
                                     24 	.globl _PX0
                                     25 	.globl _RD
                                     26 	.globl _WR
                                     27 	.globl _T1
                                     28 	.globl _T0
                                     29 	.globl _INT1
                                     30 	.globl _INT0
                                     31 	.globl _TXD
                                     32 	.globl _RXD
                                     33 	.globl _P3_7
                                     34 	.globl _P3_6
                                     35 	.globl _P3_5
                                     36 	.globl _P3_4
                                     37 	.globl _P3_3
                                     38 	.globl _P3_2
                                     39 	.globl _P3_1
                                     40 	.globl _P3_0
                                     41 	.globl _EA
                                     42 	.globl _ES
                                     43 	.globl _ET1
                                     44 	.globl _EX1
                                     45 	.globl _ET0
                                     46 	.globl _EX0
                                     47 	.globl _P2_7
                                     48 	.globl _P2_6
                                     49 	.globl _P2_5
                                     50 	.globl _P2_4
                                     51 	.globl _P2_3
                                     52 	.globl _P2_2
                                     53 	.globl _P2_1
                                     54 	.globl _P2_0
                                     55 	.globl _SM0
                                     56 	.globl _SM1
                                     57 	.globl _SM2
                                     58 	.globl _REN
                                     59 	.globl _TB8
                                     60 	.globl _RB8
                                     61 	.globl _TI
                                     62 	.globl _RI
                                     63 	.globl _P1_7
                                     64 	.globl _P1_6
                                     65 	.globl _P1_5
                                     66 	.globl _P1_4
                                     67 	.globl _P1_3
                                     68 	.globl _P1_2
                                     69 	.globl _P1_1
                                     70 	.globl _P1_0
                                     71 	.globl _TF1
                                     72 	.globl _TR1
                                     73 	.globl _TF0
                                     74 	.globl _TR0
                                     75 	.globl _IE1
                                     76 	.globl _IT1
                                     77 	.globl _IE0
                                     78 	.globl _IT0
                                     79 	.globl _P0_7
                                     80 	.globl _P0_6
                                     81 	.globl _P0_5
                                     82 	.globl _P0_4
                                     83 	.globl _P0_3
                                     84 	.globl _P0_2
                                     85 	.globl _P0_1
                                     86 	.globl _P0_0
                                     87 	.globl _B
                                     88 	.globl _ACC
                                     89 	.globl _PSW
                                     90 	.globl _IP
                                     91 	.globl _P3
                                     92 	.globl _IE
                                     93 	.globl _P2
                                     94 	.globl _SBUF
                                     95 	.globl _SCON
                                     96 	.globl _P1
                                     97 	.globl _TH1
                                     98 	.globl _TH0
                                     99 	.globl _TL1
                                    100 	.globl _TL0
                                    101 	.globl _TMOD
                                    102 	.globl _TCON
                                    103 	.globl _PCON
                                    104 	.globl _DPH
                                    105 	.globl _DPL
                                    106 	.globl _SP
                                    107 	.globl _P0
                                    108 ;--------------------------------------------------------
                                    109 ; special function registers
                                    110 ;--------------------------------------------------------
                                    111 	.area RSEG    (ABS,DATA)
      000000                        112 	.org 0x0000
                           000080   113 _P0	=	0x0080
                           000081   114 _SP	=	0x0081
                           000082   115 _DPL	=	0x0082
                           000083   116 _DPH	=	0x0083
                           000087   117 _PCON	=	0x0087
                           000088   118 _TCON	=	0x0088
                           000089   119 _TMOD	=	0x0089
                           00008A   120 _TL0	=	0x008a
                           00008B   121 _TL1	=	0x008b
                           00008C   122 _TH0	=	0x008c
                           00008D   123 _TH1	=	0x008d
                           000090   124 _P1	=	0x0090
                           000098   125 _SCON	=	0x0098
                           000099   126 _SBUF	=	0x0099
                           0000A0   127 _P2	=	0x00a0
                           0000A8   128 _IE	=	0x00a8
                           0000B0   129 _P3	=	0x00b0
                           0000B8   130 _IP	=	0x00b8
                           0000D0   131 _PSW	=	0x00d0
                           0000E0   132 _ACC	=	0x00e0
                           0000F0   133 _B	=	0x00f0
                                    134 ;--------------------------------------------------------
                                    135 ; special function bits
                                    136 ;--------------------------------------------------------
                                    137 	.area RSEG    (ABS,DATA)
      000000                        138 	.org 0x0000
                           000080   139 _P0_0	=	0x0080
                           000081   140 _P0_1	=	0x0081
                           000082   141 _P0_2	=	0x0082
                           000083   142 _P0_3	=	0x0083
                           000084   143 _P0_4	=	0x0084
                           000085   144 _P0_5	=	0x0085
                           000086   145 _P0_6	=	0x0086
                           000087   146 _P0_7	=	0x0087
                           000088   147 _IT0	=	0x0088
                           000089   148 _IE0	=	0x0089
                           00008A   149 _IT1	=	0x008a
                           00008B   150 _IE1	=	0x008b
                           00008C   151 _TR0	=	0x008c
                           00008D   152 _TF0	=	0x008d
                           00008E   153 _TR1	=	0x008e
                           00008F   154 _TF1	=	0x008f
                           000090   155 _P1_0	=	0x0090
                           000091   156 _P1_1	=	0x0091
                           000092   157 _P1_2	=	0x0092
                           000093   158 _P1_3	=	0x0093
                           000094   159 _P1_4	=	0x0094
                           000095   160 _P1_5	=	0x0095
                           000096   161 _P1_6	=	0x0096
                           000097   162 _P1_7	=	0x0097
                           000098   163 _RI	=	0x0098
                           000099   164 _TI	=	0x0099
                           00009A   165 _RB8	=	0x009a
                           00009B   166 _TB8	=	0x009b
                           00009C   167 _REN	=	0x009c
                           00009D   168 _SM2	=	0x009d
                           00009E   169 _SM1	=	0x009e
                           00009F   170 _SM0	=	0x009f
                           0000A0   171 _P2_0	=	0x00a0
                           0000A1   172 _P2_1	=	0x00a1
                           0000A2   173 _P2_2	=	0x00a2
                           0000A3   174 _P2_3	=	0x00a3
                           0000A4   175 _P2_4	=	0x00a4
                           0000A5   176 _P2_5	=	0x00a5
                           0000A6   177 _P2_6	=	0x00a6
                           0000A7   178 _P2_7	=	0x00a7
                           0000A8   179 _EX0	=	0x00a8
                           0000A9   180 _ET0	=	0x00a9
                           0000AA   181 _EX1	=	0x00aa
                           0000AB   182 _ET1	=	0x00ab
                           0000AC   183 _ES	=	0x00ac
                           0000AF   184 _EA	=	0x00af
                           0000B0   185 _P3_0	=	0x00b0
                           0000B1   186 _P3_1	=	0x00b1
                           0000B2   187 _P3_2	=	0x00b2
                           0000B3   188 _P3_3	=	0x00b3
                           0000B4   189 _P3_4	=	0x00b4
                           0000B5   190 _P3_5	=	0x00b5
                           0000B6   191 _P3_6	=	0x00b6
                           0000B7   192 _P3_7	=	0x00b7
                           0000B0   193 _RXD	=	0x00b0
                           0000B1   194 _TXD	=	0x00b1
                           0000B2   195 _INT0	=	0x00b2
                           0000B3   196 _INT1	=	0x00b3
                           0000B4   197 _T0	=	0x00b4
                           0000B5   198 _T1	=	0x00b5
                           0000B6   199 _WR	=	0x00b6
                           0000B7   200 _RD	=	0x00b7
                           0000B8   201 _PX0	=	0x00b8
                           0000B9   202 _PT0	=	0x00b9
                           0000BA   203 _PX1	=	0x00ba
                           0000BB   204 _PT1	=	0x00bb
                           0000BC   205 _PS	=	0x00bc
                           0000D0   206 _P	=	0x00d0
                           0000D1   207 _F1	=	0x00d1
                           0000D2   208 _OV	=	0x00d2
                           0000D3   209 _RS0	=	0x00d3
                           0000D4   210 _RS1	=	0x00d4
                           0000D5   211 _F0	=	0x00d5
                           0000D6   212 _AC	=	0x00d6
                           0000D7   213 _CY	=	0x00d7
                                    214 ;--------------------------------------------------------
                                    215 ; overlayable register banks
                                    216 ;--------------------------------------------------------
                                    217 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        218 	.ds 8
                                    219 ;--------------------------------------------------------
                                    220 ; internal ram data
                                    221 ;--------------------------------------------------------
                                    222 	.area DSEG    (DATA)
      000021                        223 _main_digit_1_2:
      000021                        224 	.ds 8
      000029                        225 _main_angka_1_2:
      000029                        226 	.ds 20
      00003D                        227 _main_i_1_2:
      00003D                        228 	.ds 2
      00003F                        229 _main_k_1_2:
      00003F                        230 	.ds 2
      000041                        231 _main_t_1_2:
      000041                        232 	.ds 2
      000043                        233 _main_state_1_2:
      000043                        234 	.ds 2
                                    235 ;--------------------------------------------------------
                                    236 ; overlayable items in internal ram 
                                    237 ;--------------------------------------------------------
                                    238 ;--------------------------------------------------------
                                    239 ; Stack segment in internal ram 
                                    240 ;--------------------------------------------------------
                                    241 	.area	SSEG
      000045                        242 __start__stack:
      000045                        243 	.ds	1
                                    244 
                                    245 ;--------------------------------------------------------
                                    246 ; indirectly addressable internal ram data
                                    247 ;--------------------------------------------------------
                                    248 	.area ISEG    (DATA)
                                    249 ;--------------------------------------------------------
                                    250 ; absolute internal ram data
                                    251 ;--------------------------------------------------------
                                    252 	.area IABS    (ABS,DATA)
                                    253 	.area IABS    (ABS,DATA)
                                    254 ;--------------------------------------------------------
                                    255 ; bit data
                                    256 ;--------------------------------------------------------
                                    257 	.area BSEG    (BIT)
      000000                        258 _main_sloc0_1_0:
      000000                        259 	.ds 1
                                    260 ;--------------------------------------------------------
                                    261 ; paged external ram data
                                    262 ;--------------------------------------------------------
                                    263 	.area PSEG    (PAG,XDATA)
                                    264 ;--------------------------------------------------------
                                    265 ; external ram data
                                    266 ;--------------------------------------------------------
                                    267 	.area XSEG    (XDATA)
                                    268 ;--------------------------------------------------------
                                    269 ; absolute external ram data
                                    270 ;--------------------------------------------------------
                                    271 	.area XABS    (ABS,XDATA)
                                    272 ;--------------------------------------------------------
                                    273 ; external initialized ram data
                                    274 ;--------------------------------------------------------
                                    275 	.area XISEG   (XDATA)
                                    276 	.area HOME    (CODE)
                                    277 	.area GSINIT0 (CODE)
                                    278 	.area GSINIT1 (CODE)
                                    279 	.area GSINIT2 (CODE)
                                    280 	.area GSINIT3 (CODE)
                                    281 	.area GSINIT4 (CODE)
                                    282 	.area GSINIT5 (CODE)
                                    283 	.area GSINIT  (CODE)
                                    284 	.area GSFINAL (CODE)
                                    285 	.area CSEG    (CODE)
                                    286 ;--------------------------------------------------------
                                    287 ; interrupt vector 
                                    288 ;--------------------------------------------------------
                                    289 	.area HOME    (CODE)
      000000                        290 __interrupt_vect:
      000000 02 00 06         [24]  291 	ljmp	__sdcc_gsinit_startup
                                    292 ;--------------------------------------------------------
                                    293 ; global & static initialisations
                                    294 ;--------------------------------------------------------
                                    295 	.area HOME    (CODE)
                                    296 	.area GSINIT  (CODE)
                                    297 	.area GSFINAL (CODE)
                                    298 	.area GSINIT  (CODE)
                                    299 	.globl __sdcc_gsinit_startup
                                    300 	.globl __sdcc_program_startup
                                    301 	.globl __start__stack
                                    302 	.globl __mcs51_genXINIT
                                    303 	.globl __mcs51_genXRAMCLEAR
                                    304 	.globl __mcs51_genRAMCLEAR
                                    305 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  306 	ljmp	__sdcc_program_startup
                                    307 ;--------------------------------------------------------
                                    308 ; Home
                                    309 ;--------------------------------------------------------
                                    310 	.area HOME    (CODE)
                                    311 	.area HOME    (CODE)
      000003                        312 __sdcc_program_startup:
      000003 02 00 62         [24]  313 	ljmp	_main
                                    314 ;	return from main will return to caller
                                    315 ;--------------------------------------------------------
                                    316 ; code
                                    317 ;--------------------------------------------------------
                                    318 	.area CSEG    (CODE)
                                    319 ;------------------------------------------------------------
                                    320 ;Allocation info for local variables in function 'main'
                                    321 ;------------------------------------------------------------
                                    322 ;digit                     Allocated with name '_main_digit_1_2'
                                    323 ;angka                     Allocated with name '_main_angka_1_2'
                                    324 ;i                         Allocated with name '_main_i_1_2'
                                    325 ;j                         Allocated to registers r6 r7 
                                    326 ;k                         Allocated with name '_main_k_1_2'
                                    327 ;t                         Allocated with name '_main_t_1_2'
                                    328 ;state                     Allocated with name '_main_state_1_2'
                                    329 ;------------------------------------------------------------
                                    330 ;	uts2.c:20: void main(void)
                                    331 ;	-----------------------------------------
                                    332 ;	 function main
                                    333 ;	-----------------------------------------
      000062                        334 _main:
                           000007   335 	ar7 = 0x07
                           000006   336 	ar6 = 0x06
                           000005   337 	ar5 = 0x05
                           000004   338 	ar4 = 0x04
                           000003   339 	ar3 = 0x03
                           000002   340 	ar2 = 0x02
                           000001   341 	ar1 = 0x01
                           000000   342 	ar0 = 0x00
                                    343 ;	uts2.c:22: unsigned int digit[4]    = {0,0,0,0}; // mulai stopwatch 00.00
      000062 E4               [12]  344 	clr	a
      000063 F5 21            [12]  345 	mov	(_main_digit_1_2 + 0),a
      000065 F5 22            [12]  346 	mov	(_main_digit_1_2 + 1),a
      000067 F5 23            [12]  347 	mov	((_main_digit_1_2 + 0x0002) + 0),a
      000069 F5 24            [12]  348 	mov	((_main_digit_1_2 + 0x0002) + 1),a
      00006B F5 25            [12]  349 	mov	((_main_digit_1_2 + 0x0004) + 0),a
      00006D F5 26            [12]  350 	mov	((_main_digit_1_2 + 0x0004) + 1),a
      00006F F5 27            [12]  351 	mov	((_main_digit_1_2 + 0x0006) + 0),a
      000071 F5 28            [12]  352 	mov	((_main_digit_1_2 + 0x0006) + 1),a
                                    353 ;	uts2.c:23: unsigned int angka[10] = {0x0C0,0x0F9,0x0A4,0x0B0,0x99,0x92,0x82,0x0F8,0x80,0x90}; //data angka
      000073 75 29 C0         [24]  354 	mov	(_main_angka_1_2 + 0),#0xc0
                                    355 ;	1-genFromRTrack replaced	mov	(_main_angka_1_2 + 1),#0x00
      000076 F5 2A            [12]  356 	mov	(_main_angka_1_2 + 1),a
      000078 75 2B F9         [24]  357 	mov	((_main_angka_1_2 + 0x0002) + 0),#0xf9
                                    358 ;	1-genFromRTrack replaced	mov	((_main_angka_1_2 + 0x0002) + 1),#0x00
      00007B F5 2C            [12]  359 	mov	((_main_angka_1_2 + 0x0002) + 1),a
      00007D 75 2D A4         [24]  360 	mov	((_main_angka_1_2 + 0x0004) + 0),#0xa4
                                    361 ;	1-genFromRTrack replaced	mov	((_main_angka_1_2 + 0x0004) + 1),#0x00
      000080 F5 2E            [12]  362 	mov	((_main_angka_1_2 + 0x0004) + 1),a
      000082 75 2F B0         [24]  363 	mov	((_main_angka_1_2 + 0x0006) + 0),#0xb0
                                    364 ;	1-genFromRTrack replaced	mov	((_main_angka_1_2 + 0x0006) + 1),#0x00
      000085 F5 30            [12]  365 	mov	((_main_angka_1_2 + 0x0006) + 1),a
      000087 75 31 99         [24]  366 	mov	((_main_angka_1_2 + 0x0008) + 0),#0x99
                                    367 ;	1-genFromRTrack replaced	mov	((_main_angka_1_2 + 0x0008) + 1),#0x00
      00008A F5 32            [12]  368 	mov	((_main_angka_1_2 + 0x0008) + 1),a
      00008C 75 33 92         [24]  369 	mov	((_main_angka_1_2 + 0x000a) + 0),#0x92
                                    370 ;	1-genFromRTrack replaced	mov	((_main_angka_1_2 + 0x000a) + 1),#0x00
      00008F F5 34            [12]  371 	mov	((_main_angka_1_2 + 0x000a) + 1),a
      000091 75 35 82         [24]  372 	mov	((_main_angka_1_2 + 0x000c) + 0),#0x82
                                    373 ;	1-genFromRTrack replaced	mov	((_main_angka_1_2 + 0x000c) + 1),#0x00
      000094 F5 36            [12]  374 	mov	((_main_angka_1_2 + 0x000c) + 1),a
      000096 75 37 F8         [24]  375 	mov	((_main_angka_1_2 + 0x000e) + 0),#0xf8
                                    376 ;	1-genFromRTrack replaced	mov	((_main_angka_1_2 + 0x000e) + 1),#0x00
      000099 F5 38            [12]  377 	mov	((_main_angka_1_2 + 0x000e) + 1),a
      00009B 75 39 80         [24]  378 	mov	((_main_angka_1_2 + 0x0010) + 0),#0x80
                                    379 ;	1-genFromRTrack replaced	mov	((_main_angka_1_2 + 0x0010) + 1),#0x00
      00009E F5 3A            [12]  380 	mov	((_main_angka_1_2 + 0x0010) + 1),a
      0000A0 75 3B 90         [24]  381 	mov	((_main_angka_1_2 + 0x0012) + 0),#0x90
                                    382 ;	1-genFromRTrack replaced	mov	((_main_angka_1_2 + 0x0012) + 1),#0x00
      0000A3 F5 3C            [12]  383 	mov	((_main_angka_1_2 + 0x0012) + 1),a
                                    384 ;	uts2.c:29: unsigned int state = 0; // 0 = stop/ belum mulai perhitungan
      0000A5 F5 43            [12]  385 	mov	_main_state_1_2,a
      0000A7 F5 44            [12]  386 	mov	(_main_state_1_2 + 1),a
                                    387 ;	uts2.c:32: saklar0 = 1;
      0000A9 D2 A0            [12]  388 	setb	_P2_0
                                    389 ;	uts2.c:33: saklar1 = 1;
      0000AB D2 A1            [12]  390 	setb	_P2_1
                                    391 ;	uts2.c:34: P0_7 = 1; // menyalakan Seven Segment
      0000AD D2 87            [12]  392 	setb	_P0_7
                                    393 ;	uts2.c:35: while(1)
      0000AF                        394 00119$:
                                    395 ;	uts2.c:39: if(~saklar0 & state==0){
      0000AF A2 A0            [12]  396 	mov	c,_P2_0
      0000B1 E4               [12]  397 	clr	a
      0000B2 33               [12]  398 	rlc	a
      0000B3 7D 00            [12]  399 	mov	r5,#0x00
      0000B5 F4               [12]  400 	cpl	a
      0000B6 FC               [12]  401 	mov	r4,a
      0000B7 ED               [12]  402 	mov	a,r5
      0000B8 F4               [12]  403 	cpl	a
      0000B9 FD               [12]  404 	mov	r5,a
      0000BA E5 43            [12]  405 	mov	a,_main_state_1_2
      0000BC 45 44            [12]  406 	orl	a,(_main_state_1_2 + 1)
      0000BE B4 01 00         [24]  407 	cjne	a,#0x01,00174$
      0000C1                        408 00174$:
      0000C1 92 00            [24]  409 	mov  _main_sloc0_1_0,c
      0000C3 E4               [12]  410 	clr	a
      0000C4 33               [12]  411 	rlc	a
      0000C5 FA               [12]  412 	mov	r2,a
      0000C6 7B 00            [12]  413 	mov	r3,#0x00
      0000C8 52 04            [12]  414 	anl	ar4,a
      0000CA EB               [12]  415 	mov	a,r3
      0000CB 52 05            [12]  416 	anl	ar5,a
      0000CD EC               [12]  417 	mov	a,r4
      0000CE 4D               [12]  418 	orl	a,r5
      0000CF 60 16            [24]  419 	jz	00102$
                                    420 ;	uts2.c:40: digit[0]    = 0; // mulai stopwatch 00.00 
      0000D1 E4               [12]  421 	clr	a
      0000D2 F5 21            [12]  422 	mov	(_main_digit_1_2 + 0),a
      0000D4 F5 22            [12]  423 	mov	(_main_digit_1_2 + 1),a
                                    424 ;	uts2.c:41: digit[1]    = 0; // mulai stopwatch 00.00 
      0000D6 F5 23            [12]  425 	mov	((_main_digit_1_2 + 0x0002) + 0),a
      0000D8 F5 24            [12]  426 	mov	((_main_digit_1_2 + 0x0002) + 1),a
                                    427 ;	uts2.c:42: digit[2]    = 0; // mulai stopwatch 00.00 
      0000DA F5 25            [12]  428 	mov	((_main_digit_1_2 + 0x0004) + 0),a
      0000DC F5 26            [12]  429 	mov	((_main_digit_1_2 + 0x0004) + 1),a
                                    430 ;	uts2.c:43: digit[3]    = 0; // mulai stopwatch 00.00 
      0000DE F5 27            [12]  431 	mov	((_main_digit_1_2 + 0x0006) + 0),a
      0000E0 F5 28            [12]  432 	mov	((_main_digit_1_2 + 0x0006) + 1),a
                                    433 ;	uts2.c:44: state = 1;
      0000E2 75 43 01         [24]  434 	mov	_main_state_1_2,#0x01
                                    435 ;	1-genFromRTrack replaced	mov	(_main_state_1_2 + 1),#0x00
      0000E5 F5 44            [12]  436 	mov	(_main_state_1_2 + 1),a
      0000E7                        437 00102$:
                                    438 ;	uts2.c:47: if(~saklar1 & state == 1){
      0000E7 A2 A1            [12]  439 	mov	c,_P2_1
      0000E9 E4               [12]  440 	clr	a
      0000EA 33               [12]  441 	rlc	a
      0000EB 7D 00            [12]  442 	mov	r5,#0x00
      0000ED F4               [12]  443 	cpl	a
      0000EE FC               [12]  444 	mov	r4,a
      0000EF ED               [12]  445 	mov	a,r5
      0000F0 F4               [12]  446 	cpl	a
      0000F1 FD               [12]  447 	mov	r5,a
      0000F2 74 01            [12]  448 	mov	a,#0x01
      0000F4 B5 43 08         [24]  449 	cjne	a,_main_state_1_2,00176$
      0000F7 14               [12]  450 	dec	a
      0000F8 B5 44 04         [24]  451 	cjne	a,(_main_state_1_2 + 1),00176$
      0000FB 74 01            [12]  452 	mov	a,#0x01
      0000FD 80 01            [24]  453 	sjmp	00177$
      0000FF                        454 00176$:
      0000FF E4               [12]  455 	clr	a
      000100                        456 00177$:
      000100 FB               [12]  457 	mov	r3,a
      000101 33               [12]  458 	rlc	a
      000102 95 E0            [12]  459 	subb	a,acc
      000104 FA               [12]  460 	mov	r2,a
      000105 EB               [12]  461 	mov	a,r3
      000106 52 04            [12]  462 	anl	ar4,a
      000108 EA               [12]  463 	mov	a,r2
      000109 52 05            [12]  464 	anl	ar5,a
      00010B EC               [12]  465 	mov	a,r4
      00010C 4D               [12]  466 	orl	a,r5
      00010D 60 05            [24]  467 	jz	00104$
                                    468 ;	uts2.c:48: state = 0;
      00010F E4               [12]  469 	clr	a
      000110 F5 43            [12]  470 	mov	_main_state_1_2,a
      000112 F5 44            [12]  471 	mov	(_main_state_1_2 + 1),a
      000114                        472 00104$:
                                    473 ;	uts2.c:52: k = 0;
      000114 E4               [12]  474 	clr	a
      000115 F5 3F            [12]  475 	mov	_main_k_1_2,a
      000117 F5 40            [12]  476 	mov	(_main_k_1_2 + 1),a
                                    477 ;	uts2.c:53: for(i= 1; i>=0 ; i--){
      000119 75 3D 01         [24]  478 	mov	_main_i_1_2,#0x01
                                    479 ;	1-genFromRTrack replaced	mov	(_main_i_1_2 + 1),#0x00
      00011C F5 3E            [12]  480 	mov	(_main_i_1_2 + 1),a
                                    481 ;	uts2.c:54: for(j = 1; j>=0; j--){
      00011E                        482 00134$:
      00011E 7E 01            [12]  483 	mov	r6,#0x01
      000120 7F 00            [12]  484 	mov	r7,#0x00
      000122 AC 3F            [24]  485 	mov	r4,_main_k_1_2
      000124 AD 40            [24]  486 	mov	r5,(_main_k_1_2 + 1)
      000126                        487 00124$:
                                    488 ;	uts2.c:55: A1 = i; A0 = j;
      000126 E5 3D            [12]  489 	mov	a,_main_i_1_2
      000128 45 3E            [12]  490 	orl	a,(_main_i_1_2 + 1)
      00012A 24 FF            [12]  491 	add	a,#0xff
      00012C 92 B4            [24]  492 	mov	_P3_4,c
      00012E EE               [12]  493 	mov	a,r6
      00012F 4F               [12]  494 	orl	a,r7
      000130 24 FF            [12]  495 	add	a,#0xff
      000132 92 B3            [24]  496 	mov	_P3_3,c
                                    497 ;	uts2.c:56: P1 = angka[digit[k]];
      000134 8C 02            [24]  498 	mov	ar2,r4
      000136 ED               [12]  499 	mov	a,r5
      000137 CA               [12]  500 	xch	a,r2
      000138 25 E0            [12]  501 	add	a,acc
      00013A CA               [12]  502 	xch	a,r2
      00013B 33               [12]  503 	rlc	a
      00013C EA               [12]  504 	mov	a,r2
      00013D 24 21            [12]  505 	add	a,#_main_digit_1_2
      00013F F9               [12]  506 	mov	r1,a
      000140 87 02            [24]  507 	mov	ar2,@r1
      000142 09               [12]  508 	inc	r1
      000143 87 03            [24]  509 	mov	ar3,@r1
      000145 19               [12]  510 	dec	r1
      000146 EB               [12]  511 	mov	a,r3
      000147 CA               [12]  512 	xch	a,r2
      000148 25 E0            [12]  513 	add	a,acc
      00014A CA               [12]  514 	xch	a,r2
      00014B 33               [12]  515 	rlc	a
      00014C EA               [12]  516 	mov	a,r2
      00014D 24 29            [12]  517 	add	a,#_main_angka_1_2
      00014F F9               [12]  518 	mov	r1,a
      000150 87 02            [24]  519 	mov	ar2,@r1
      000152 09               [12]  520 	inc	r1
      000153 87 03            [24]  521 	mov	ar3,@r1
      000155 19               [12]  522 	dec	r1
      000156 8A 90            [24]  523 	mov	_P1,r2
                                    524 ;	uts2.c:57: k++;
      000158 0C               [12]  525 	inc	r4
      000159 BC 00 01         [24]  526 	cjne	r4,#0x00,00179$
      00015C 0D               [12]  527 	inc	r5
      00015D                        528 00179$:
                                    529 ;	uts2.c:59: for(t = 0; t<DELAY;t++){
      00015D 75 41 0A         [24]  530 	mov	_main_t_1_2,#0x0a
      000160 75 42 00         [24]  531 	mov	(_main_t_1_2 + 1),#0x00
      000163                        532 00123$:
      000163 E5 41            [12]  533 	mov	a,_main_t_1_2
      000165 24 FF            [12]  534 	add	a,#0xff
      000167 FA               [12]  535 	mov	r2,a
      000168 E5 42            [12]  536 	mov	a,(_main_t_1_2 + 1)
      00016A 34 FF            [12]  537 	addc	a,#0xff
      00016C FB               [12]  538 	mov	r3,a
      00016D 8A 41            [24]  539 	mov	_main_t_1_2,r2
      00016F 8B 42            [24]  540 	mov	(_main_t_1_2 + 1),r3
      000171 EA               [12]  541 	mov	a,r2
      000172 4B               [12]  542 	orl	a,r3
      000173 70 EE            [24]  543 	jnz	00123$
                                    544 ;	uts2.c:62: P1 = 0xFF; // memadamkan sevent segment sebelum berganti digit.
      000175 75 90 FF         [24]  545 	mov	_P1,#0xff
                                    546 ;	uts2.c:54: for(j = 1; j>=0; j--){
      000178 1E               [12]  547 	dec	r6
      000179 BE FF 01         [24]  548 	cjne	r6,#0xff,00181$
      00017C 1F               [12]  549 	dec	r7
      00017D                        550 00181$:
      00017D EF               [12]  551 	mov	a,r7
      00017E 30 E7 A5         [24]  552 	jnb	acc.7,00124$
                                    553 ;	uts2.c:53: for(i= 1; i>=0 ; i--){
      000181 8C 3F            [24]  554 	mov	_main_k_1_2,r4
      000183 8D 40            [24]  555 	mov	(_main_k_1_2 + 1),r5
      000185 15 3D            [12]  556 	dec	_main_i_1_2
      000187 74 FF            [12]  557 	mov	a,#0xff
      000189 B5 3D 02         [24]  558 	cjne	a,_main_i_1_2,00183$
      00018C 15 3E            [12]  559 	dec	(_main_i_1_2 + 1)
      00018E                        560 00183$:
      00018E E5 3E            [12]  561 	mov	a,(_main_i_1_2 + 1)
      000190 30 E7 8B         [24]  562 	jnb	acc.7,00134$
                                    563 ;	uts2.c:67: if(state == 1){
      000193 74 01            [12]  564 	mov	a,#0x01
      000195 B5 43 06         [24]  565 	cjne	a,_main_state_1_2,00185$
      000198 14               [12]  566 	dec	a
      000199 B5 44 02         [24]  567 	cjne	a,(_main_state_1_2 + 1),00185$
      00019C 80 03            [24]  568 	sjmp	00186$
      00019E                        569 00185$:
      00019E 02 00 AF         [24]  570 	ljmp	00119$
      0001A1                        571 00186$:
                                    572 ;	uts2.c:68: digit[3]++;
      0001A1 AE 27            [24]  573 	mov	r6,((_main_digit_1_2 + 0x0006) + 0)
      0001A3 AF 28            [24]  574 	mov	r7,((_main_digit_1_2 + 0x0006) + 1)
      0001A5 0E               [12]  575 	inc	r6
      0001A6 BE 00 01         [24]  576 	cjne	r6,#0x00,00187$
      0001A9 0F               [12]  577 	inc	r7
      0001AA                        578 00187$:
      0001AA 8E 27            [24]  579 	mov	((_main_digit_1_2 + 0x0006) + 0),r6
      0001AC 8F 28            [24]  580 	mov	((_main_digit_1_2 + 0x0006) + 1),r7
                                    581 ;	uts2.c:69: if(digit[3] >= 10){
      0001AE C3               [12]  582 	clr	c
      0001AF EE               [12]  583 	mov	a,r6
      0001B0 94 0A            [12]  584 	subb	a,#0x0a
      0001B2 EF               [12]  585 	mov	a,r7
      0001B3 94 00            [12]  586 	subb	a,#0x00
      0001B5 40 12            [24]  587 	jc	00109$
                                    588 ;	uts2.c:70: digit[3] = 0;
      0001B7 E4               [12]  589 	clr	a
      0001B8 F5 27            [12]  590 	mov	((_main_digit_1_2 + 0x0006) + 0),a
      0001BA F5 28            [12]  591 	mov	((_main_digit_1_2 + 0x0006) + 1),a
                                    592 ;	uts2.c:71: digit[2]++;
      0001BC AE 25            [24]  593 	mov	r6,((_main_digit_1_2 + 0x0004) + 0)
      0001BE AF 26            [24]  594 	mov	r7,((_main_digit_1_2 + 0x0004) + 1)
      0001C0 0E               [12]  595 	inc	r6
      0001C1 BE 00 01         [24]  596 	cjne	r6,#0x00,00189$
      0001C4 0F               [12]  597 	inc	r7
      0001C5                        598 00189$:
      0001C5 8E 25            [24]  599 	mov	((_main_digit_1_2 + 0x0004) + 0),r6
      0001C7 8F 26            [24]  600 	mov	((_main_digit_1_2 + 0x0004) + 1),r7
      0001C9                        601 00109$:
                                    602 ;	uts2.c:73: if(digit[2] >= 6){
      0001C9 C3               [12]  603 	clr	c
      0001CA E5 25            [12]  604 	mov	a,(_main_digit_1_2 + 0x0004)
      0001CC 94 06            [12]  605 	subb	a,#0x06
      0001CE E5 26            [12]  606 	mov	a,((_main_digit_1_2 + 0x0004) + 1)
      0001D0 94 00            [12]  607 	subb	a,#0x00
      0001D2 40 12            [24]  608 	jc	00111$
                                    609 ;	uts2.c:74: digit[2] = 0;
      0001D4 E4               [12]  610 	clr	a
      0001D5 F5 25            [12]  611 	mov	((_main_digit_1_2 + 0x0004) + 0),a
      0001D7 F5 26            [12]  612 	mov	((_main_digit_1_2 + 0x0004) + 1),a
                                    613 ;	uts2.c:75: digit[1]++;
      0001D9 AE 23            [24]  614 	mov	r6,((_main_digit_1_2 + 0x0002) + 0)
      0001DB AF 24            [24]  615 	mov	r7,((_main_digit_1_2 + 0x0002) + 1)
      0001DD 0E               [12]  616 	inc	r6
      0001DE BE 00 01         [24]  617 	cjne	r6,#0x00,00191$
      0001E1 0F               [12]  618 	inc	r7
      0001E2                        619 00191$:
      0001E2 8E 23            [24]  620 	mov	((_main_digit_1_2 + 0x0002) + 0),r6
      0001E4 8F 24            [24]  621 	mov	((_main_digit_1_2 + 0x0002) + 1),r7
      0001E6                        622 00111$:
                                    623 ;	uts2.c:77: if(digit[1]>=10){
      0001E6 C3               [12]  624 	clr	c
      0001E7 E5 23            [12]  625 	mov	a,(_main_digit_1_2 + 0x0002)
      0001E9 94 0A            [12]  626 	subb	a,#0x0a
      0001EB E5 24            [12]  627 	mov	a,((_main_digit_1_2 + 0x0002) + 1)
      0001ED 94 00            [12]  628 	subb	a,#0x00
      0001EF 40 12            [24]  629 	jc	00113$
                                    630 ;	uts2.c:78: digit[1]=0;
      0001F1 E4               [12]  631 	clr	a
      0001F2 F5 23            [12]  632 	mov	((_main_digit_1_2 + 0x0002) + 0),a
      0001F4 F5 24            [12]  633 	mov	((_main_digit_1_2 + 0x0002) + 1),a
                                    634 ;	uts2.c:79: digit[0]++;
      0001F6 AE 21            [24]  635 	mov	r6,(_main_digit_1_2 + 0)
      0001F8 AF 22            [24]  636 	mov	r7,(_main_digit_1_2 + 1)
      0001FA 0E               [12]  637 	inc	r6
      0001FB BE 00 01         [24]  638 	cjne	r6,#0x00,00193$
      0001FE 0F               [12]  639 	inc	r7
      0001FF                        640 00193$:
      0001FF 8E 21            [24]  641 	mov	(_main_digit_1_2 + 0),r6
      000201 8F 22            [24]  642 	mov	(_main_digit_1_2 + 1),r7
      000203                        643 00113$:
                                    644 ;	uts2.c:81: if(digit[0]*10 + digit[1] == 99){
      000203 85 21 08         [24]  645 	mov	__mulint_PARM_2,(_main_digit_1_2 + 0)
      000206 85 22 09         [24]  646 	mov	(__mulint_PARM_2 + 1),(_main_digit_1_2 + 1)
      000209 90 00 0A         [24]  647 	mov	dptr,#0x000a
      00020C 12 02 32         [24]  648 	lcall	__mulint
      00020F AE 82            [24]  649 	mov	r6,dpl
      000211 AF 83            [24]  650 	mov	r7,dph
      000213 E5 23            [12]  651 	mov	a,(_main_digit_1_2 + 0x0002)
      000215 2E               [12]  652 	add	a,r6
      000216 FE               [12]  653 	mov	r6,a
      000217 E5 24            [12]  654 	mov	a,((_main_digit_1_2 + 0x0002) + 1)
      000219 3F               [12]  655 	addc	a,r7
      00021A FF               [12]  656 	mov	r7,a
      00021B BE 63 05         [24]  657 	cjne	r6,#0x63,00194$
      00021E BF 00 02         [24]  658 	cjne	r7,#0x00,00194$
      000221 80 03            [24]  659 	sjmp	00195$
      000223                        660 00194$:
      000223 02 00 AF         [24]  661 	ljmp	00119$
      000226                        662 00195$:
                                    663 ;	uts2.c:82: digit[0] = 0;
      000226 E4               [12]  664 	clr	a
      000227 F5 21            [12]  665 	mov	(_main_digit_1_2 + 0),a
      000229 F5 22            [12]  666 	mov	(_main_digit_1_2 + 1),a
                                    667 ;	uts2.c:83: digit[1] = 0;
      00022B F5 23            [12]  668 	mov	((_main_digit_1_2 + 0x0002) + 0),a
      00022D F5 24            [12]  669 	mov	((_main_digit_1_2 + 0x0002) + 1),a
      00022F 02 00 AF         [24]  670 	ljmp	00119$
                                    671 	.area CSEG    (CODE)
                                    672 	.area CONST   (CODE)
                                    673 	.area XINIT   (CODE)
                                    674 	.area CABS    (ABS,CODE)
