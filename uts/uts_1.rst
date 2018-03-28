                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module uts_1
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
      000008                        223 _main_digit_1_2:
      000008                        224 	.ds 8
      000010                        225 _main_angka_1_2:
      000010                        226 	.ds 20
      000024                        227 _main_i_1_2:
      000024                        228 	.ds 2
      000026                        229 _main_k_1_2:
      000026                        230 	.ds 2
      000028                        231 _main_t_1_2:
      000028                        232 	.ds 2
      00002A                        233 _main_kal_2_3:
      00002A                        234 	.ds 2
                                    235 ;--------------------------------------------------------
                                    236 ; overlayable items in internal ram 
                                    237 ;--------------------------------------------------------
                                    238 ;--------------------------------------------------------
                                    239 ; Stack segment in internal ram 
                                    240 ;--------------------------------------------------------
                                    241 	.area	SSEG
      00002E                        242 __start__stack:
      00002E                        243 	.ds	1
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
                                    258 ;--------------------------------------------------------
                                    259 ; paged external ram data
                                    260 ;--------------------------------------------------------
                                    261 	.area PSEG    (PAG,XDATA)
                                    262 ;--------------------------------------------------------
                                    263 ; external ram data
                                    264 ;--------------------------------------------------------
                                    265 	.area XSEG    (XDATA)
                                    266 ;--------------------------------------------------------
                                    267 ; absolute external ram data
                                    268 ;--------------------------------------------------------
                                    269 	.area XABS    (ABS,XDATA)
                                    270 ;--------------------------------------------------------
                                    271 ; external initialized ram data
                                    272 ;--------------------------------------------------------
                                    273 	.area XISEG   (XDATA)
                                    274 	.area HOME    (CODE)
                                    275 	.area GSINIT0 (CODE)
                                    276 	.area GSINIT1 (CODE)
                                    277 	.area GSINIT2 (CODE)
                                    278 	.area GSINIT3 (CODE)
                                    279 	.area GSINIT4 (CODE)
                                    280 	.area GSINIT5 (CODE)
                                    281 	.area GSINIT  (CODE)
                                    282 	.area GSFINAL (CODE)
                                    283 	.area CSEG    (CODE)
                                    284 ;--------------------------------------------------------
                                    285 ; interrupt vector 
                                    286 ;--------------------------------------------------------
                                    287 	.area HOME    (CODE)
      000000                        288 __interrupt_vect:
      000000 02 00 06         [24]  289 	ljmp	__sdcc_gsinit_startup
                                    290 ;--------------------------------------------------------
                                    291 ; global & static initialisations
                                    292 ;--------------------------------------------------------
                                    293 	.area HOME    (CODE)
                                    294 	.area GSINIT  (CODE)
                                    295 	.area GSFINAL (CODE)
                                    296 	.area GSINIT  (CODE)
                                    297 	.globl __sdcc_gsinit_startup
                                    298 	.globl __sdcc_program_startup
                                    299 	.globl __start__stack
                                    300 	.globl __mcs51_genXINIT
                                    301 	.globl __mcs51_genXRAMCLEAR
                                    302 	.globl __mcs51_genRAMCLEAR
                                    303 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  304 	ljmp	__sdcc_program_startup
                                    305 ;--------------------------------------------------------
                                    306 ; Home
                                    307 ;--------------------------------------------------------
                                    308 	.area HOME    (CODE)
                                    309 	.area HOME    (CODE)
      000003                        310 __sdcc_program_startup:
      000003 02 00 62         [24]  311 	ljmp	_main
                                    312 ;	return from main will return to caller
                                    313 ;--------------------------------------------------------
                                    314 ; code
                                    315 ;--------------------------------------------------------
                                    316 	.area CSEG    (CODE)
                                    317 ;------------------------------------------------------------
                                    318 ;Allocation info for local variables in function 'main'
                                    319 ;------------------------------------------------------------
                                    320 ;digit                     Allocated with name '_main_digit_1_2'
                                    321 ;angka                     Allocated with name '_main_angka_1_2'
                                    322 ;i                         Allocated with name '_main_i_1_2'
                                    323 ;j                         Allocated to registers r6 r7 
                                    324 ;k                         Allocated with name '_main_k_1_2'
                                    325 ;t                         Allocated with name '_main_t_1_2'
                                    326 ;kal                       Allocated with name '_main_kal_2_3'
                                    327 ;------------------------------------------------------------
                                    328 ;	uts_1.c:19: void main(void)
                                    329 ;	-----------------------------------------
                                    330 ;	 function main
                                    331 ;	-----------------------------------------
      000062                        332 _main:
                           000007   333 	ar7 = 0x07
                           000006   334 	ar6 = 0x06
                           000005   335 	ar5 = 0x05
                           000004   336 	ar4 = 0x04
                           000003   337 	ar3 = 0x03
                           000002   338 	ar2 = 0x02
                           000001   339 	ar1 = 0x01
                           000000   340 	ar0 = 0x00
                                    341 ;	uts_1.c:21: unsigned int digit[4]    = {2,3,5,9}; // pukul 23.59
      000062 75 08 02         [24]  342 	mov	(_main_digit_1_2 + 0),#0x02
      000065 75 09 00         [24]  343 	mov	(_main_digit_1_2 + 1),#0x00
      000068 75 0A 03         [24]  344 	mov	((_main_digit_1_2 + 0x0002) + 0),#0x03
      00006B 75 0B 00         [24]  345 	mov	((_main_digit_1_2 + 0x0002) + 1),#0x00
      00006E 75 0C 05         [24]  346 	mov	((_main_digit_1_2 + 0x0004) + 0),#0x05
      000071 75 0D 00         [24]  347 	mov	((_main_digit_1_2 + 0x0004) + 1),#0x00
      000074 75 0E 09         [24]  348 	mov	((_main_digit_1_2 + 0x0006) + 0),#0x09
      000077 75 0F 00         [24]  349 	mov	((_main_digit_1_2 + 0x0006) + 1),#0x00
                                    350 ;	uts_1.c:22: unsigned int angka[10] = {0x0C0,0x0F9,0x0A4,0x0B0,0x99,0x92,0x82,0x0F8,0x80,0x90}; //data angka
      00007A 75 10 C0         [24]  351 	mov	(_main_angka_1_2 + 0),#0xc0
      00007D 75 11 00         [24]  352 	mov	(_main_angka_1_2 + 1),#0x00
      000080 75 12 F9         [24]  353 	mov	((_main_angka_1_2 + 0x0002) + 0),#0xf9
      000083 75 13 00         [24]  354 	mov	((_main_angka_1_2 + 0x0002) + 1),#0x00
      000086 75 14 A4         [24]  355 	mov	((_main_angka_1_2 + 0x0004) + 0),#0xa4
      000089 75 15 00         [24]  356 	mov	((_main_angka_1_2 + 0x0004) + 1),#0x00
      00008C 75 16 B0         [24]  357 	mov	((_main_angka_1_2 + 0x0006) + 0),#0xb0
      00008F 75 17 00         [24]  358 	mov	((_main_angka_1_2 + 0x0006) + 1),#0x00
      000092 75 18 99         [24]  359 	mov	((_main_angka_1_2 + 0x0008) + 0),#0x99
      000095 75 19 00         [24]  360 	mov	((_main_angka_1_2 + 0x0008) + 1),#0x00
      000098 75 1A 92         [24]  361 	mov	((_main_angka_1_2 + 0x000a) + 0),#0x92
      00009B 75 1B 00         [24]  362 	mov	((_main_angka_1_2 + 0x000a) + 1),#0x00
      00009E 75 1C 82         [24]  363 	mov	((_main_angka_1_2 + 0x000c) + 0),#0x82
      0000A1 75 1D 00         [24]  364 	mov	((_main_angka_1_2 + 0x000c) + 1),#0x00
      0000A4 75 1E F8         [24]  365 	mov	((_main_angka_1_2 + 0x000e) + 0),#0xf8
      0000A7 75 1F 00         [24]  366 	mov	((_main_angka_1_2 + 0x000e) + 1),#0x00
      0000AA 75 20 80         [24]  367 	mov	((_main_angka_1_2 + 0x0010) + 0),#0x80
      0000AD 75 21 00         [24]  368 	mov	((_main_angka_1_2 + 0x0010) + 1),#0x00
      0000B0 75 22 90         [24]  369 	mov	((_main_angka_1_2 + 0x0012) + 0),#0x90
      0000B3 75 23 00         [24]  370 	mov	((_main_angka_1_2 + 0x0012) + 1),#0x00
                                    371 ;	uts_1.c:27: P0_7 = 1; // menyalakan Seven Segment
      0000B6 D2 87            [12]  372 	setb	_P0_7
                                    373 ;	uts_1.c:32: for(kal = 0; kal<KALIBRATOR; kal++){
      0000B8                        374 00133$:
      0000B8 E4               [12]  375 	clr	a
      0000B9 F5 2A            [12]  376 	mov	_main_kal_2_3,a
      0000BB F5 2B            [12]  377 	mov	(_main_kal_2_3 + 1),a
      0000BD                        378 00123$:
                                    379 ;	uts_1.c:33: k = 0;
      0000BD E4               [12]  380 	clr	a
      0000BE F5 26            [12]  381 	mov	_main_k_1_2,a
      0000C0 F5 27            [12]  382 	mov	(_main_k_1_2 + 1),a
                                    383 ;	uts_1.c:34: for(i= 1; i>=0 ; i--){
      0000C2 75 24 01         [24]  384 	mov	_main_i_1_2,#0x01
                                    385 ;	1-genFromRTrack replaced	mov	(_main_i_1_2 + 1),#0x00
      0000C5 F5 25            [12]  386 	mov	(_main_i_1_2 + 1),a
                                    387 ;	uts_1.c:35: for(j = 1; j>=0; j--){
      0000C7                        388 00129$:
      0000C7 7E 01            [12]  389 	mov	r6,#0x01
      0000C9 7F 00            [12]  390 	mov	r7,#0x00
      0000CB AC 26            [24]  391 	mov	r4,_main_k_1_2
      0000CD AD 27            [24]  392 	mov	r5,(_main_k_1_2 + 1)
      0000CF                        393 00119$:
                                    394 ;	uts_1.c:36: A1 = i; A0 = j;
      0000CF E5 24            [12]  395 	mov	a,_main_i_1_2
      0000D1 45 25            [12]  396 	orl	a,(_main_i_1_2 + 1)
      0000D3 24 FF            [12]  397 	add	a,#0xff
      0000D5 92 B4            [24]  398 	mov	_P3_4,c
      0000D7 EE               [12]  399 	mov	a,r6
      0000D8 4F               [12]  400 	orl	a,r7
      0000D9 24 FF            [12]  401 	add	a,#0xff
      0000DB 92 B3            [24]  402 	mov	_P3_3,c
                                    403 ;	uts_1.c:37: P1 = angka[digit[k]];
      0000DD 8C 02            [24]  404 	mov	ar2,r4
      0000DF ED               [12]  405 	mov	a,r5
      0000E0 CA               [12]  406 	xch	a,r2
      0000E1 25 E0            [12]  407 	add	a,acc
      0000E3 CA               [12]  408 	xch	a,r2
      0000E4 33               [12]  409 	rlc	a
      0000E5 EA               [12]  410 	mov	a,r2
      0000E6 24 08            [12]  411 	add	a,#_main_digit_1_2
      0000E8 F9               [12]  412 	mov	r1,a
      0000E9 87 02            [24]  413 	mov	ar2,@r1
      0000EB 09               [12]  414 	inc	r1
      0000EC 87 03            [24]  415 	mov	ar3,@r1
      0000EE 19               [12]  416 	dec	r1
      0000EF EB               [12]  417 	mov	a,r3
      0000F0 CA               [12]  418 	xch	a,r2
      0000F1 25 E0            [12]  419 	add	a,acc
      0000F3 CA               [12]  420 	xch	a,r2
      0000F4 33               [12]  421 	rlc	a
      0000F5 EA               [12]  422 	mov	a,r2
      0000F6 24 10            [12]  423 	add	a,#_main_angka_1_2
      0000F8 F9               [12]  424 	mov	r1,a
      0000F9 87 02            [24]  425 	mov	ar2,@r1
      0000FB 09               [12]  426 	inc	r1
      0000FC 87 03            [24]  427 	mov	ar3,@r1
      0000FE 19               [12]  428 	dec	r1
      0000FF 8A 90            [24]  429 	mov	_P1,r2
                                    430 ;	uts_1.c:38: k++;
      000101 0C               [12]  431 	inc	r4
      000102 BC 00 01         [24]  432 	cjne	r4,#0x00,00169$
      000105 0D               [12]  433 	inc	r5
      000106                        434 00169$:
                                    435 ;	uts_1.c:40: for(t = 0; t<DELAY;t++){
      000106 75 28 0A         [24]  436 	mov	_main_t_1_2,#0x0a
      000109 75 29 00         [24]  437 	mov	(_main_t_1_2 + 1),#0x00
      00010C                        438 00118$:
      00010C E5 28            [12]  439 	mov	a,_main_t_1_2
      00010E 24 FF            [12]  440 	add	a,#0xff
      000110 FA               [12]  441 	mov	r2,a
      000111 E5 29            [12]  442 	mov	a,(_main_t_1_2 + 1)
      000113 34 FF            [12]  443 	addc	a,#0xff
      000115 FB               [12]  444 	mov	r3,a
      000116 8A 28            [24]  445 	mov	_main_t_1_2,r2
      000118 8B 29            [24]  446 	mov	(_main_t_1_2 + 1),r3
      00011A EA               [12]  447 	mov	a,r2
      00011B 4B               [12]  448 	orl	a,r3
      00011C 70 EE            [24]  449 	jnz	00118$
                                    450 ;	uts_1.c:43: P1 = 0xFF; // memadamkan sevent segment sebelum berganti digit.
      00011E 75 90 FF         [24]  451 	mov	_P1,#0xff
                                    452 ;	uts_1.c:35: for(j = 1; j>=0; j--){
      000121 1E               [12]  453 	dec	r6
      000122 BE FF 01         [24]  454 	cjne	r6,#0xff,00171$
      000125 1F               [12]  455 	dec	r7
      000126                        456 00171$:
      000126 EF               [12]  457 	mov	a,r7
      000127 30 E7 A5         [24]  458 	jnb	acc.7,00119$
                                    459 ;	uts_1.c:34: for(i= 1; i>=0 ; i--){
      00012A 8C 26            [24]  460 	mov	_main_k_1_2,r4
      00012C 8D 27            [24]  461 	mov	(_main_k_1_2 + 1),r5
      00012E 15 24            [12]  462 	dec	_main_i_1_2
      000130 74 FF            [12]  463 	mov	a,#0xff
      000132 B5 24 02         [24]  464 	cjne	a,_main_i_1_2,00173$
      000135 15 25            [12]  465 	dec	(_main_i_1_2 + 1)
      000137                        466 00173$:
      000137 E5 25            [12]  467 	mov	a,(_main_i_1_2 + 1)
      000139 30 E7 8B         [24]  468 	jnb	acc.7,00129$
                                    469 ;	uts_1.c:32: for(kal = 0; kal<KALIBRATOR; kal++){
      00013C 05 2A            [12]  470 	inc	_main_kal_2_3
      00013E E4               [12]  471 	clr	a
      00013F B5 2A 02         [24]  472 	cjne	a,_main_kal_2_3,00175$
      000142 05 2B            [12]  473 	inc	(_main_kal_2_3 + 1)
      000144                        474 00175$:
      000144 C3               [12]  475 	clr	c
      000145 E5 2A            [12]  476 	mov	a,_main_kal_2_3
      000147 94 3C            [12]  477 	subb	a,#0x3c
      000149 E5 2B            [12]  478 	mov	a,(_main_kal_2_3 + 1)
      00014B 64 80            [12]  479 	xrl	a,#0x80
      00014D 94 80            [12]  480 	subb	a,#0x80
      00014F 50 03            [24]  481 	jnc	00176$
      000151 02 00 BD         [24]  482 	ljmp	00123$
      000154                        483 00176$:
                                    484 ;	uts_1.c:48: digit[3]++;
      000154 AE 0E            [24]  485 	mov	r6,((_main_digit_1_2 + 0x0006) + 0)
      000156 AF 0F            [24]  486 	mov	r7,((_main_digit_1_2 + 0x0006) + 1)
      000158 0E               [12]  487 	inc	r6
      000159 BE 00 01         [24]  488 	cjne	r6,#0x00,00177$
      00015C 0F               [12]  489 	inc	r7
      00015D                        490 00177$:
      00015D 8E 0E            [24]  491 	mov	((_main_digit_1_2 + 0x0006) + 0),r6
      00015F 8F 0F            [24]  492 	mov	((_main_digit_1_2 + 0x0006) + 1),r7
                                    493 ;	uts_1.c:49: if(digit[3] >= 10){
      000161 C3               [12]  494 	clr	c
      000162 EE               [12]  495 	mov	a,r6
      000163 94 0A            [12]  496 	subb	a,#0x0a
      000165 EF               [12]  497 	mov	a,r7
      000166 94 00            [12]  498 	subb	a,#0x00
      000168 40 12            [24]  499 	jc	00106$
                                    500 ;	uts_1.c:50: digit[3] = 0;
      00016A E4               [12]  501 	clr	a
      00016B F5 0E            [12]  502 	mov	((_main_digit_1_2 + 0x0006) + 0),a
      00016D F5 0F            [12]  503 	mov	((_main_digit_1_2 + 0x0006) + 1),a
                                    504 ;	uts_1.c:51: digit[2]++;
      00016F AE 0C            [24]  505 	mov	r6,((_main_digit_1_2 + 0x0004) + 0)
      000171 AF 0D            [24]  506 	mov	r7,((_main_digit_1_2 + 0x0004) + 1)
      000173 0E               [12]  507 	inc	r6
      000174 BE 00 01         [24]  508 	cjne	r6,#0x00,00179$
      000177 0F               [12]  509 	inc	r7
      000178                        510 00179$:
      000178 8E 0C            [24]  511 	mov	((_main_digit_1_2 + 0x0004) + 0),r6
      00017A 8F 0D            [24]  512 	mov	((_main_digit_1_2 + 0x0004) + 1),r7
      00017C                        513 00106$:
                                    514 ;	uts_1.c:53: if(digit[2] >= 6){
      00017C C3               [12]  515 	clr	c
      00017D E5 0C            [12]  516 	mov	a,(_main_digit_1_2 + 0x0004)
      00017F 94 06            [12]  517 	subb	a,#0x06
      000181 E5 0D            [12]  518 	mov	a,((_main_digit_1_2 + 0x0004) + 1)
      000183 94 00            [12]  519 	subb	a,#0x00
      000185 40 12            [24]  520 	jc	00108$
                                    521 ;	uts_1.c:54: digit[2] = 0;
      000187 E4               [12]  522 	clr	a
      000188 F5 0C            [12]  523 	mov	((_main_digit_1_2 + 0x0004) + 0),a
      00018A F5 0D            [12]  524 	mov	((_main_digit_1_2 + 0x0004) + 1),a
                                    525 ;	uts_1.c:55: digit[1]++;
      00018C AE 0A            [24]  526 	mov	r6,((_main_digit_1_2 + 0x0002) + 0)
      00018E AF 0B            [24]  527 	mov	r7,((_main_digit_1_2 + 0x0002) + 1)
      000190 0E               [12]  528 	inc	r6
      000191 BE 00 01         [24]  529 	cjne	r6,#0x00,00181$
      000194 0F               [12]  530 	inc	r7
      000195                        531 00181$:
      000195 8E 0A            [24]  532 	mov	((_main_digit_1_2 + 0x0002) + 0),r6
      000197 8F 0B            [24]  533 	mov	((_main_digit_1_2 + 0x0002) + 1),r7
      000199                        534 00108$:
                                    535 ;	uts_1.c:57: if(digit[1]>=10){
      000199 C3               [12]  536 	clr	c
      00019A E5 0A            [12]  537 	mov	a,(_main_digit_1_2 + 0x0002)
      00019C 94 0A            [12]  538 	subb	a,#0x0a
      00019E E5 0B            [12]  539 	mov	a,((_main_digit_1_2 + 0x0002) + 1)
      0001A0 94 00            [12]  540 	subb	a,#0x00
      0001A2 40 12            [24]  541 	jc	00110$
                                    542 ;	uts_1.c:58: digit[1]=0;
      0001A4 E4               [12]  543 	clr	a
      0001A5 F5 0A            [12]  544 	mov	((_main_digit_1_2 + 0x0002) + 0),a
      0001A7 F5 0B            [12]  545 	mov	((_main_digit_1_2 + 0x0002) + 1),a
                                    546 ;	uts_1.c:59: digit[0]++;
      0001A9 AE 08            [24]  547 	mov	r6,(_main_digit_1_2 + 0)
      0001AB AF 09            [24]  548 	mov	r7,(_main_digit_1_2 + 1)
      0001AD 0E               [12]  549 	inc	r6
      0001AE BE 00 01         [24]  550 	cjne	r6,#0x00,00183$
      0001B1 0F               [12]  551 	inc	r7
      0001B2                        552 00183$:
      0001B2 8E 08            [24]  553 	mov	(_main_digit_1_2 + 0),r6
      0001B4 8F 09            [24]  554 	mov	(_main_digit_1_2 + 1),r7
      0001B6                        555 00110$:
                                    556 ;	uts_1.c:61: if(digit[0]*10 + digit[1] >= 24){
      0001B6 85 08 2C         [24]  557 	mov	__mulint_PARM_2,(_main_digit_1_2 + 0)
      0001B9 85 09 2D         [24]  558 	mov	(__mulint_PARM_2 + 1),(_main_digit_1_2 + 1)
      0001BC 90 00 0A         [24]  559 	mov	dptr,#0x000a
      0001BF 12 01 E6         [24]  560 	lcall	__mulint
      0001C2 AE 82            [24]  561 	mov	r6,dpl
      0001C4 AF 83            [24]  562 	mov	r7,dph
      0001C6 E5 0A            [12]  563 	mov	a,(_main_digit_1_2 + 0x0002)
      0001C8 2E               [12]  564 	add	a,r6
      0001C9 FE               [12]  565 	mov	r6,a
      0001CA E5 0B            [12]  566 	mov	a,((_main_digit_1_2 + 0x0002) + 1)
      0001CC 3F               [12]  567 	addc	a,r7
      0001CD FF               [12]  568 	mov	r7,a
      0001CE C3               [12]  569 	clr	c
      0001CF EE               [12]  570 	mov	a,r6
      0001D0 94 18            [12]  571 	subb	a,#0x18
      0001D2 EF               [12]  572 	mov	a,r7
      0001D3 94 00            [12]  573 	subb	a,#0x00
      0001D5 50 03            [24]  574 	jnc	00184$
      0001D7 02 00 B8         [24]  575 	ljmp	00133$
      0001DA                        576 00184$:
                                    577 ;	uts_1.c:62: digit[0] = 0;
      0001DA E4               [12]  578 	clr	a
      0001DB F5 08            [12]  579 	mov	(_main_digit_1_2 + 0),a
      0001DD F5 09            [12]  580 	mov	(_main_digit_1_2 + 1),a
                                    581 ;	uts_1.c:63: digit[1] = 0;
      0001DF F5 0A            [12]  582 	mov	((_main_digit_1_2 + 0x0002) + 0),a
      0001E1 F5 0B            [12]  583 	mov	((_main_digit_1_2 + 0x0002) + 1),a
      0001E3 02 00 B8         [24]  584 	ljmp	00133$
                                    585 	.area CSEG    (CODE)
                                    586 	.area CONST   (CODE)
                                    587 	.area XINIT   (CODE)
                                    588 	.area CABS    (ABS,CODE)
