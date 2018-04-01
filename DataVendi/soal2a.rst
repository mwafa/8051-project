                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module soal2a
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
                                    223 ;--------------------------------------------------------
                                    224 ; overlayable items in internal ram 
                                    225 ;--------------------------------------------------------
                                    226 	.area	OSEG    (OVR,DATA)
      000008                        227 _main_x_1_2:
      000008                        228 	.ds 1
      000009                        229 _main_i_1_2:
      000009                        230 	.ds 1
      00000A                        231 _main_j_1_2:
      00000A                        232 	.ds 1
      00000B                        233 _main_l_1_2:
      00000B                        234 	.ds 1
      00000C                        235 _main_a_1_2:
      00000C                        236 	.ds 10
                                    237 ;--------------------------------------------------------
                                    238 ; Stack segment in internal ram 
                                    239 ;--------------------------------------------------------
                                    240 	.area	SSEG
      000016                        241 __start__stack:
      000016                        242 	.ds	1
                                    243 
                                    244 ;--------------------------------------------------------
                                    245 ; indirectly addressable internal ram data
                                    246 ;--------------------------------------------------------
                                    247 	.area ISEG    (DATA)
                                    248 ;--------------------------------------------------------
                                    249 ; absolute internal ram data
                                    250 ;--------------------------------------------------------
                                    251 	.area IABS    (ABS,DATA)
                                    252 	.area IABS    (ABS,DATA)
                                    253 ;--------------------------------------------------------
                                    254 ; bit data
                                    255 ;--------------------------------------------------------
                                    256 	.area BSEG    (BIT)
                                    257 ;--------------------------------------------------------
                                    258 ; paged external ram data
                                    259 ;--------------------------------------------------------
                                    260 	.area PSEG    (PAG,XDATA)
                                    261 ;--------------------------------------------------------
                                    262 ; external ram data
                                    263 ;--------------------------------------------------------
                                    264 	.area XSEG    (XDATA)
                                    265 ;--------------------------------------------------------
                                    266 ; absolute external ram data
                                    267 ;--------------------------------------------------------
                                    268 	.area XABS    (ABS,XDATA)
                                    269 ;--------------------------------------------------------
                                    270 ; external initialized ram data
                                    271 ;--------------------------------------------------------
                                    272 	.area XISEG   (XDATA)
                                    273 	.area HOME    (CODE)
                                    274 	.area GSINIT0 (CODE)
                                    275 	.area GSINIT1 (CODE)
                                    276 	.area GSINIT2 (CODE)
                                    277 	.area GSINIT3 (CODE)
                                    278 	.area GSINIT4 (CODE)
                                    279 	.area GSINIT5 (CODE)
                                    280 	.area GSINIT  (CODE)
                                    281 	.area GSFINAL (CODE)
                                    282 	.area CSEG    (CODE)
                                    283 ;--------------------------------------------------------
                                    284 ; interrupt vector 
                                    285 ;--------------------------------------------------------
                                    286 	.area HOME    (CODE)
      000000                        287 __interrupt_vect:
      000000 02 00 06         [24]  288 	ljmp	__sdcc_gsinit_startup
                                    289 ;--------------------------------------------------------
                                    290 ; global & static initialisations
                                    291 ;--------------------------------------------------------
                                    292 	.area HOME    (CODE)
                                    293 	.area GSINIT  (CODE)
                                    294 	.area GSFINAL (CODE)
                                    295 	.area GSINIT  (CODE)
                                    296 	.globl __sdcc_gsinit_startup
                                    297 	.globl __sdcc_program_startup
                                    298 	.globl __start__stack
                                    299 	.globl __mcs51_genXINIT
                                    300 	.globl __mcs51_genXRAMCLEAR
                                    301 	.globl __mcs51_genRAMCLEAR
                                    302 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  303 	ljmp	__sdcc_program_startup
                                    304 ;--------------------------------------------------------
                                    305 ; Home
                                    306 ;--------------------------------------------------------
                                    307 	.area HOME    (CODE)
                                    308 	.area HOME    (CODE)
      000003                        309 __sdcc_program_startup:
      000003 02 00 62         [24]  310 	ljmp	_main
                                    311 ;	return from main will return to caller
                                    312 ;--------------------------------------------------------
                                    313 ; code
                                    314 ;--------------------------------------------------------
                                    315 	.area CSEG    (CODE)
                                    316 ;------------------------------------------------------------
                                    317 ;Allocation info for local variables in function 'main'
                                    318 ;------------------------------------------------------------
                                    319 ;x                         Allocated with name '_main_x_1_2'
                                    320 ;t                         Allocated to registers 
                                    321 ;i                         Allocated with name '_main_i_1_2'
                                    322 ;j                         Allocated with name '_main_j_1_2'
                                    323 ;k                         Allocated to registers r6 
                                    324 ;l                         Allocated with name '_main_l_1_2'
                                    325 ;a                         Allocated with name '_main_a_1_2'
                                    326 ;sd                        Allocated to registers r2 
                                    327 ;pd                        Allocated to registers r5 
                                    328 ;sm                        Allocated to registers r7 
                                    329 ;pm                        Allocated to registers r3 
                                    330 ;------------------------------------------------------------
                                    331 ;	soal2a.c:16: void main(void)
                                    332 ;	-----------------------------------------
                                    333 ;	 function main
                                    334 ;	-----------------------------------------
      000062                        335 _main:
                           000007   336 	ar7 = 0x07
                           000006   337 	ar6 = 0x06
                           000005   338 	ar5 = 0x05
                           000004   339 	ar4 = 0x04
                           000003   340 	ar3 = 0x03
                           000002   341 	ar2 = 0x02
                           000001   342 	ar1 = 0x01
                           000000   343 	ar0 = 0x00
                                    344 ;	soal2a.c:18: unsigned char x,t=57.5,i,j,k,l,a[10]={0x0C0,0x0F9,0x0A4,0x0B0,0x99,0x92,0x082,0x0F8,0x80,0x90};
      000062 75 0C C0         [24]  345 	mov	_main_a_1_2,#0xc0
      000065 75 0D F9         [24]  346 	mov	(_main_a_1_2 + 0x0001),#0xf9
      000068 75 0E A4         [24]  347 	mov	(_main_a_1_2 + 0x0002),#0xa4
      00006B 75 0F B0         [24]  348 	mov	(_main_a_1_2 + 0x0003),#0xb0
      00006E 75 10 99         [24]  349 	mov	(_main_a_1_2 + 0x0004),#0x99
      000071 75 11 92         [24]  350 	mov	(_main_a_1_2 + 0x0005),#0x92
      000074 75 12 82         [24]  351 	mov	(_main_a_1_2 + 0x0006),#0x82
      000077 75 13 F8         [24]  352 	mov	(_main_a_1_2 + 0x0007),#0xf8
      00007A 75 14 80         [24]  353 	mov	(_main_a_1_2 + 0x0008),#0x80
      00007D 75 15 90         [24]  354 	mov	(_main_a_1_2 + 0x0009),#0x90
                                    355 ;	soal2a.c:20: START=1;STOP=1;
      000080 D2 A0            [12]  356 	setb	_P2_0
      000082 D2 A1            [12]  357 	setb	_P2_1
                                    358 ;	soal2a.c:21: P0_7 = 1;
      000084 D2 87            [12]  359 	setb	_P0_7
                                    360 ;	soal2a.c:22: while (1) {
      000086                        361 00124$:
                                    362 ;	soal2a.c:23: if (START == 0) {        /* tombol keypad (B0,K0) ditekan */
      000086 20 A0 FD         [24]  363 	jb	_P2_0,00124$
                                    364 ;	soal2a.c:24: while (START == 0) ;   /* tunggu sampai tombol dilepas */
      000089                        365 00101$:
      000089 30 A0 FD         [24]  366 	jnb	_P2_0,00101$
                                    367 ;	soal2a.c:25: for (l = 0; l < 6; l++) {
      00008C 75 0B 00         [24]  368 	mov	_main_l_1_2,#0x00
                                    369 ;	soal2a.c:27: for (k = 0; k < 10; k++) {
      00008F                        370 00185$:
      00008F E5 0B            [12]  371 	mov	a,_main_l_1_2
      000091 24 0C            [12]  372 	add	a,#_main_a_1_2
      000093 F9               [12]  373 	mov	r1,a
      000094 7E 00            [12]  374 	mov	r6,#0x00
                                    375 ;	soal2a.c:29: for (j = 0; j < 6; j++) {
      000096                        376 00183$:
      000096 EE               [12]  377 	mov	a,r6
      000097 24 0C            [12]  378 	add	a,#_main_a_1_2
      000099 F8               [12]  379 	mov	r0,a
      00009A 75 0A 00         [24]  380 	mov	_main_j_1_2,#0x00
                                    381 ;	soal2a.c:30: for (i = 0; i < 10; i++) {
      00009D                        382 00181$:
      00009D E5 0A            [12]  383 	mov	a,_main_j_1_2
      00009F 24 0C            [12]  384 	add	a,#_main_a_1_2
      0000A1 FC               [12]  385 	mov	r4,a
      0000A2 75 09 00         [24]  386 	mov	_main_i_1_2,#0x00
      0000A5                        387 00150$:
                                    388 ;	soal2a.c:31: A1 = 0;  A0 = 0; /*SS0=satuan detik*/
      0000A5 C2 B4            [12]  389 	clr	_P3_4
      0000A7 C2 B3            [12]  390 	clr	_P3_3
                                    391 ;	soal2a.c:32: SS=a[i];sd=a[i];
      0000A9 E5 09            [12]  392 	mov	a,_main_i_1_2
      0000AB 24 0C            [12]  393 	add	a,#_main_a_1_2
      0000AD FA               [12]  394 	mov	r2,a
      0000AE C0 00            [24]  395 	push	ar0
      0000B0 A8 02            [24]  396 	mov	r0,ar2
      0000B2 86 02            [24]  397 	mov	ar2,@r0
      0000B4 D0 00            [24]  398 	pop	ar0
      0000B6 8A 90            [24]  399 	mov	_P1,r2
                                    400 ;	soal2a.c:33: for (x = 0; x < t; x++){;}
      0000B8 75 08 00         [24]  401 	mov	_main_x_1_2,#0x00
      0000BB                        402 00127$:
      0000BB 74 C7            [12]  403 	mov	a,#0x100 - 0x39
      0000BD 25 08            [12]  404 	add	a,_main_x_1_2
      0000BF 40 04            [24]  405 	jc	00104$
      0000C1 05 08            [12]  406 	inc	_main_x_1_2
      0000C3 80 F6            [24]  407 	sjmp	00127$
      0000C5                        408 00104$:
                                    409 ;	soal2a.c:35: A1 = 0;  A0 = 1; /*SS1=puluhan detik*/
      0000C5 C2 B4            [12]  410 	clr	_P3_4
      0000C7 D2 B3            [12]  411 	setb	_P3_3
                                    412 ;	soal2a.c:36: SS=a[j];pd=a[j];
      0000C9 C0 00            [24]  413 	push	ar0
      0000CB A8 04            [24]  414 	mov	r0,ar4
      0000CD 86 05            [24]  415 	mov	ar5,@r0
      0000CF D0 00            [24]  416 	pop	ar0
      0000D1 8D 90            [24]  417 	mov	_P1,r5
                                    418 ;	soal2a.c:37: for (x = 0; x < t; x++){;}
      0000D3 75 08 00         [24]  419 	mov	_main_x_1_2,#0x00
      0000D6                        420 00130$:
      0000D6 74 C7            [12]  421 	mov	a,#0x100 - 0x39
      0000D8 25 08            [12]  422 	add	a,_main_x_1_2
      0000DA 40 04            [24]  423 	jc	00105$
      0000DC 05 08            [12]  424 	inc	_main_x_1_2
      0000DE 80 F6            [24]  425 	sjmp	00130$
      0000E0                        426 00105$:
                                    427 ;	soal2a.c:39: A1 = 1;  A0 = 0; /*SS2=satuan menit*/
      0000E0 D2 B4            [12]  428 	setb	_P3_4
      0000E2 C2 B3            [12]  429 	clr	_P3_3
                                    430 ;	soal2a.c:40: SS=a[k];sm=a[k];
      0000E4 86 07            [24]  431 	mov	ar7,@r0
      0000E6 8F 90            [24]  432 	mov	_P1,r7
                                    433 ;	soal2a.c:41: for (x = 0; x < t; x++){;}
      0000E8 75 08 00         [24]  434 	mov	_main_x_1_2,#0x00
      0000EB                        435 00133$:
      0000EB 74 C7            [12]  436 	mov	a,#0x100 - 0x39
      0000ED 25 08            [12]  437 	add	a,_main_x_1_2
      0000EF 40 04            [24]  438 	jc	00106$
      0000F1 05 08            [12]  439 	inc	_main_x_1_2
      0000F3 80 F6            [24]  440 	sjmp	00133$
      0000F5                        441 00106$:
                                    442 ;	soal2a.c:43: A1 = 1;  A0 = 1; /*SS3=puluhan menit*/
      0000F5 D2 B4            [12]  443 	setb	_P3_4
      0000F7 D2 B3            [12]  444 	setb	_P3_3
                                    445 ;	soal2a.c:44: SS=a[l];pm=a[l];
      0000F9 87 03            [24]  446 	mov	ar3,@r1
      0000FB 8B 90            [24]  447 	mov	_P1,r3
                                    448 ;	soal2a.c:45: for (x = 0; x < t; x++){;}
      0000FD 75 08 00         [24]  449 	mov	_main_x_1_2,#0x00
      000100                        450 00136$:
      000100 74 C7            [12]  451 	mov	a,#0x100 - 0x39
      000102 25 08            [12]  452 	add	a,_main_x_1_2
      000104 40 04            [24]  453 	jc	00107$
      000106 05 08            [12]  454 	inc	_main_x_1_2
      000108 80 F6            [24]  455 	sjmp	00136$
      00010A                        456 00107$:
                                    457 ;	soal2a.c:47: if (STOP == 0) {
      00010A 20 A1 4F         [24]  458 	jb	_P2_1,00151$
                                    459 ;	soal2a.c:48: while (STOP == 0){
      00010D                        460 00112$:
      00010D 20 A1 4C         [24]  461 	jb	_P2_1,00151$
                                    462 ;	soal2a.c:49: A1 = 0;  A0 = 0; /*SS0=satuan detik*/
      000110 C2 B4            [12]  463 	clr	_P3_4
      000112 C2 B3            [12]  464 	clr	_P3_3
                                    465 ;	soal2a.c:50: SS=sd;for (x = 0; x < t; x++){;}
      000114 8A 90            [24]  466 	mov	_P1,r2
      000116 75 08 00         [24]  467 	mov	_main_x_1_2,#0x00
      000119                        468 00139$:
      000119 74 C7            [12]  469 	mov	a,#0x100 - 0x39
      00011B 25 08            [12]  470 	add	a,_main_x_1_2
      00011D 40 04            [24]  471 	jc	00108$
      00011F 05 08            [12]  472 	inc	_main_x_1_2
      000121 80 F6            [24]  473 	sjmp	00139$
      000123                        474 00108$:
                                    475 ;	soal2a.c:52: A1 = 0;  A0 = 1; /*SS1=puluhan detik*/
      000123 C2 B4            [12]  476 	clr	_P3_4
      000125 D2 B3            [12]  477 	setb	_P3_3
                                    478 ;	soal2a.c:53: SS=pd;for (x = 0; x < t; x++){;}
      000127 8D 90            [24]  479 	mov	_P1,r5
      000129 75 08 00         [24]  480 	mov	_main_x_1_2,#0x00
      00012C                        481 00142$:
      00012C 74 C7            [12]  482 	mov	a,#0x100 - 0x39
      00012E 25 08            [12]  483 	add	a,_main_x_1_2
      000130 40 04            [24]  484 	jc	00109$
      000132 05 08            [12]  485 	inc	_main_x_1_2
      000134 80 F6            [24]  486 	sjmp	00142$
      000136                        487 00109$:
                                    488 ;	soal2a.c:55: A1 = 1;  A0 = 0; /*SS2=satuan menit*/
      000136 D2 B4            [12]  489 	setb	_P3_4
      000138 C2 B3            [12]  490 	clr	_P3_3
                                    491 ;	soal2a.c:56: SS=sm;for (x = 0; x < t; x++){;}
      00013A 8F 90            [24]  492 	mov	_P1,r7
      00013C 75 08 00         [24]  493 	mov	_main_x_1_2,#0x00
      00013F                        494 00145$:
      00013F 74 C7            [12]  495 	mov	a,#0x100 - 0x39
      000141 25 08            [12]  496 	add	a,_main_x_1_2
      000143 40 04            [24]  497 	jc	00110$
      000145 05 08            [12]  498 	inc	_main_x_1_2
      000147 80 F6            [24]  499 	sjmp	00145$
      000149                        500 00110$:
                                    501 ;	soal2a.c:58: A1 = 1;  A0 = 1; /*SS3=puluhan menit*/
      000149 D2 B4            [12]  502 	setb	_P3_4
      00014B D2 B3            [12]  503 	setb	_P3_3
                                    504 ;	soal2a.c:59: SS=pm;for (x = 0; x < t; x++){;}
      00014D 8B 90            [24]  505 	mov	_P1,r3
      00014F 75 08 00         [24]  506 	mov	_main_x_1_2,#0x00
      000152                        507 00148$:
      000152 74 C7            [12]  508 	mov	a,#0x100 - 0x39
      000154 25 08            [12]  509 	add	a,_main_x_1_2
      000156 40 B5            [24]  510 	jc	00112$
      000158 05 08            [12]  511 	inc	_main_x_1_2
      00015A 80 F6            [24]  512 	sjmp	00148$
      00015C                        513 00151$:
                                    514 ;	soal2a.c:30: for (i = 0; i < 10; i++) {
      00015C 05 09            [12]  515 	inc	_main_i_1_2
      00015E 74 F6            [12]  516 	mov	a,#0x100 - 0x0a
      000160 25 09            [12]  517 	add	a,_main_i_1_2
      000162 40 03            [24]  518 	jc	00270$
      000164 02 00 A5         [24]  519 	ljmp	00150$
      000167                        520 00270$:
                                    521 ;	soal2a.c:29: for (j = 0; j < 6; j++) {
      000167 05 0A            [12]  522 	inc	_main_j_1_2
      000169 74 FA            [12]  523 	mov	a,#0x100 - 0x06
      00016B 25 0A            [12]  524 	add	a,_main_j_1_2
      00016D 40 03            [24]  525 	jc	00271$
      00016F 02 00 9D         [24]  526 	ljmp	00181$
      000172                        527 00271$:
                                    528 ;	soal2a.c:27: for (k = 0; k < 10; k++) {
      000172 0E               [12]  529 	inc	r6
      000173 BE 0A 00         [24]  530 	cjne	r6,#0x0a,00272$
      000176                        531 00272$:
      000176 50 03            [24]  532 	jnc	00273$
      000178 02 00 96         [24]  533 	ljmp	00183$
      00017B                        534 00273$:
                                    535 ;	soal2a.c:25: for (l = 0; l < 6; l++) {
      00017B 05 0B            [12]  536 	inc	_main_l_1_2
      00017D 74 FA            [12]  537 	mov	a,#0x100 - 0x06
      00017F 25 0B            [12]  538 	add	a,_main_l_1_2
      000181 40 03            [24]  539 	jc	00274$
      000183 02 00 8F         [24]  540 	ljmp	00185$
      000186                        541 00274$:
      000186 02 00 86         [24]  542 	ljmp	00124$
                                    543 	.area CSEG    (CODE)
                                    544 	.area CONST   (CODE)
                                    545 	.area XINIT   (CODE)
                                    546 	.area CABS    (ABS,CODE)
