                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module uts_3
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
      000008                        227 _main_angka_1_2:
      000008                        228 	.ds 22
                                    229 ;--------------------------------------------------------
                                    230 ; Stack segment in internal ram 
                                    231 ;--------------------------------------------------------
                                    232 	.area	SSEG
      00001E                        233 __start__stack:
      00001E                        234 	.ds	1
                                    235 
                                    236 ;--------------------------------------------------------
                                    237 ; indirectly addressable internal ram data
                                    238 ;--------------------------------------------------------
                                    239 	.area ISEG    (DATA)
                                    240 ;--------------------------------------------------------
                                    241 ; absolute internal ram data
                                    242 ;--------------------------------------------------------
                                    243 	.area IABS    (ABS,DATA)
                                    244 	.area IABS    (ABS,DATA)
                                    245 ;--------------------------------------------------------
                                    246 ; bit data
                                    247 ;--------------------------------------------------------
                                    248 	.area BSEG    (BIT)
                                    249 ;--------------------------------------------------------
                                    250 ; paged external ram data
                                    251 ;--------------------------------------------------------
                                    252 	.area PSEG    (PAG,XDATA)
                                    253 ;--------------------------------------------------------
                                    254 ; external ram data
                                    255 ;--------------------------------------------------------
                                    256 	.area XSEG    (XDATA)
                                    257 ;--------------------------------------------------------
                                    258 ; absolute external ram data
                                    259 ;--------------------------------------------------------
                                    260 	.area XABS    (ABS,XDATA)
                                    261 ;--------------------------------------------------------
                                    262 ; external initialized ram data
                                    263 ;--------------------------------------------------------
                                    264 	.area XISEG   (XDATA)
                                    265 	.area HOME    (CODE)
                                    266 	.area GSINIT0 (CODE)
                                    267 	.area GSINIT1 (CODE)
                                    268 	.area GSINIT2 (CODE)
                                    269 	.area GSINIT3 (CODE)
                                    270 	.area GSINIT4 (CODE)
                                    271 	.area GSINIT5 (CODE)
                                    272 	.area GSINIT  (CODE)
                                    273 	.area GSFINAL (CODE)
                                    274 	.area CSEG    (CODE)
                                    275 ;--------------------------------------------------------
                                    276 ; interrupt vector 
                                    277 ;--------------------------------------------------------
                                    278 	.area HOME    (CODE)
      000000                        279 __interrupt_vect:
      000000 02 00 06         [24]  280 	ljmp	__sdcc_gsinit_startup
                                    281 ;--------------------------------------------------------
                                    282 ; global & static initialisations
                                    283 ;--------------------------------------------------------
                                    284 	.area HOME    (CODE)
                                    285 	.area GSINIT  (CODE)
                                    286 	.area GSFINAL (CODE)
                                    287 	.area GSINIT  (CODE)
                                    288 	.globl __sdcc_gsinit_startup
                                    289 	.globl __sdcc_program_startup
                                    290 	.globl __start__stack
                                    291 	.globl __mcs51_genXINIT
                                    292 	.globl __mcs51_genXRAMCLEAR
                                    293 	.globl __mcs51_genRAMCLEAR
                                    294 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  295 	ljmp	__sdcc_program_startup
                                    296 ;--------------------------------------------------------
                                    297 ; Home
                                    298 ;--------------------------------------------------------
                                    299 	.area HOME    (CODE)
                                    300 	.area HOME    (CODE)
      000003                        301 __sdcc_program_startup:
      000003 02 00 62         [24]  302 	ljmp	_main
                                    303 ;	return from main will return to caller
                                    304 ;--------------------------------------------------------
                                    305 ; code
                                    306 ;--------------------------------------------------------
                                    307 	.area CSEG    (CODE)
                                    308 ;------------------------------------------------------------
                                    309 ;Allocation info for local variables in function 'main'
                                    310 ;------------------------------------------------------------
                                    311 ;angka                     Allocated with name '_main_angka_1_2'
                                    312 ;------------------------------------------------------------
                                    313 ;	uts_3.c:23: void main(void)
                                    314 ;	-----------------------------------------
                                    315 ;	 function main
                                    316 ;	-----------------------------------------
      000062                        317 _main:
                           000007   318 	ar7 = 0x07
                           000006   319 	ar6 = 0x06
                           000005   320 	ar5 = 0x05
                           000004   321 	ar4 = 0x04
                           000003   322 	ar3 = 0x03
                           000002   323 	ar2 = 0x02
                           000001   324 	ar1 = 0x01
                           000000   325 	ar0 = 0x00
                                    326 ;	uts_3.c:25: unsigned int angka[11] = {0x0C0,0x0F9,0x0A4,0x0B0,0x99,0x92,0x82,0x0F8,0x80,0x90,0xBF}; //data angka
      000062 75 08 C0         [24]  327 	mov	(_main_angka_1_2 + 0),#0xc0
      000065 75 09 00         [24]  328 	mov	(_main_angka_1_2 + 1),#0x00
      000068 75 0A F9         [24]  329 	mov	((_main_angka_1_2 + 0x0002) + 0),#0xf9
      00006B 75 0B 00         [24]  330 	mov	((_main_angka_1_2 + 0x0002) + 1),#0x00
      00006E 75 0C A4         [24]  331 	mov	((_main_angka_1_2 + 0x0004) + 0),#0xa4
      000071 75 0D 00         [24]  332 	mov	((_main_angka_1_2 + 0x0004) + 1),#0x00
      000074 75 0E B0         [24]  333 	mov	((_main_angka_1_2 + 0x0006) + 0),#0xb0
      000077 75 0F 00         [24]  334 	mov	((_main_angka_1_2 + 0x0006) + 1),#0x00
      00007A 75 10 99         [24]  335 	mov	((_main_angka_1_2 + 0x0008) + 0),#0x99
      00007D 75 11 00         [24]  336 	mov	((_main_angka_1_2 + 0x0008) + 1),#0x00
      000080 75 12 92         [24]  337 	mov	((_main_angka_1_2 + 0x000a) + 0),#0x92
      000083 75 13 00         [24]  338 	mov	((_main_angka_1_2 + 0x000a) + 1),#0x00
      000086 75 14 82         [24]  339 	mov	((_main_angka_1_2 + 0x000c) + 0),#0x82
      000089 75 15 00         [24]  340 	mov	((_main_angka_1_2 + 0x000c) + 1),#0x00
      00008C 75 16 F8         [24]  341 	mov	((_main_angka_1_2 + 0x000e) + 0),#0xf8
      00008F 75 17 00         [24]  342 	mov	((_main_angka_1_2 + 0x000e) + 1),#0x00
      000092 75 18 80         [24]  343 	mov	((_main_angka_1_2 + 0x0010) + 0),#0x80
      000095 75 19 00         [24]  344 	mov	((_main_angka_1_2 + 0x0010) + 1),#0x00
      000098 75 1A 90         [24]  345 	mov	((_main_angka_1_2 + 0x0012) + 0),#0x90
      00009B 75 1B 00         [24]  346 	mov	((_main_angka_1_2 + 0x0012) + 1),#0x00
      00009E 75 1C BF         [24]  347 	mov	((_main_angka_1_2 + 0x0014) + 0),#0xbf
      0000A1 75 1D 00         [24]  348 	mov	((_main_angka_1_2 + 0x0014) + 1),#0x00
                                    349 ;	uts_3.c:26: K0 = 1;  K1 = 1;  K2 = 1;   /* awali dgn semua kolom = HI */
      0000A4 D2 84            [12]  350 	setb	_P0_4
      0000A6 D2 85            [12]  351 	setb	_P0_5
      0000A8 D2 86            [12]  352 	setb	_P0_6
                                    353 ;	uts_3.c:27: P0_7 = 1; //menyalakan seven segment
      0000AA D2 87            [12]  354 	setb	_P0_7
                                    355 ;	uts_3.c:28: while (1) {
      0000AC                        356 00162$:
                                    357 ;	uts_3.c:29: B0 = 0;  B1 = 1;  B2 = 1;  B3 = 1;         /* uji baris-0 */
      0000AC C2 80            [12]  358 	clr	_P0_0
      0000AE D2 81            [12]  359 	setb	_P0_1
      0000B0 D2 82            [12]  360 	setb	_P0_2
      0000B2 D2 83            [12]  361 	setb	_P0_3
                                    362 ;	uts_3.c:30: if (K0 == 0) {        /* tombol keypad (B0,K0) ditekan */
      0000B4 20 84 08         [24]  363 	jb	_P0_4,00105$
                                    364 ;	uts_3.c:31: while (K0 == 0) ;   /* tunggu sampai tombol dilepas */
      0000B7                        365 00101$:
      0000B7 30 84 FD         [24]  366 	jnb	_P0_4,00101$
                                    367 ;	uts_3.c:32: SS = angka[10];
      0000BA 85 1C 90         [24]  368 	mov	_P1,(_main_angka_1_2 + 0x0014)
                                    369 ;	uts_3.c:33: K0 = 1;             /* awali semua kolom = HI */
      0000BD D2 84            [12]  370 	setb	_P0_4
      0000BF                        371 00105$:
                                    372 ;	uts_3.c:36: B0 = 0;  B1 = 1;  B2 = 1;  B3 = 1;         /* uji baris-0 */
      0000BF C2 80            [12]  373 	clr	_P0_0
      0000C1 D2 81            [12]  374 	setb	_P0_1
      0000C3 D2 82            [12]  375 	setb	_P0_2
      0000C5 D2 83            [12]  376 	setb	_P0_3
                                    377 ;	uts_3.c:37: if (K1 == 0) {        /* tombol keypad (B0,K1) ditekan */
      0000C7 20 85 08         [24]  378 	jb	_P0_5,00110$
                                    379 ;	uts_3.c:38: while (K1 == 0) ;
      0000CA                        380 00106$:
      0000CA 30 85 FD         [24]  381 	jnb	_P0_5,00106$
                                    382 ;	uts_3.c:39: SS = angka[0];
      0000CD 85 08 90         [24]  383 	mov	_P1,_main_angka_1_2
                                    384 ;	uts_3.c:40: K1 = 1;
      0000D0 D2 85            [12]  385 	setb	_P0_5
      0000D2                        386 00110$:
                                    387 ;	uts_3.c:42: B0 = 0;  B1 = 1;  B2 = 1;  B3 = 1;         /* uji baris-0 */
      0000D2 C2 80            [12]  388 	clr	_P0_0
      0000D4 D2 81            [12]  389 	setb	_P0_1
      0000D6 D2 82            [12]  390 	setb	_P0_2
      0000D8 D2 83            [12]  391 	setb	_P0_3
                                    392 ;	uts_3.c:43: if (K2 == 0) {        /* tombol keypad (B0,K2) ditekan */
      0000DA 20 86 08         [24]  393 	jb	_P0_6,00115$
                                    394 ;	uts_3.c:44: while (K2 == 0) ;
      0000DD                        395 00111$:
      0000DD 30 86 FD         [24]  396 	jnb	_P0_6,00111$
                                    397 ;	uts_3.c:45: SS = angka[10];
      0000E0 85 1C 90         [24]  398 	mov	_P1,(_main_angka_1_2 + 0x0014)
                                    399 ;	uts_3.c:46: K2 = 1;
      0000E3 D2 86            [12]  400 	setb	_P0_6
      0000E5                        401 00115$:
                                    402 ;	uts_3.c:48: B0 = 1;  B1 = 0;  B2 = 1;  B3 = 1;         /* uji baris-1 */
      0000E5 D2 80            [12]  403 	setb	_P0_0
      0000E7 C2 81            [12]  404 	clr	_P0_1
      0000E9 D2 82            [12]  405 	setb	_P0_2
      0000EB D2 83            [12]  406 	setb	_P0_3
                                    407 ;	uts_3.c:49: if (K0 == 0) {        /* tombol keypad (B1,K0) ditekan */
      0000ED 20 84 08         [24]  408 	jb	_P0_4,00120$
                                    409 ;	uts_3.c:50: while (K0 == 0) ;
      0000F0                        410 00116$:
      0000F0 30 84 FD         [24]  411 	jnb	_P0_4,00116$
                                    412 ;	uts_3.c:51: SS = angka[9];
      0000F3 85 1A 90         [24]  413 	mov	_P1,(_main_angka_1_2 + 0x0012)
                                    414 ;	uts_3.c:52: K0 = 1;
      0000F6 D2 84            [12]  415 	setb	_P0_4
      0000F8                        416 00120$:
                                    417 ;	uts_3.c:54: B0 = 1;  B1 = 0;  B2 = 1;  B3 = 1;         /* uji baris-1 */
      0000F8 D2 80            [12]  418 	setb	_P0_0
      0000FA C2 81            [12]  419 	clr	_P0_1
      0000FC D2 82            [12]  420 	setb	_P0_2
      0000FE D2 83            [12]  421 	setb	_P0_3
                                    422 ;	uts_3.c:55: if (K1 == 0) {        /* tombol keypad (B1,K1) ditekan */
      000100 20 85 08         [24]  423 	jb	_P0_5,00125$
                                    424 ;	uts_3.c:56: while (K1 == 0) ;
      000103                        425 00121$:
      000103 30 85 FD         [24]  426 	jnb	_P0_5,00121$
                                    427 ;	uts_3.c:57: SS = angka[8];
      000106 85 18 90         [24]  428 	mov	_P1,(_main_angka_1_2 + 0x0010)
                                    429 ;	uts_3.c:58: K1 = 1;
      000109 D2 85            [12]  430 	setb	_P0_5
      00010B                        431 00125$:
                                    432 ;	uts_3.c:60: B0 = 1;  B1 = 0;  B2 = 1;  B3 = 1;         /* uji baris-1 */
      00010B D2 80            [12]  433 	setb	_P0_0
      00010D C2 81            [12]  434 	clr	_P0_1
      00010F D2 82            [12]  435 	setb	_P0_2
      000111 D2 83            [12]  436 	setb	_P0_3
                                    437 ;	uts_3.c:61: if (K2 == 0) {        /* tombol keypad (B1,K2) ditekan */
      000113 20 86 08         [24]  438 	jb	_P0_6,00130$
                                    439 ;	uts_3.c:62: while (K2 == 0) ;
      000116                        440 00126$:
      000116 30 86 FD         [24]  441 	jnb	_P0_6,00126$
                                    442 ;	uts_3.c:63: SS = angka[7];
      000119 85 16 90         [24]  443 	mov	_P1,(_main_angka_1_2 + 0x000e)
                                    444 ;	uts_3.c:64: K2 = 1;
      00011C D2 86            [12]  445 	setb	_P0_6
      00011E                        446 00130$:
                                    447 ;	uts_3.c:66: B0 = 1;  B1 = 1;  B2 = 0;  B3 = 1;         /* uji baris-2 */
      00011E D2 80            [12]  448 	setb	_P0_0
      000120 D2 81            [12]  449 	setb	_P0_1
      000122 C2 82            [12]  450 	clr	_P0_2
      000124 D2 83            [12]  451 	setb	_P0_3
                                    452 ;	uts_3.c:67: if (K0 == 0) {        /* tombol keypad (B2,K0) ditekan */
      000126 20 84 08         [24]  453 	jb	_P0_4,00135$
                                    454 ;	uts_3.c:68: while (K0 == 0) ;
      000129                        455 00131$:
      000129 30 84 FD         [24]  456 	jnb	_P0_4,00131$
                                    457 ;	uts_3.c:69: SS = angka[6];
      00012C 85 14 90         [24]  458 	mov	_P1,(_main_angka_1_2 + 0x000c)
                                    459 ;	uts_3.c:70: K0 = 1;
      00012F D2 84            [12]  460 	setb	_P0_4
      000131                        461 00135$:
                                    462 ;	uts_3.c:72: B0 = 1;  B1 = 1;  B2 = 0;  B3 = 1;         /* uji baris-2 */
      000131 D2 80            [12]  463 	setb	_P0_0
      000133 D2 81            [12]  464 	setb	_P0_1
      000135 C2 82            [12]  465 	clr	_P0_2
      000137 D2 83            [12]  466 	setb	_P0_3
                                    467 ;	uts_3.c:73: if (K1 == 0) {        /* tombol keypad (B2,K1) ditekan */
      000139 20 85 08         [24]  468 	jb	_P0_5,00140$
                                    469 ;	uts_3.c:74: while (K1 == 0) ;
      00013C                        470 00136$:
      00013C 30 85 FD         [24]  471 	jnb	_P0_5,00136$
                                    472 ;	uts_3.c:75: SS = angka[5];
      00013F 85 12 90         [24]  473 	mov	_P1,(_main_angka_1_2 + 0x000a)
                                    474 ;	uts_3.c:76: K1 = 1;
      000142 D2 85            [12]  475 	setb	_P0_5
      000144                        476 00140$:
                                    477 ;	uts_3.c:78: B0 = 1;  B1 = 1;  B2 = 0;  B3 = 1;         /* uji baris-2 */
      000144 D2 80            [12]  478 	setb	_P0_0
      000146 D2 81            [12]  479 	setb	_P0_1
      000148 C2 82            [12]  480 	clr	_P0_2
      00014A D2 83            [12]  481 	setb	_P0_3
                                    482 ;	uts_3.c:79: if (K2 == 0) {        /* tombol keypad (B2,K2) ditekan */
      00014C 20 86 08         [24]  483 	jb	_P0_6,00145$
                                    484 ;	uts_3.c:80: while (K2 == 0) ;
      00014F                        485 00141$:
      00014F 30 86 FD         [24]  486 	jnb	_P0_6,00141$
                                    487 ;	uts_3.c:81: SS = angka[4];
      000152 85 10 90         [24]  488 	mov	_P1,(_main_angka_1_2 + 0x0008)
                                    489 ;	uts_3.c:82: K2 = 1;
      000155 D2 86            [12]  490 	setb	_P0_6
      000157                        491 00145$:
                                    492 ;	uts_3.c:84: B0 = 1;  B1 = 1;  B2 = 1;  B3 = 0;         /* uji baris-3 */
      000157 D2 80            [12]  493 	setb	_P0_0
      000159 D2 81            [12]  494 	setb	_P0_1
      00015B D2 82            [12]  495 	setb	_P0_2
      00015D C2 83            [12]  496 	clr	_P0_3
                                    497 ;	uts_3.c:85: if (K0 == 0) {        /* tombol keypad (B3,K0) ditekan */
      00015F 20 84 08         [24]  498 	jb	_P0_4,00150$
                                    499 ;	uts_3.c:86: while (K0 == 0) ;
      000162                        500 00146$:
      000162 30 84 FD         [24]  501 	jnb	_P0_4,00146$
                                    502 ;	uts_3.c:87: SS = angka[3];
      000165 85 0E 90         [24]  503 	mov	_P1,(_main_angka_1_2 + 0x0006)
                                    504 ;	uts_3.c:88: K0 = 1;
      000168 D2 84            [12]  505 	setb	_P0_4
      00016A                        506 00150$:
                                    507 ;	uts_3.c:90: B0 = 1;  B1 = 1;  B2 = 1;  B3 = 0;         /* uji baris-3 */
      00016A D2 80            [12]  508 	setb	_P0_0
      00016C D2 81            [12]  509 	setb	_P0_1
      00016E D2 82            [12]  510 	setb	_P0_2
      000170 C2 83            [12]  511 	clr	_P0_3
                                    512 ;	uts_3.c:91: if (K1 == 0) {        /* tombol keypad (B3,K1) ditekan */
      000172 20 85 08         [24]  513 	jb	_P0_5,00155$
                                    514 ;	uts_3.c:92: while (K1 == 0) ;
      000175                        515 00151$:
      000175 30 85 FD         [24]  516 	jnb	_P0_5,00151$
                                    517 ;	uts_3.c:93: SS = angka[2];
      000178 85 0C 90         [24]  518 	mov	_P1,(_main_angka_1_2 + 0x0004)
                                    519 ;	uts_3.c:94: K1 = 1;
      00017B D2 85            [12]  520 	setb	_P0_5
      00017D                        521 00155$:
                                    522 ;	uts_3.c:96: B0 = 1;  B1 = 1;  B2 = 1;  B3 = 0;         /* uji baris-3 */
      00017D D2 80            [12]  523 	setb	_P0_0
      00017F D2 81            [12]  524 	setb	_P0_1
      000181 D2 82            [12]  525 	setb	_P0_2
      000183 C2 83            [12]  526 	clr	_P0_3
                                    527 ;	uts_3.c:97: if (K2 == 0) {        /* tombol keypad (B3,K2) ditekan */
      000185 30 86 03         [24]  528 	jnb	_P0_6,00263$
      000188 02 00 AC         [24]  529 	ljmp	00162$
      00018B                        530 00263$:
                                    531 ;	uts_3.c:98: while (K2 == 0) ;
      00018B                        532 00156$:
      00018B 30 86 FD         [24]  533 	jnb	_P0_6,00156$
                                    534 ;	uts_3.c:99: SS = angka[1];
      00018E 85 0A 90         [24]  535 	mov	_P1,(_main_angka_1_2 + 0x0002)
                                    536 ;	uts_3.c:100: K2 = 1;
      000191 D2 86            [12]  537 	setb	_P0_6
      000193 02 00 AC         [24]  538 	ljmp	00162$
                                    539 	.area CSEG    (CODE)
                                    540 	.area CONST   (CODE)
                                    541 	.area XINIT   (CODE)
                                    542 	.area CABS    (ABS,CODE)
