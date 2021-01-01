.include "macros.inc"

.section .text  # 0x80166EFC - 0x80167898

.global func_80166EFC
func_80166EFC:
/* 80166EFC 00163EFC  A0 A4 01 A2 */	lhz r5, 0x1a2(r4)
/* 80166F00 00163F00  54 A5 07 FF */	clrlwi. r5, r5, 0x1f
/* 80166F04 00163F04  41 82 01 18 */	beq lbl_8016701C
/* 80166F08 00163F08  C8 04 01 90 */	lfd f0, 0x190(r4)
/* 80166F0C 00163F0C  FD FE 05 8E */	mtfsf 0xff, f0
/* 80166F10 00163F10  7C B8 E2 A6 */	mfspr r5, 0x398
/* 80166F14 00163F14  54 A5 1F FF */	rlwinm. r5, r5, 3, 0x1f, 0x1f
/* 80166F18 00163F18  41 82 00 84 */	beq lbl_80166F9C
/* 80166F1C 00163F1C  E0 04 01 C8 */	psq_l p0, 456(r4), 0, qr0
/* 80166F20 00163F20  E0 24 01 D0 */	psq_l p1, 464(r4), 0, qr0
/* 80166F24 00163F24  E0 44 01 D8 */	psq_l p2, 472(r4), 0, qr0
/* 80166F28 00163F28  E0 64 01 E0 */	psq_l p3, 480(r4), 0, qr0
/* 80166F2C 00163F2C  E0 84 01 E8 */	psq_l p4, 488(r4), 0, qr0
/* 80166F30 00163F30  E0 A4 01 F0 */	psq_l p5, 496(r4), 0, qr0
/* 80166F34 00163F34  E0 C4 01 F8 */	psq_l p6, 504(r4), 0, qr0
/* 80166F38 00163F38  E0 E4 02 00 */	psq_l p7, 512(r4), 0, qr0
/* 80166F3C 00163F3C  E1 04 02 08 */	psq_l p8, 520(r4), 0, qr0
/* 80166F40 00163F40  E1 24 02 10 */	psq_l p9, 528(r4), 0, qr0
/* 80166F44 00163F44  E1 44 02 18 */	psq_l p10, 536(r4), 0, qr0
/* 80166F48 00163F48  E1 64 02 20 */	psq_l p11, 544(r4), 0, qr0
/* 80166F4C 00163F4C  E1 84 02 28 */	psq_l p12, 552(r4), 0, qr0
/* 80166F50 00163F50  E1 A4 02 30 */	psq_l p13, 560(r4), 0, qr0
/* 80166F54 00163F54  E1 C4 02 38 */	psq_l p14, 568(r4), 0, qr0
/* 80166F58 00163F58  E1 E4 02 40 */	psq_l p15, 576(r4), 0, qr0
/* 80166F5C 00163F5C  E2 04 02 48 */	psq_l p16, 584(r4), 0, qr0
/* 80166F60 00163F60  E2 24 02 50 */	psq_l p17, 592(r4), 0, qr0
/* 80166F64 00163F64  E2 44 02 58 */	psq_l p18, 600(r4), 0, qr0
/* 80166F68 00163F68  E2 64 02 60 */	psq_l p19, 608(r4), 0, qr0
/* 80166F6C 00163F6C  E2 84 02 68 */	psq_l p20, 616(r4), 0, qr0
/* 80166F70 00163F70  E2 A4 02 70 */	psq_l p21, 624(r4), 0, qr0
/* 80166F74 00163F74  E2 C4 02 78 */	psq_l p22, 632(r4), 0, qr0
/* 80166F78 00163F78  E2 E4 02 80 */	psq_l p23, 640(r4), 0, qr0
/* 80166F7C 00163F7C  E3 04 02 88 */	psq_l p24, 648(r4), 0, qr0
/* 80166F80 00163F80  E3 24 02 90 */	psq_l p25, 656(r4), 0, qr0
/* 80166F84 00163F84  E3 44 02 98 */	psq_l p26, 664(r4), 0, qr0
/* 80166F88 00163F88  E3 64 02 A0 */	psq_l p27, 672(r4), 0, qr0
/* 80166F8C 00163F8C  E3 84 02 A8 */	psq_l p28, 680(r4), 0, qr0
/* 80166F90 00163F90  E3 A4 02 B0 */	psq_l p29, 688(r4), 0, qr0
/* 80166F94 00163F94  E3 C4 02 B8 */	psq_l p30, 696(r4), 0, qr0
/* 80166F98 00163F98  E3 E4 02 C0 */	psq_l p31, 704(r4), 0, qr0
lbl_80166F9C:
/* 80166F9C 00163F9C  C8 04 00 90 */	lfd f0, 0x90(r4)
/* 80166FA0 00163FA0  C8 24 00 98 */	lfd f1, 0x98(r4)
/* 80166FA4 00163FA4  C8 44 00 A0 */	lfd f2, 0xa0(r4)
/* 80166FA8 00163FA8  C8 64 00 A8 */	lfd f3, 0xa8(r4)
/* 80166FAC 00163FAC  C8 84 00 B0 */	lfd f4, 0xb0(r4)
/* 80166FB0 00163FB0  C8 A4 00 B8 */	lfd f5, 0xb8(r4)
/* 80166FB4 00163FB4  C8 C4 00 C0 */	lfd f6, 0xc0(r4)
/* 80166FB8 00163FB8  C8 E4 00 C8 */	lfd f7, 0xc8(r4)
/* 80166FBC 00163FBC  C9 04 00 D0 */	lfd f8, 0xd0(r4)
/* 80166FC0 00163FC0  C9 24 00 D8 */	lfd f9, 0xd8(r4)
/* 80166FC4 00163FC4  C9 44 00 E0 */	lfd f10, 0xe0(r4)
/* 80166FC8 00163FC8  C9 64 00 E8 */	lfd f11, 0xe8(r4)
/* 80166FCC 00163FCC  C9 84 00 F0 */	lfd f12, 0xf0(r4)
/* 80166FD0 00163FD0  C9 A4 00 F8 */	lfd f13, 0xf8(r4)
/* 80166FD4 00163FD4  C9 C4 01 00 */	lfd f14, 0x100(r4)
/* 80166FD8 00163FD8  C9 E4 01 08 */	lfd f15, 0x108(r4)
/* 80166FDC 00163FDC  CA 04 01 10 */	lfd f16, 0x110(r4)
/* 80166FE0 00163FE0  CA 24 01 18 */	lfd f17, 0x118(r4)
/* 80166FE4 00163FE4  CA 44 01 20 */	lfd f18, 0x120(r4)
/* 80166FE8 00163FE8  CA 64 01 28 */	lfd f19, 0x128(r4)
/* 80166FEC 00163FEC  CA 84 01 30 */	lfd f20, 0x130(r4)
/* 80166FF0 00163FF0  CA A4 01 38 */	lfd f21, 0x138(r4)
/* 80166FF4 00163FF4  CA C4 01 40 */	lfd f22, 0x140(r4)
/* 80166FF8 00163FF8  CA E4 01 48 */	lfd f23, 0x148(r4)
/* 80166FFC 00163FFC  CB 04 01 50 */	lfd f24, 0x150(r4)
/* 80167000 00164000  CB 24 01 58 */	lfd f25, 0x158(r4)
/* 80167004 00164004  CB 44 01 60 */	lfd f26, 0x160(r4)
/* 80167008 00164008  CB 64 01 68 */	lfd f27, 0x168(r4)
/* 8016700C 0016400C  CB 84 01 70 */	lfd f28, 0x170(r4)
/* 80167010 00164010  CB A4 01 78 */	lfd f29, 0x178(r4)
/* 80167014 00164014  CB C4 01 80 */	lfd f30, 0x180(r4)
/* 80167018 00164018  CB E4 01 88 */	lfd f31, 0x188(r4)
lbl_8016701C:
/* 8016701C 0016401C  4E 80 00 20 */	blr 

.global func_80167020
func_80167020:
/* 80167020 00164020  A0 65 01 A2 */	lhz r3, 0x1a2(r5)
/* 80167024 00164024  60 63 00 01 */	ori r3, r3, 1
/* 80167028 00164028  B0 65 01 A2 */	sth r3, 0x1a2(r5)
/* 8016702C 0016402C  D8 05 00 90 */	stfd f0, 0x90(r5)
/* 80167030 00164030  D8 25 00 98 */	stfd f1, 0x98(r5)
/* 80167034 00164034  D8 45 00 A0 */	stfd f2, 0xa0(r5)
/* 80167038 00164038  D8 65 00 A8 */	stfd f3, 0xa8(r5)
/* 8016703C 0016403C  D8 85 00 B0 */	stfd f4, 0xb0(r5)
/* 80167040 00164040  D8 A5 00 B8 */	stfd f5, 0xb8(r5)
/* 80167044 00164044  D8 C5 00 C0 */	stfd f6, 0xc0(r5)
/* 80167048 00164048  D8 E5 00 C8 */	stfd f7, 0xc8(r5)
/* 8016704C 0016404C  D9 05 00 D0 */	stfd f8, 0xd0(r5)
/* 80167050 00164050  D9 25 00 D8 */	stfd f9, 0xd8(r5)
/* 80167054 00164054  D9 45 00 E0 */	stfd f10, 0xe0(r5)
/* 80167058 00164058  D9 65 00 E8 */	stfd f11, 0xe8(r5)
/* 8016705C 0016405C  D9 85 00 F0 */	stfd f12, 0xf0(r5)
/* 80167060 00164060  D9 A5 00 F8 */	stfd f13, 0xf8(r5)
/* 80167064 00164064  D9 C5 01 00 */	stfd f14, 0x100(r5)
/* 80167068 00164068  D9 E5 01 08 */	stfd f15, 0x108(r5)
/* 8016706C 0016406C  DA 05 01 10 */	stfd f16, 0x110(r5)
/* 80167070 00164070  DA 25 01 18 */	stfd f17, 0x118(r5)
/* 80167074 00164074  DA 45 01 20 */	stfd f18, 0x120(r5)
/* 80167078 00164078  DA 65 01 28 */	stfd f19, 0x128(r5)
/* 8016707C 0016407C  DA 85 01 30 */	stfd f20, 0x130(r5)
/* 80167080 00164080  DA A5 01 38 */	stfd f21, 0x138(r5)
/* 80167084 00164084  DA C5 01 40 */	stfd f22, 0x140(r5)
/* 80167088 00164088  DA E5 01 48 */	stfd f23, 0x148(r5)
/* 8016708C 0016408C  DB 05 01 50 */	stfd f24, 0x150(r5)
/* 80167090 00164090  DB 25 01 58 */	stfd f25, 0x158(r5)
/* 80167094 00164094  DB 45 01 60 */	stfd f26, 0x160(r5)
/* 80167098 00164098  DB 65 01 68 */	stfd f27, 0x168(r5)
/* 8016709C 0016409C  DB 85 01 70 */	stfd f28, 0x170(r5)
/* 801670A0 001640A0  DB A5 01 78 */	stfd f29, 0x178(r5)
/* 801670A4 001640A4  DB C5 01 80 */	stfd f30, 0x180(r5)
/* 801670A8 001640A8  DB E5 01 88 */	stfd f31, 0x188(r5)
/* 801670AC 001640AC  FC 00 04 8E */	mffs f0
/* 801670B0 001640B0  D8 05 01 90 */	stfd f0, 0x190(r5)
/* 801670B4 001640B4  C8 05 00 90 */	lfd f0, 0x90(r5)
/* 801670B8 001640B8  7C 78 E2 A6 */	mfspr r3, 0x398
/* 801670BC 001640BC  54 63 1F FF */	rlwinm. r3, r3, 3, 0x1f, 0x1f
/* 801670C0 001640C0  41 82 00 84 */	beq lbl_80167144
/* 801670C4 001640C4  F0 05 01 C8 */	psq_st p0, 456(r5), 0, qr0
/* 801670C8 001640C8  F0 25 01 D0 */	psq_st p1, 464(r5), 0, qr0
/* 801670CC 001640CC  F0 45 01 D8 */	psq_st p2, 472(r5), 0, qr0
/* 801670D0 001640D0  F0 65 01 E0 */	psq_st p3, 480(r5), 0, qr0
/* 801670D4 001640D4  F0 85 01 E8 */	psq_st p4, 488(r5), 0, qr0
/* 801670D8 001640D8  F0 A5 01 F0 */	psq_st p5, 496(r5), 0, qr0
/* 801670DC 001640DC  F0 C5 01 F8 */	psq_st p6, 504(r5), 0, qr0
/* 801670E0 001640E0  F0 E5 02 00 */	psq_st p7, 512(r5), 0, qr0
/* 801670E4 001640E4  F1 05 02 08 */	psq_st p8, 520(r5), 0, qr0
/* 801670E8 001640E8  F1 25 02 10 */	psq_st p9, 528(r5), 0, qr0
/* 801670EC 001640EC  F1 45 02 18 */	psq_st p10, 536(r5), 0, qr0
/* 801670F0 001640F0  F1 65 02 20 */	psq_st p11, 544(r5), 0, qr0
/* 801670F4 001640F4  F1 85 02 28 */	psq_st p12, 552(r5), 0, qr0
/* 801670F8 001640F8  F1 A5 02 30 */	psq_st p13, 560(r5), 0, qr0
/* 801670FC 001640FC  F1 C5 02 38 */	psq_st p14, 568(r5), 0, qr0
/* 80167100 00164100  F1 E5 02 40 */	psq_st p15, 576(r5), 0, qr0
/* 80167104 00164104  F2 05 02 48 */	psq_st p16, 584(r5), 0, qr0
/* 80167108 00164108  F2 25 02 50 */	psq_st p17, 592(r5), 0, qr0
/* 8016710C 0016410C  F2 45 02 58 */	psq_st p18, 600(r5), 0, qr0
/* 80167110 00164110  F2 65 02 60 */	psq_st p19, 608(r5), 0, qr0
/* 80167114 00164114  F2 85 02 68 */	psq_st p20, 616(r5), 0, qr0
/* 80167118 00164118  F2 A5 02 70 */	psq_st p21, 624(r5), 0, qr0
/* 8016711C 0016411C  F2 C5 02 78 */	psq_st p22, 632(r5), 0, qr0
/* 80167120 00164120  F2 E5 02 80 */	psq_st p23, 640(r5), 0, qr0
/* 80167124 00164124  F3 05 02 88 */	psq_st p24, 648(r5), 0, qr0
/* 80167128 00164128  F3 25 02 90 */	psq_st p25, 656(r5), 0, qr0
/* 8016712C 0016412C  F3 45 02 98 */	psq_st p26, 664(r5), 0, qr0
/* 80167130 00164130  F3 65 02 A0 */	psq_st p27, 672(r5), 0, qr0
/* 80167134 00164134  F3 85 02 A8 */	psq_st p28, 680(r5), 0, qr0
/* 80167138 00164138  F3 A5 02 B0 */	psq_st p29, 688(r5), 0, qr0
/* 8016713C 0016413C  F3 C5 02 B8 */	psq_st p30, 696(r5), 0, qr0
/* 80167140 00164140  F3 E5 02 C0 */	psq_st p31, 704(r5), 0, qr0
lbl_80167144:
/* 80167144 00164144  4E 80 00 20 */	blr 

.global func_80167148
func_80167148:
/* 80167148 00164148  38 A3 00 00 */	addi r5, r3, 0
/* 8016714C 0016414C  4B FF FE D4 */	b func_80167020

.global func_80167150
func_80167150:
/* 80167150 00164150  3C 80 80 00 */	lis r4, 0x800000D4@ha
/* 80167154 00164154  90 64 00 D4 */	stw r3, 0x800000D4@l(r4)
/* 80167158 00164158  54 65 00 BE */	clrlwi r5, r3, 2
/* 8016715C 0016415C  90 A4 00 C0 */	stw r5, 0xc0(r4)
/* 80167160 00164160  80 A4 00 D8 */	lwz r5, 0xd8(r4)
/* 80167164 00164164  7C 05 18 00 */	cmpw r5, r3
/* 80167168 00164168  40 82 00 20 */	bne lbl_80167188
/* 8016716C 0016416C  80 C3 01 9C */	lwz r6, 0x19c(r3)
/* 80167170 00164170  60 C6 20 00 */	ori r6, r6, 0x2000
/* 80167174 00164174  90 C3 01 9C */	stw r6, 0x19c(r3)
/* 80167178 00164178  7C C0 00 A6 */	mfmsr r6
/* 8016717C 0016417C  60 C6 00 02 */	ori r6, r6, 2
/* 80167180 00164180  7C C0 01 24 */	mtmsr r6
/* 80167184 00164184  4E 80 00 20 */	blr 
lbl_80167188:
/* 80167188 00164188  80 C3 01 9C */	lwz r6, 0x19c(r3)
/* 8016718C 0016418C  54 C6 04 E2 */	rlwinm r6, r6, 0, 0x13, 0x11
/* 80167190 00164190  90 C3 01 9C */	stw r6, 0x19c(r3)
/* 80167194 00164194  7C C0 00 A6 */	mfmsr r6
/* 80167198 00164198  54 C6 04 E2 */	rlwinm r6, r6, 0, 0x13, 0x11
/* 8016719C 0016419C  60 C6 00 02 */	ori r6, r6, 2
/* 801671A0 001641A0  7C C0 01 24 */	mtmsr r6
/* 801671A4 001641A4  4C 00 01 2C */	isync 
/* 801671A8 001641A8  4E 80 00 20 */	blr 

.global func_801671AC
func_801671AC:
/* 801671AC 001641AC  3C 60 80 00 */	lis r3, 0x800000D4@ha
/* 801671B0 001641B0  80 63 00 D4 */	lwz r3, 0x800000D4@l(r3)
/* 801671B4 001641B4  4E 80 00 20 */	blr 

.global func_801671B8
func_801671B8:
/* 801671B8 001641B8  BD A3 00 34 */	stmw r13, 0x34(r3)
/* 801671BC 001641BC  7C 11 E2 A6 */	mfspr r0, 0x391
/* 801671C0 001641C0  90 03 01 A8 */	stw r0, 0x1a8(r3)
/* 801671C4 001641C4  7C 12 E2 A6 */	mfspr r0, 0x392
/* 801671C8 001641C8  90 03 01 AC */	stw r0, 0x1ac(r3)
/* 801671CC 001641CC  7C 13 E2 A6 */	mfspr r0, 0x393
/* 801671D0 001641D0  90 03 01 B0 */	stw r0, 0x1b0(r3)
/* 801671D4 001641D4  7C 14 E2 A6 */	mfspr r0, 0x394
/* 801671D8 001641D8  90 03 01 B4 */	stw r0, 0x1b4(r3)
/* 801671DC 001641DC  7C 15 E2 A6 */	mfspr r0, 0x395
/* 801671E0 001641E0  90 03 01 B8 */	stw r0, 0x1b8(r3)
/* 801671E4 001641E4  7C 16 E2 A6 */	mfspr r0, 0x396
/* 801671E8 001641E8  90 03 01 BC */	stw r0, 0x1bc(r3)
/* 801671EC 001641EC  7C 17 E2 A6 */	mfspr r0, 0x397
/* 801671F0 001641F0  90 03 01 C0 */	stw r0, 0x1c0(r3)
/* 801671F4 001641F4  7C 00 00 26 */	mfcr r0
/* 801671F8 001641F8  90 03 00 80 */	stw r0, 0x80(r3)
/* 801671FC 001641FC  7C 08 02 A6 */	mflr r0
/* 80167200 00164200  90 03 00 84 */	stw r0, 0x84(r3)
/* 80167204 00164204  90 03 01 98 */	stw r0, 0x198(r3)
/* 80167208 00164208  7C 00 00 A6 */	mfmsr r0
/* 8016720C 0016420C  90 03 01 9C */	stw r0, 0x19c(r3)
/* 80167210 00164210  7C 09 02 A6 */	mfctr r0
/* 80167214 00164214  90 03 00 88 */	stw r0, 0x88(r3)
/* 80167218 00164218  7C 01 02 A6 */	mfxer r0
/* 8016721C 0016421C  90 03 00 8C */	stw r0, 0x8c(r3)
/* 80167220 00164220  90 23 00 04 */	stw r1, 4(r3)
/* 80167224 00164224  90 43 00 08 */	stw r2, 8(r3)
/* 80167228 00164228  38 00 00 01 */	li r0, 1
/* 8016722C 0016422C  90 03 00 0C */	stw r0, 0xc(r3)
/* 80167230 00164230  38 60 00 00 */	li r3, 0
/* 80167234 00164234  4E 80 00 20 */	blr 

.global func_80167238
func_80167238:
/* 80167238 00164238  3C 80 80 17 */	lis r4, func_80169B58@ha
/* 8016723C 0016423C  80 C3 01 98 */	lwz r6, 0x198(r3)
/* 80167240 00164240  38 A4 9B 58 */	addi r5, r4, func_80169B58@l
/* 80167244 00164244  7C 06 28 40 */	cmplw r6, r5
/* 80167248 00164248  40 81 00 18 */	ble lbl_80167260
/* 8016724C 0016424C  3C 80 80 17 */	lis r4, lbl_80169B64@ha
/* 80167250 00164250  38 04 9B 64 */	addi r0, r4, lbl_80169B64@l
/* 80167254 00164254  7C 06 00 40 */	cmplw r6, r0
/* 80167258 00164258  40 80 00 08 */	bge lbl_80167260
/* 8016725C 0016425C  90 A3 01 98 */	stw r5, 0x198(r3)
lbl_80167260:
/* 80167260 00164260  80 03 00 00 */	lwz r0, 0(r3)
/* 80167264 00164264  80 23 00 04 */	lwz r1, 4(r3)
/* 80167268 00164268  80 43 00 08 */	lwz r2, 8(r3)
/* 8016726C 0016426C  A0 83 01 A2 */	lhz r4, 0x1a2(r3)
/* 80167270 00164270  54 85 07 BD */	rlwinm. r5, r4, 0, 0x1e, 0x1e
/* 80167274 00164274  41 82 00 14 */	beq lbl_80167288
/* 80167278 00164278  54 84 07 FA */	rlwinm r4, r4, 0, 0x1f, 0x1d
/* 8016727C 0016427C  B0 83 01 A2 */	sth r4, 0x1a2(r3)
/* 80167280 00164280  B8 A3 00 14 */	lmw r5, 0x14(r3)
/* 80167284 00164284  48 00 00 08 */	b lbl_8016728C
lbl_80167288:
/* 80167288 00164288  B9 A3 00 34 */	lmw r13, 0x34(r3)
lbl_8016728C:
/* 8016728C 0016428C  80 83 01 A8 */	lwz r4, 0x1a8(r3)
/* 80167290 00164290  7C 91 E3 A6 */	mtspr 0x391, r4
/* 80167294 00164294  80 83 01 AC */	lwz r4, 0x1ac(r3)
/* 80167298 00164298  7C 92 E3 A6 */	mtspr 0x392, r4
/* 8016729C 0016429C  80 83 01 B0 */	lwz r4, 0x1b0(r3)
/* 801672A0 001642A0  7C 93 E3 A6 */	mtspr 0x393, r4
/* 801672A4 001642A4  80 83 01 B4 */	lwz r4, 0x1b4(r3)
/* 801672A8 001642A8  7C 94 E3 A6 */	mtspr 0x394, r4
/* 801672AC 001642AC  80 83 01 B8 */	lwz r4, 0x1b8(r3)
/* 801672B0 001642B0  7C 95 E3 A6 */	mtspr 0x395, r4
/* 801672B4 001642B4  80 83 01 BC */	lwz r4, 0x1bc(r3)
/* 801672B8 001642B8  7C 96 E3 A6 */	mtspr 0x396, r4
/* 801672BC 001642BC  80 83 01 C0 */	lwz r4, 0x1c0(r3)
/* 801672C0 001642C0  7C 97 E3 A6 */	mtspr 0x397, r4
/* 801672C4 001642C4  80 83 00 80 */	lwz r4, 0x80(r3)
/* 801672C8 001642C8  7C 8F F1 20 */	mtcrf 0xff, r4
/* 801672CC 001642CC  80 83 00 84 */	lwz r4, 0x84(r3)
/* 801672D0 001642D0  7C 88 03 A6 */	mtlr r4
/* 801672D4 001642D4  80 83 00 88 */	lwz r4, 0x88(r3)
/* 801672D8 001642D8  7C 89 03 A6 */	mtctr r4
/* 801672DC 001642DC  80 83 00 8C */	lwz r4, 0x8c(r3)
/* 801672E0 001642E0  7C 81 03 A6 */	mtxer r4
/* 801672E4 001642E4  7C 80 00 A6 */	mfmsr r4
/* 801672E8 001642E8  54 84 04 5E */	rlwinm r4, r4, 0, 0x11, 0xf
/* 801672EC 001642EC  54 84 07 FA */	rlwinm r4, r4, 0, 0x1f, 0x1d
/* 801672F0 001642F0  7C 80 01 24 */	mtmsr r4
/* 801672F4 001642F4  80 83 01 98 */	lwz r4, 0x198(r3)
/* 801672F8 001642F8  7C 9A 03 A6 */	mtspr 0x1a, r4
/* 801672FC 001642FC  80 83 01 9C */	lwz r4, 0x19c(r3)
/* 80167300 00164300  7C 9B 03 A6 */	mtspr 0x1b, r4
/* 80167304 00164304  80 83 00 10 */	lwz r4, 0x10(r3)
/* 80167308 00164308  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8016730C 0016430C  4C 00 00 64 */	rfi 

.global func_80167310
func_80167310:
/* 80167310 00164310  7C 23 0B 78 */	mr r3, r1
/* 80167314 00164314  4E 80 00 20 */	blr 

.global func_80167318
func_80167318:
/* 80167318 00164318  38 A0 00 00 */	li r5, 0
/* 8016731C 0016431C  B0 A3 01 A0 */	sth r5, 0x1a0(r3)
/* 80167320 00164320  3C 80 80 00 */	lis r4, 0x800000D8@ha
/* 80167324 00164324  B0 A3 01 A2 */	sth r5, 0x1a2(r3)
/* 80167328 00164328  80 04 00 D8 */	lwz r0, 0x800000D8@l(r4)
/* 8016732C 0016432C  7C 03 00 40 */	cmplw r3, r0
/* 80167330 00164330  40 82 00 08 */	bne lbl_80167338
/* 80167334 00164334  90 A4 00 D8 */	stw r5, 0xd8(r4)
lbl_80167338:
/* 80167338 00164338  4E 80 00 20 */	blr 

.global func_8016733C
func_8016733C:
/* 8016733C 0016433C  90 83 01 98 */	stw r4, 0x198(r3)
/* 80167340 00164340  90 A3 00 04 */	stw r5, 4(r3)
/* 80167344 00164344  39 60 00 00 */	li r11, 0
/* 80167348 00164348  61 6B 90 32 */	ori r11, r11, 0x9032
/* 8016734C 0016434C  91 63 01 9C */	stw r11, 0x19c(r3)
/* 80167350 00164350  38 00 00 00 */	li r0, 0
/* 80167354 00164354  90 03 00 80 */	stw r0, 0x80(r3)
/* 80167358 00164358  90 03 00 8C */	stw r0, 0x8c(r3)
/* 8016735C 0016435C  90 43 00 08 */	stw r2, 8(r3)
/* 80167360 00164360  91 A3 00 34 */	stw r13, 0x34(r3)
/* 80167364 00164364  90 03 00 0C */	stw r0, 0xc(r3)
/* 80167368 00164368  90 03 00 10 */	stw r0, 0x10(r3)
/* 8016736C 0016436C  90 03 00 14 */	stw r0, 0x14(r3)
/* 80167370 00164370  90 03 00 18 */	stw r0, 0x18(r3)
/* 80167374 00164374  90 03 00 1C */	stw r0, 0x1c(r3)
/* 80167378 00164378  90 03 00 20 */	stw r0, 0x20(r3)
/* 8016737C 0016437C  90 03 00 24 */	stw r0, 0x24(r3)
/* 80167380 00164380  90 03 00 28 */	stw r0, 0x28(r3)
/* 80167384 00164384  90 03 00 2C */	stw r0, 0x2c(r3)
/* 80167388 00164388  90 03 00 30 */	stw r0, 0x30(r3)
/* 8016738C 0016438C  90 03 00 38 */	stw r0, 0x38(r3)
/* 80167390 00164390  90 03 00 3C */	stw r0, 0x3c(r3)
/* 80167394 00164394  90 03 00 40 */	stw r0, 0x40(r3)
/* 80167398 00164398  90 03 00 44 */	stw r0, 0x44(r3)
/* 8016739C 0016439C  90 03 00 48 */	stw r0, 0x48(r3)
/* 801673A0 001643A0  90 03 00 4C */	stw r0, 0x4c(r3)
/* 801673A4 001643A4  90 03 00 50 */	stw r0, 0x50(r3)
/* 801673A8 001643A8  90 03 00 54 */	stw r0, 0x54(r3)
/* 801673AC 001643AC  90 03 00 58 */	stw r0, 0x58(r3)
/* 801673B0 001643B0  90 03 00 5C */	stw r0, 0x5c(r3)
/* 801673B4 001643B4  90 03 00 60 */	stw r0, 0x60(r3)
/* 801673B8 001643B8  90 03 00 64 */	stw r0, 0x64(r3)
/* 801673BC 001643BC  90 03 00 68 */	stw r0, 0x68(r3)
/* 801673C0 001643C0  90 03 00 6C */	stw r0, 0x6c(r3)
/* 801673C4 001643C4  90 03 00 70 */	stw r0, 0x70(r3)
/* 801673C8 001643C8  90 03 00 74 */	stw r0, 0x74(r3)
/* 801673CC 001643CC  90 03 00 78 */	stw r0, 0x78(r3)
/* 801673D0 001643D0  90 03 00 7C */	stw r0, 0x7c(r3)
/* 801673D4 001643D4  90 03 01 A4 */	stw r0, 0x1a4(r3)
/* 801673D8 001643D8  90 03 01 A8 */	stw r0, 0x1a8(r3)
/* 801673DC 001643DC  90 03 01 AC */	stw r0, 0x1ac(r3)
/* 801673E0 001643E0  90 03 01 B0 */	stw r0, 0x1b0(r3)
/* 801673E4 001643E4  90 03 01 B4 */	stw r0, 0x1b4(r3)
/* 801673E8 001643E8  90 03 01 B8 */	stw r0, 0x1b8(r3)
/* 801673EC 001643EC  90 03 01 BC */	stw r0, 0x1bc(r3)
/* 801673F0 001643F0  90 03 01 C0 */	stw r0, 0x1c0(r3)
/* 801673F4 001643F4  4B FF FF 24 */	b func_80167318

.global func_801673F8
func_801673F8:
/* 801673F8 001643F8  7C 08 02 A6 */	mflr r0
/* 801673FC 001643FC  90 01 00 04 */	stw r0, 4(r1)
/* 80167400 00164400  94 21 FD 08 */	stwu r1, -0x2f8(r1)
/* 80167404 00164404  BF 21 02 DC */	stmw r25, 0x2dc(r1)
/* 80167408 00164408  7C 7C 1B 78 */	mr r28, r3
/* 8016740C 0016440C  3C 60 80 21 */	lis r3, lbl_80215058@ha
/* 80167410 00164410  4C C6 31 82 */	crclr 6
/* 80167414 00164414  3B E3 50 58 */	addi r31, r3, lbl_80215058@l
/* 80167418 00164418  7F E3 FB 78 */	mr r3, r31
/* 8016741C 0016441C  7F 84 E3 78 */	mr r4, r28
/* 80167420 00164420  48 00 04 79 */	bl func_80167898
/* 80167424 00164424  3B 20 00 00 */	li r25, 0
/* 80167428 00164428  57 20 10 3A */	slwi r0, r25, 2
/* 8016742C 0016442C  7F 7C 02 14 */	add r27, r28, r0
/* 80167430 00164430  48 00 00 04 */	b lbl_80167434
lbl_80167434:
/* 80167434 00164434  48 00 00 04 */	b lbl_80167438
lbl_80167438:
/* 80167438 00164438  48 00 00 04 */	b lbl_8016743C
lbl_8016743C:
/* 8016743C 0016443C  81 1B 00 40 */	lwz r8, 0x40(r27)
/* 80167440 00164440  7F 24 CB 78 */	mr r4, r25
/* 80167444 00164444  80 BB 00 00 */	lwz r5, 0(r27)
/* 80167448 00164448  38 7F 00 44 */	addi r3, r31, 0x44
/* 8016744C 0016444C  4C C6 31 82 */	crclr 6
/* 80167450 00164450  7C A6 2B 78 */	mr r6, r5
/* 80167454 00164454  7D 09 43 78 */	mr r9, r8
/* 80167458 00164458  38 F9 00 10 */	addi r7, r25, 0x10
/* 8016745C 0016445C  48 00 04 3D */	bl func_80167898
/* 80167460 00164460  3B 7B 00 04 */	addi r27, r27, 4
/* 80167464 00164464  3B 39 00 01 */	addi r25, r25, 1
/* 80167468 00164468  28 19 00 10 */	cmplwi r25, 0x10
/* 8016746C 0016446C  41 80 FF D0 */	blt lbl_8016743C
/* 80167470 00164470  80 9C 00 84 */	lwz r4, 0x84(r28)
/* 80167474 00164474  38 7F 00 74 */	addi r3, r31, 0x74
/* 80167478 00164478  80 BC 00 80 */	lwz r5, 0x80(r28)
/* 8016747C 0016447C  4C C6 31 82 */	crclr 6
/* 80167480 00164480  48 00 04 19 */	bl func_80167898
/* 80167484 00164484  80 9C 01 98 */	lwz r4, 0x198(r28)
/* 80167488 00164488  38 7F 00 A4 */	addi r3, r31, 0xa4
/* 8016748C 0016448C  80 BC 01 9C */	lwz r5, 0x19c(r28)
/* 80167490 00164490  4C C6 31 82 */	crclr 6
/* 80167494 00164494  48 00 04 05 */	bl func_80167898
/* 80167498 00164498  38 7F 00 D4 */	addi r3, r31, 0xd4
/* 8016749C 0016449C  4C C6 31 82 */	crclr 6
/* 801674A0 001644A0  48 00 03 F9 */	bl func_80167898
/* 801674A4 001644A4  3B 20 00 00 */	li r25, 0
/* 801674A8 001644A8  57 20 10 3A */	slwi r0, r25, 2
/* 801674AC 001644AC  7F 7C 02 14 */	add r27, r28, r0
/* 801674B0 001644B0  48 00 00 04 */	b lbl_801674B4
lbl_801674B4:
/* 801674B4 001644B4  48 00 00 04 */	b lbl_801674B8
lbl_801674B8:
/* 801674B8 001644B8  48 00 00 04 */	b lbl_801674BC
lbl_801674BC:
/* 801674BC 001644BC  80 BB 01 A4 */	lwz r5, 0x1a4(r27)
/* 801674C0 001644C0  7F 24 CB 78 */	mr r4, r25
/* 801674C4 001644C4  80 FB 01 B4 */	lwz r7, 0x1b4(r27)
/* 801674C8 001644C8  38 7F 00 E8 */	addi r3, r31, 0xe8
/* 801674CC 001644CC  38 D9 00 04 */	addi r6, r25, 4
/* 801674D0 001644D0  4C C6 31 82 */	crclr 6
/* 801674D4 001644D4  48 00 03 C5 */	bl func_80167898
/* 801674D8 001644D8  3B 7B 00 04 */	addi r27, r27, 4
/* 801674DC 001644DC  3B 39 00 01 */	addi r25, r25, 1
/* 801674E0 001644E0  28 19 00 04 */	cmplwi r25, 4
/* 801674E4 001644E4  41 80 FF D8 */	blt lbl_801674BC
/* 801674E8 001644E8  A0 1C 01 A2 */	lhz r0, 0x1a2(r28)
/* 801674EC 001644EC  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 801674F0 001644F0  28 00 00 00 */	cmplwi r0, 0
/* 801674F4 001644F4  41 82 01 3C */	beq lbl_80167630
/* 801674F8 001644F8  48 00 26 61 */	bl func_80169B58
/* 801674FC 001644FC  3C C0 80 00 */	lis r6, 0x800000D4@ha
/* 80167500 00164500  80 06 00 D4 */	lwz r0, 0x800000D4@l(r6)
/* 80167504 00164504  38 A0 00 00 */	li r5, 0
/* 80167508 00164508  38 81 00 10 */	addi r4, r1, 0x10
/* 8016750C 0016450C  B0 A1 01 B0 */	sth r5, 0x1b0(r1)
/* 80167510 00164510  7C 1E 03 78 */	mr r30, r0
/* 80167514 00164514  7C 7D 1B 78 */	mr r29, r3
/* 80167518 00164518  B0 A1 01 B2 */	sth r5, 0x1b2(r1)
/* 8016751C 0016451C  80 06 00 D8 */	lwz r0, 0xd8(r6)
/* 80167520 00164520  7C 04 00 40 */	cmplw r4, r0
/* 80167524 00164524  40 82 00 08 */	bne lbl_8016752C
/* 80167528 00164528  90 A6 00 D8 */	stw r5, 0xd8(r6)
lbl_8016752C:
/* 8016752C 0016452C  38 61 00 10 */	addi r3, r1, 0x10
/* 80167530 00164530  4B FF FC 21 */	bl func_80167150
/* 80167534 00164534  38 7F 01 0C */	addi r3, r31, 0x10c
/* 80167538 00164538  4C C6 31 82 */	crclr 6
/* 8016753C 0016453C  48 00 03 5D */	bl func_80167898
/* 80167540 00164540  3B 20 00 00 */	li r25, 0
/* 80167544 00164544  57 20 18 38 */	slwi r0, r25, 3
/* 80167548 00164548  7F 5C 02 14 */	add r26, r28, r0
/* 8016754C 0016454C  48 00 00 04 */	b lbl_80167550
lbl_80167550:
/* 80167550 00164550  48 00 00 04 */	b lbl_80167554
lbl_80167554:
/* 80167554 00164554  48 00 00 04 */	b lbl_80167558
lbl_80167558:
/* 80167558 00164558  C8 3A 00 98 */	lfd f1, 0x98(r26)
/* 8016755C 0016455C  48 02 6B F9 */	bl func_8018E154
/* 80167560 00164560  7C 7B 1B 78 */	mr r27, r3
/* 80167564 00164564  C8 3A 00 90 */	lfd f1, 0x90(r26)
/* 80167568 00164568  48 02 6B ED */	bl func_8018E154
/* 8016756C 0016456C  7C 65 1B 78 */	mr r5, r3
/* 80167570 00164570  4C C6 31 82 */	crclr 6
/* 80167574 00164574  7F 24 CB 78 */	mr r4, r25
/* 80167578 00164578  7F 67 DB 78 */	mr r7, r27
/* 8016757C 0016457C  38 7F 01 20 */	addi r3, r31, 0x120
/* 80167580 00164580  38 D9 00 01 */	addi r6, r25, 1
/* 80167584 00164584  48 00 03 15 */	bl func_80167898
/* 80167588 00164588  3B 5A 00 10 */	addi r26, r26, 0x10
/* 8016758C 0016458C  3B 39 00 02 */	addi r25, r25, 2
/* 80167590 00164590  28 19 00 20 */	cmplwi r25, 0x20
/* 80167594 00164594  41 80 FF C4 */	blt lbl_80167558
/* 80167598 00164598  38 7F 01 3C */	addi r3, r31, 0x13c
/* 8016759C 0016459C  4C C6 31 82 */	crclr 6
/* 801675A0 001645A0  48 00 02 F9 */	bl func_80167898
/* 801675A4 001645A4  3B 20 00 00 */	li r25, 0
/* 801675A8 001645A8  57 20 18 38 */	slwi r0, r25, 3
/* 801675AC 001645AC  7F 5C 02 14 */	add r26, r28, r0
/* 801675B0 001645B0  48 00 00 04 */	b lbl_801675B4
lbl_801675B4:
/* 801675B4 001645B4  48 00 00 04 */	b lbl_801675B8
lbl_801675B8:
/* 801675B8 001645B8  48 00 00 04 */	b lbl_801675BC
lbl_801675BC:
/* 801675BC 001645BC  C8 3A 01 D0 */	lfd f1, 0x1d0(r26)
/* 801675C0 001645C0  48 02 6B 95 */	bl func_8018E154
/* 801675C4 001645C4  7C 7B 1B 78 */	mr r27, r3
/* 801675C8 001645C8  C8 3A 01 C8 */	lfd f1, 0x1c8(r26)
/* 801675CC 001645CC  48 02 6B 89 */	bl func_8018E154
/* 801675D0 001645D0  7C 65 1B 78 */	mr r5, r3
/* 801675D4 001645D4  4C C6 31 82 */	crclr 6
/* 801675D8 001645D8  7F 24 CB 78 */	mr r4, r25
/* 801675DC 001645DC  7F 67 DB 78 */	mr r7, r27
/* 801675E0 001645E0  38 7F 01 50 */	addi r3, r31, 0x150
/* 801675E4 001645E4  38 D9 00 01 */	addi r6, r25, 1
/* 801675E8 001645E8  48 00 02 B1 */	bl func_80167898
/* 801675EC 001645EC  3B 5A 00 10 */	addi r26, r26, 0x10
/* 801675F0 001645F0  3B 39 00 02 */	addi r25, r25, 2
/* 801675F4 001645F4  28 19 00 20 */	cmplwi r25, 0x20
/* 801675F8 001645F8  41 80 FF C4 */	blt lbl_801675BC
/* 801675FC 001645FC  38 A0 00 00 */	li r5, 0
/* 80167600 00164600  B0 A1 01 B0 */	sth r5, 0x1b0(r1)
/* 80167604 00164604  3C 60 80 00 */	lis r3, 0x800000D8@ha
/* 80167608 00164608  38 81 00 10 */	addi r4, r1, 0x10
/* 8016760C 0016460C  B0 A1 01 B2 */	sth r5, 0x1b2(r1)
/* 80167610 00164610  80 03 00 D8 */	lwz r0, 0x800000D8@l(r3)
/* 80167614 00164614  7C 04 00 40 */	cmplw r4, r0
/* 80167618 00164618  40 82 00 08 */	bne lbl_80167620
/* 8016761C 0016461C  90 A3 00 D8 */	stw r5, 0xd8(r3)
lbl_80167620:
/* 80167620 00164620  7F C3 F3 78 */	mr r3, r30
/* 80167624 00164624  4B FF FB 2D */	bl func_80167150
/* 80167628 00164628  7F A3 EB 78 */	mr r3, r29
/* 8016762C 0016462C  48 00 25 55 */	bl func_80169B80
lbl_80167630:
/* 80167630 00164630  38 7F 01 70 */	addi r3, r31, 0x170
/* 80167634 00164634  4C C6 31 82 */	crclr 6
/* 80167638 00164638  48 00 02 61 */	bl func_80167898
/* 8016763C 0016463C  83 3C 00 04 */	lwz r25, 4(r28)
/* 80167640 00164640  3B 40 00 00 */	li r26, 0
/* 80167644 00164644  48 00 00 04 */	b lbl_80167648
lbl_80167648:
/* 80167648 00164648  48 00 00 04 */	b lbl_8016764C
lbl_8016764C:
/* 8016764C 0016464C  48 00 00 20 */	b lbl_8016766C
lbl_80167650:
/* 80167650 00164650  80 B9 00 00 */	lwz r5, 0(r25)
/* 80167654 00164654  7F 24 CB 78 */	mr r4, r25
/* 80167658 00164658  80 D9 00 04 */	lwz r6, 4(r25)
/* 8016765C 0016465C  38 7F 01 98 */	addi r3, r31, 0x198
/* 80167660 00164660  4C C6 31 82 */	crclr 6
/* 80167664 00164664  48 00 02 35 */	bl func_80167898
/* 80167668 00164668  83 39 00 00 */	lwz r25, 0(r25)
lbl_8016766C:
/* 8016766C 0016466C  28 19 00 00 */	cmplwi r25, 0
/* 80167670 00164670  41 82 00 1C */	beq lbl_8016768C
/* 80167674 00164674  3C 19 00 01 */	addis r0, r25, 1
/* 80167678 00164678  28 00 FF FF */	cmplwi r0, 0xffff
/* 8016767C 0016467C  41 82 00 10 */	beq lbl_8016768C
/* 80167680 00164680  28 1A 00 10 */	cmplwi r26, 0x10
/* 80167684 00164684  3B 5A 00 01 */	addi r26, r26, 1
/* 80167688 00164688  41 80 FF C8 */	blt lbl_80167650
lbl_8016768C:
/* 8016768C 0016468C  BB 21 02 DC */	lmw r25, 0x2dc(r1)
/* 80167690 00164690  80 01 02 FC */	lwz r0, 0x2fc(r1)
/* 80167694 00164694  38 21 02 F8 */	addi r1, r1, 0x2f8
/* 80167698 00164698  7C 08 03 A6 */	mtlr r0
/* 8016769C 0016469C  4E 80 00 20 */	blr 
lbl_801676A0:
/* 801676A0 001646A0  7C A0 00 A6 */	mfmsr r5
/* 801676A4 001646A4  60 A5 20 00 */	ori r5, r5, 0x2000
/* 801676A8 001646A8  7C A0 01 24 */	mtmsr r5
/* 801676AC 001646AC  4C 00 01 2C */	isync 
/* 801676B0 001646B0  80 A4 01 9C */	lwz r5, 0x19c(r4)
/* 801676B4 001646B4  60 A5 20 00 */	ori r5, r5, 0x2000
/* 801676B8 001646B8  7C BB 03 A6 */	mtspr 0x1b, r5
/* 801676BC 001646BC  3C 60 80 00 */	lis r3, 0x800000D8@ha
/* 801676C0 001646C0  80 A3 00 D8 */	lwz r5, 0x800000D8@l(r3)
/* 801676C4 001646C4  90 83 00 D8 */	stw r4, 0xd8(r3)
/* 801676C8 001646C8  7C 05 20 00 */	cmpw r5, r4
/* 801676CC 001646CC  41 82 00 14 */	beq lbl_801676E0
/* 801676D0 001646D0  2C 05 00 00 */	cmpwi r5, 0
/* 801676D4 001646D4  41 82 00 08 */	beq lbl_801676DC
/* 801676D8 001646D8  4B FF F9 49 */	bl func_80167020
lbl_801676DC:
/* 801676DC 001646DC  4B FF F8 21 */	bl func_80166EFC
lbl_801676E0:
/* 801676E0 001646E0  80 64 00 80 */	lwz r3, 0x80(r4)
/* 801676E4 001646E4  7C 6F F1 20 */	mtcrf 0xff, r3
/* 801676E8 001646E8  80 64 00 84 */	lwz r3, 0x84(r4)
/* 801676EC 001646EC  7C 68 03 A6 */	mtlr r3
/* 801676F0 001646F0  80 64 01 98 */	lwz r3, 0x198(r4)
/* 801676F4 001646F4  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 801676F8 001646F8  80 64 00 88 */	lwz r3, 0x88(r4)
/* 801676FC 001646FC  7C 69 03 A6 */	mtctr r3
/* 80167700 00164700  80 64 00 8C */	lwz r3, 0x8c(r4)
/* 80167704 00164704  7C 61 03 A6 */	mtxer r3
/* 80167708 00164708  A0 64 01 A2 */	lhz r3, 0x1a2(r4)
/* 8016770C 0016470C  54 63 07 FA */	rlwinm r3, r3, 0, 0x1f, 0x1d
/* 80167710 00164710  B0 64 01 A2 */	sth r3, 0x1a2(r4)
/* 80167714 00164714  80 A4 00 14 */	lwz r5, 0x14(r4)
/* 80167718 00164718  80 64 00 0C */	lwz r3, 0xc(r4)
/* 8016771C 0016471C  80 84 00 10 */	lwz r4, 0x10(r4)
/* 80167720 00164720  4C 00 00 64 */	rfi 

.global func_80167724
func_80167724:
/* 80167724 00164724  7C 08 02 A6 */	mflr r0
/* 80167728 00164728  90 01 00 04 */	stw r0, 4(r1)
/* 8016772C 0016472C  94 21 FF F8 */	stwu r1, -8(r1)
/* 80167730 00164730  3C 60 80 16 */	lis r3, lbl_801676A0@ha
/* 80167734 00164734  38 83 76 A0 */	addi r4, r3, lbl_801676A0@l
/* 80167738 00164738  38 60 00 07 */	li r3, 7
/* 8016773C 0016473C  4B FF E0 D5 */	bl func_80165810
/* 80167740 00164740  38 00 00 00 */	li r0, 0
/* 80167744 00164744  4C C6 31 82 */	crclr 6
/* 80167748 00164748  3C 80 80 00 */	lis r4, 0x800000D8@ha
/* 8016774C 0016474C  3C 60 80 21 */	lis r3, lbl_8021520C@ha
/* 80167750 00164750  90 04 00 D8 */	stw r0, 0x800000D8@l(r4)
/* 80167754 00164754  38 63 52 0C */	addi r3, r3, lbl_8021520C@l
/* 80167758 00164758  48 00 5E 61 */	bl func_8016D5B8
/* 8016775C 0016475C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80167760 00164760  38 21 00 08 */	addi r1, r1, 8
/* 80167764 00164764  7C 08 03 A6 */	mtlr r0
/* 80167768 00164768  4E 80 00 20 */	blr 
.global lbl_8016776C
lbl_8016776C:
/* 8016776C 0016476C  7C A0 00 A6 */	mfmsr r5
/* 80167770 00164770  60 A5 20 00 */	ori r5, r5, 0x2000
/* 80167774 00164774  7C A0 01 24 */	mtmsr r5
/* 80167778 00164778  4C 00 01 2C */	isync 
/* 8016777C 0016477C  D8 03 00 90 */	stfd f0, 0x90(r3)
/* 80167780 00164780  D8 23 00 98 */	stfd f1, 0x98(r3)
/* 80167784 00164784  D8 43 00 A0 */	stfd f2, 0xa0(r3)
/* 80167788 00164788  D8 63 00 A8 */	stfd f3, 0xa8(r3)
/* 8016778C 0016478C  D8 83 00 B0 */	stfd f4, 0xb0(r3)
/* 80167790 00164790  D8 A3 00 B8 */	stfd f5, 0xb8(r3)
/* 80167794 00164794  D8 C3 00 C0 */	stfd f6, 0xc0(r3)
/* 80167798 00164798  D8 E3 00 C8 */	stfd f7, 0xc8(r3)
/* 8016779C 0016479C  D9 03 00 D0 */	stfd f8, 0xd0(r3)
/* 801677A0 001647A0  D9 23 00 D8 */	stfd f9, 0xd8(r3)
/* 801677A4 001647A4  D9 43 00 E0 */	stfd f10, 0xe0(r3)
/* 801677A8 001647A8  D9 63 00 E8 */	stfd f11, 0xe8(r3)
/* 801677AC 001647AC  D9 83 00 F0 */	stfd f12, 0xf0(r3)
/* 801677B0 001647B0  D9 A3 00 F8 */	stfd f13, 0xf8(r3)
/* 801677B4 001647B4  D9 C3 01 00 */	stfd f14, 0x100(r3)
/* 801677B8 001647B8  D9 E3 01 08 */	stfd f15, 0x108(r3)
/* 801677BC 001647BC  DA 03 01 10 */	stfd f16, 0x110(r3)
/* 801677C0 001647C0  DA 23 01 18 */	stfd f17, 0x118(r3)
/* 801677C4 001647C4  DA 43 01 20 */	stfd f18, 0x120(r3)
/* 801677C8 001647C8  DA 63 01 28 */	stfd f19, 0x128(r3)
/* 801677CC 001647CC  DA 83 01 30 */	stfd f20, 0x130(r3)
/* 801677D0 001647D0  DA A3 01 38 */	stfd f21, 0x138(r3)
/* 801677D4 001647D4  DA C3 01 40 */	stfd f22, 0x140(r3)
/* 801677D8 001647D8  DA E3 01 48 */	stfd f23, 0x148(r3)
/* 801677DC 001647DC  DB 03 01 50 */	stfd f24, 0x150(r3)
/* 801677E0 001647E0  DB 23 01 58 */	stfd f25, 0x158(r3)
/* 801677E4 001647E4  DB 43 01 60 */	stfd f26, 0x160(r3)
/* 801677E8 001647E8  DB 63 01 68 */	stfd f27, 0x168(r3)
/* 801677EC 001647EC  DB 83 01 70 */	stfd f28, 0x170(r3)
/* 801677F0 001647F0  DB A3 01 78 */	stfd f29, 0x178(r3)
/* 801677F4 001647F4  DB C3 01 80 */	stfd f30, 0x180(r3)
/* 801677F8 001647F8  DB E3 01 88 */	stfd f31, 0x188(r3)
/* 801677FC 001647FC  FC 00 04 8E */	mffs f0
/* 80167800 00164800  D8 03 01 90 */	stfd f0, 0x190(r3)
/* 80167804 00164804  C8 03 00 90 */	lfd f0, 0x90(r3)
/* 80167808 00164808  7C B8 E2 A6 */	mfspr r5, 0x398
/* 8016780C 0016480C  54 A5 1F FF */	rlwinm. r5, r5, 3, 0x1f, 0x1f
/* 80167810 00164810  41 82 00 84 */	beq lbl_80167894
/* 80167814 00164814  F0 03 01 C8 */	psq_st p0, 456(r3), 0, qr0
/* 80167818 00164818  F0 23 01 D0 */	psq_st p1, 464(r3), 0, qr0
/* 8016781C 0016481C  F0 43 01 D8 */	psq_st p2, 472(r3), 0, qr0
/* 80167820 00164820  F0 63 01 E0 */	psq_st p3, 480(r3), 0, qr0
/* 80167824 00164824  F0 83 01 E8 */	psq_st p4, 488(r3), 0, qr0
/* 80167828 00164828  F0 A3 01 F0 */	psq_st p5, 496(r3), 0, qr0
/* 8016782C 0016482C  F0 C3 01 F8 */	psq_st p6, 504(r3), 0, qr0
/* 80167830 00164830  F0 E3 02 00 */	psq_st p7, 512(r3), 0, qr0
/* 80167834 00164834  F1 03 02 08 */	psq_st p8, 520(r3), 0, qr0
/* 80167838 00164838  F1 23 02 10 */	psq_st p9, 528(r3), 0, qr0
/* 8016783C 0016483C  F1 43 02 18 */	psq_st p10, 536(r3), 0, qr0
/* 80167840 00164840  F1 63 02 20 */	psq_st p11, 544(r3), 0, qr0
/* 80167844 00164844  F1 83 02 28 */	psq_st p12, 552(r3), 0, qr0
/* 80167848 00164848  F1 A3 02 30 */	psq_st p13, 560(r3), 0, qr0
/* 8016784C 0016484C  F1 C3 02 38 */	psq_st p14, 568(r3), 0, qr0
/* 80167850 00164850  F1 E3 02 40 */	psq_st p15, 576(r3), 0, qr0
/* 80167854 00164854  F2 03 02 48 */	psq_st p16, 584(r3), 0, qr0
/* 80167858 00164858  F2 23 02 50 */	psq_st p17, 592(r3), 0, qr0
/* 8016785C 0016485C  F2 43 02 58 */	psq_st p18, 600(r3), 0, qr0
/* 80167860 00164860  F2 63 02 60 */	psq_st p19, 608(r3), 0, qr0
/* 80167864 00164864  F2 83 02 68 */	psq_st p20, 616(r3), 0, qr0
/* 80167868 00164868  F2 A3 02 70 */	psq_st p21, 624(r3), 0, qr0
/* 8016786C 0016486C  F2 C3 02 78 */	psq_st p22, 632(r3), 0, qr0
/* 80167870 00164870  F2 E3 02 80 */	psq_st p23, 640(r3), 0, qr0
/* 80167874 00164874  F3 03 02 88 */	psq_st p24, 648(r3), 0, qr0
/* 80167878 00164878  F3 23 02 90 */	psq_st p25, 656(r3), 0, qr0
/* 8016787C 0016487C  F3 43 02 98 */	psq_st p26, 664(r3), 0, qr0
/* 80167880 00164880  F3 63 02 A0 */	psq_st p27, 672(r3), 0, qr0
/* 80167884 00164884  F3 83 02 A8 */	psq_st p28, 680(r3), 0, qr0
/* 80167888 00164888  F3 A3 02 B0 */	psq_st p29, 688(r3), 0, qr0
/* 8016788C 0016488C  F3 C3 02 B8 */	psq_st p30, 696(r3), 0, qr0
/* 80167890 00164890  F3 E3 02 C0 */	psq_st p31, 704(r3), 0, qr0
lbl_80167894:
/* 80167894 00164894  4E 80 00 20 */	blr 
