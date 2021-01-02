.include "macros.inc"

.section .text  # 0x801C4F18 - 0x801C5958

.global splGetHelmite
splGetHelmite:
/* 801C4F18 001C1F18  ED 62 00 B2 */	fmuls f11, f2, f2
/* 801C4F1C 001C1F1C  C0 02 C4 7C */	lfs f0, lbl_8027C11C-_SDA2_BASE_(r2)
/* 801C4F20 001C1F20  ED 41 00 72 */	fmuls f10, f1, f1
/* 801C4F24 001C1F24  C1 02 C4 78 */	lfs f8, lbl_8027C118-_SDA2_BASE_(r2)
/* 801C4F28 001C1F28  C0 E2 C4 80 */	lfs f7, lbl_8027C120-_SDA2_BASE_(r2)
/* 801C4F2C 001C1F2C  ED 2B 00 B2 */	fmuls f9, f11, f2
/* 801C4F30 001C1F30  EC 00 02 F2 */	fmuls f0, f0, f11
/* 801C4F34 001C1F34  ED 6B 00 72 */	fmuls f11, f11, f1
/* 801C4F38 001C1F38  ED 2A 02 72 */	fmuls f9, f10, f9
/* 801C4F3C 001C1F3C  ED 40 02 B2 */	fmuls f10, f0, f10
/* 801C4F40 001C1F40  EC 08 02 72 */	fmuls f0, f8, f9
/* 801C4F44 001C1F44  ED 29 58 28 */	fsubs f9, f9, f11
/* 801C4F48 001C1F48  EC 20 00 72 */	fmuls f1, f0, f1
/* 801C4F4C 001C1F4C  ED 09 58 28 */	fsubs f8, f9, f11
/* 801C4F50 001C1F50  FC 00 08 50 */	fneg f0, f1
/* 801C4F54 001C1F54  EC 21 50 28 */	fsubs f1, f1, f10
/* 801C4F58 001C1F58  EC 42 40 2A */	fadds f2, f2, f8
/* 801C4F5C 001C1F5C  EC 00 50 2A */	fadds f0, f0, f10
/* 801C4F60 001C1F60  EC 27 08 2A */	fadds f1, f7, f1
/* 801C4F64 001C1F64  EC 04 00 32 */	fmuls f0, f4, f0
/* 801C4F68 001C1F68  EC 03 00 7A */	fmadds f0, f3, f1, f0
/* 801C4F6C 001C1F6C  EC 05 00 BA */	fmadds f0, f5, f2, f0
/* 801C4F70 001C1F70  EC 26 02 7A */	fmadds f1, f6, f9, f0
/* 801C4F74 001C1F74  4E 80 00 20 */	blr 

.global splGetSplinePoint
splGetSplinePoint:
/* 801C4F78 001C1F78  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801C4F7C 001C1F7C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 801C4F80 001C1F80  F3 E1 00 28 */	psq_st p31, 40(r1), 0, qr0
/* 801C4F84 001C1F84  C0 E2 C4 90 */	lfs f7, lbl_8027C130-_SDA2_BASE_(r2)
/* 801C4F88 001C1F88  FC 01 38 40 */	.byte 0xFC, 0x01, 0x38, 0x40  /* unknown instruction */
/* 801C4F8C 001C1F8C  41 80 04 6C */	blt lbl_801C53F8
/* 801C4F90 001C1F90  C0 02 C4 80 */	lfs f0, lbl_8027C120-_SDA2_BASE_(r2)
/* 801C4F94 001C1F94  FC 01 00 40 */	.byte 0xFC, 0x01, 0x00, 0x40  /* unknown instruction */
/* 801C4F98 001C1F98  40 81 00 08 */	ble lbl_801C4FA0
/* 801C4F9C 001C1F9C  48 00 04 5C */	b lbl_801C53F8
lbl_801C4FA0:
/* 801C4FA0 001C1FA0  40 80 03 0C */	bge lbl_801C52AC
/* 801C4FA4 001C1FA4  A8 C4 00 02 */	lha r6, 2(r4)
/* 801C4FA8 001C1FA8  3C A0 43 30 */	lis r5, 0x4330
/* 801C4FAC 001C1FAC  88 04 00 00 */	lbz r0, 0(r4)
/* 801C4FB0 001C1FB0  38 C6 FF FF */	addi r6, r6, -1
/* 801C4FB4 001C1FB4  90 A1 00 08 */	stw r5, 8(r1)
/* 801C4FB8 001C1FB8  6C C6 80 00 */	xoris r6, r6, 0x8000
/* 801C4FBC 001C1FBC  C8 62 C4 98 */	lfd f3, lbl_8027C138-_SDA2_BASE_(r2)
/* 801C4FC0 001C1FC0  90 C1 00 0C */	stw r6, 0xc(r1)
/* 801C4FC4 001C1FC4  2C 00 00 02 */	cmpwi r0, 2
/* 801C4FC8 001C1FC8  C8 41 00 08 */	lfd f2, 8(r1)
/* 801C4FCC 001C1FCC  90 A1 00 18 */	stw r5, 0x18(r1)
/* 801C4FD0 001C1FD0  EC 42 18 28 */	fsubs f2, f2, f3
/* 801C4FD4 001C1FD4  EC 41 00 B2 */	fmuls f2, f1, f2
/* 801C4FD8 001C1FD8  FC 20 10 1E */	fctiwz f1, f2
/* 801C4FDC 001C1FDC  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 801C4FE0 001C1FE0  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 801C4FE4 001C1FE4  7C A6 07 34 */	extsh r6, r5
/* 801C4FE8 001C1FE8  6C C5 80 00 */	xoris r5, r6, 0x8000
/* 801C4FEC 001C1FEC  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 801C4FF0 001C1FF0  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 801C4FF4 001C1FF4  EC 21 18 28 */	fsubs f1, f1, f3
/* 801C4FF8 001C1FF8  EC 42 08 28 */	fsubs f2, f2, f1
/* 801C4FFC 001C1FFC  41 82 01 14 */	beq lbl_801C5110
/* 801C5000 001C2000  40 80 00 14 */	bge lbl_801C5014
/* 801C5004 001C2004  2C 00 00 00 */	cmpwi r0, 0
/* 801C5008 001C2008  41 82 00 18 */	beq lbl_801C5020
/* 801C500C 001C200C  40 80 00 60 */	bge lbl_801C506C
/* 801C5010 001C2010  48 00 03 E8 */	b lbl_801C53F8
lbl_801C5014:
/* 801C5014 001C2014  2C 00 00 04 */	cmpwi r0, 4
/* 801C5018 001C2018  40 80 03 E0 */	bge lbl_801C53F8
/* 801C501C 001C201C  48 00 01 C0 */	b lbl_801C51DC
lbl_801C5020:
/* 801C5020 001C2020  1C 06 00 0C */	mulli r0, r6, 0xc
/* 801C5024 001C2024  80 84 00 08 */	lwz r4, 8(r4)
/* 801C5028 001C2028  7C 84 02 14 */	add r4, r4, r0
/* 801C502C 001C202C  C0 24 00 00 */	lfs f1, 0(r4)
/* 801C5030 001C2030  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 801C5034 001C2034  EC 00 08 28 */	fsubs f0, f0, f1
/* 801C5038 001C2038  EC 02 08 3A */	fmadds f0, f2, f0, f1
/* 801C503C 001C203C  D0 03 00 00 */	stfs f0, 0(r3)
/* 801C5040 001C2040  C0 24 00 04 */	lfs f1, 4(r4)
/* 801C5044 001C2044  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 801C5048 001C2048  EC 00 08 28 */	fsubs f0, f0, f1
/* 801C504C 001C204C  EC 02 08 3A */	fmadds f0, f2, f0, f1
/* 801C5050 001C2050  D0 03 00 04 */	stfs f0, 4(r3)
/* 801C5054 001C2054  C0 24 00 08 */	lfs f1, 8(r4)
/* 801C5058 001C2058  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 801C505C 001C205C  EC 00 08 28 */	fsubs f0, f0, f1
/* 801C5060 001C2060  EC 02 08 3A */	fmadds f0, f2, f0, f1
/* 801C5064 001C2064  D0 03 00 08 */	stfs f0, 8(r3)
/* 801C5068 001C2068  48 00 03 90 */	b lbl_801C53F8
lbl_801C506C:
/* 801C506C 001C206C  ED 00 10 28 */	fsubs f8, f0, f2
/* 801C5070 001C2070  C0 02 C4 7C */	lfs f0, lbl_8027C11C-_SDA2_BASE_(r2)
/* 801C5074 001C2074  EC A2 00 B2 */	fmuls f5, f2, f2
/* 801C5078 001C2078  1C 06 00 24 */	mulli r0, r6, 0x24
/* 801C507C 001C207C  80 84 00 08 */	lwz r4, 8(r4)
/* 801C5080 001C2080  EC 60 00 B2 */	fmuls f3, f0, f2
/* 801C5084 001C2084  EC E8 02 32 */	fmuls f7, f8, f8
/* 801C5088 001C2088  7C 84 02 14 */	add r4, r4, r0
/* 801C508C 001C208C  EC 80 01 72 */	fmuls f4, f0, f5
/* 801C5090 001C2090  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 801C5094 001C2094  C0 24 00 00 */	lfs f1, 0(r4)
/* 801C5098 001C2098  EC A5 00 B2 */	fmuls f5, f5, f2
/* 801C509C 001C209C  EC C3 01 F2 */	fmuls f6, f3, f7
/* 801C50A0 001C20A0  C0 44 00 18 */	lfs f2, 0x18(r4)
/* 801C50A4 001C20A4  EC E7 02 32 */	fmuls f7, f7, f8
/* 801C50A8 001C20A8  C0 64 00 24 */	lfs f3, 0x24(r4)
/* 801C50AC 001C20AC  EC 84 02 32 */	fmuls f4, f4, f8
/* 801C50B0 001C20B0  EC 00 01 B2 */	fmuls f0, f0, f6
/* 801C50B4 001C20B4  EC 01 01 FA */	fmadds f0, f1, f7, f0
/* 801C50B8 001C20B8  EC 02 01 3A */	fmadds f0, f2, f4, f0
/* 801C50BC 001C20BC  EC 03 01 7A */	fmadds f0, f3, f5, f0
/* 801C50C0 001C20C0  D0 03 00 00 */	stfs f0, 0(r3)
/* 801C50C4 001C20C4  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 801C50C8 001C20C8  C0 24 00 04 */	lfs f1, 4(r4)
/* 801C50CC 001C20CC  EC 00 01 B2 */	fmuls f0, f0, f6
/* 801C50D0 001C20D0  C0 44 00 1C */	lfs f2, 0x1c(r4)
/* 801C50D4 001C20D4  C0 64 00 28 */	lfs f3, 0x28(r4)
/* 801C50D8 001C20D8  EC 01 01 FA */	fmadds f0, f1, f7, f0
/* 801C50DC 001C20DC  EC 02 01 3A */	fmadds f0, f2, f4, f0
/* 801C50E0 001C20E0  EC 03 01 7A */	fmadds f0, f3, f5, f0
/* 801C50E4 001C20E4  D0 03 00 04 */	stfs f0, 4(r3)
/* 801C50E8 001C20E8  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 801C50EC 001C20EC  C0 24 00 08 */	lfs f1, 8(r4)
/* 801C50F0 001C20F0  EC 00 01 B2 */	fmuls f0, f0, f6
/* 801C50F4 001C20F4  C0 44 00 20 */	lfs f2, 0x20(r4)
/* 801C50F8 001C20F8  C0 64 00 2C */	lfs f3, 0x2c(r4)
/* 801C50FC 001C20FC  EC 01 01 FA */	fmadds f0, f1, f7, f0
/* 801C5100 001C2100  EC 02 01 3A */	fmadds f0, f2, f4, f0
/* 801C5104 001C2104  EC 03 01 7A */	fmadds f0, f3, f5, f0
/* 801C5108 001C2108  D0 03 00 08 */	stfs f0, 8(r3)
/* 801C510C 001C210C  48 00 02 EC */	b lbl_801C53F8
lbl_801C5110:
/* 801C5110 001C2110  EF E2 00 B2 */	fmuls f31, f2, f2
/* 801C5114 001C2114  C0 22 C4 8C */	lfs f1, lbl_8027C12C-_SDA2_BASE_(r2)
/* 801C5118 001C2118  C1 22 C4 7C */	lfs f9, lbl_8027C11C-_SDA2_BASE_(r2)
/* 801C511C 001C211C  ED 80 10 28 */	fsubs f12, f0, f2
/* 801C5120 001C2120  C1 62 C4 84 */	lfs f11, lbl_8027C124-_SDA2_BASE_(r2)
/* 801C5124 001C2124  1C 06 00 0C */	mulli r0, r6, 0xc
/* 801C5128 001C2128  ED BF 00 B2 */	fmuls f13, f31, f2
/* 801C512C 001C212C  80 84 00 08 */	lwz r4, 8(r4)
/* 801C5130 001C2130  EC 21 07 F2 */	fmuls f1, f1, f31
/* 801C5134 001C2134  C0 E2 C4 88 */	lfs f7, lbl_8027C128-_SDA2_BASE_(r2)
/* 801C5138 001C2138  7C 84 02 14 */	add r4, r4, r0
/* 801C513C 001C213C  EC AB 03 32 */	fmuls f5, f11, f12
/* 801C5140 001C2140  EC C9 0B 78 */	fmsubs f6, f9, f13, f1
/* 801C5144 001C2144  C0 64 00 0C */	lfs f3, 0xc(r4)
/* 801C5148 001C2148  FC 20 68 50 */	fneg f1, f13
/* 801C514C 001C214C  C0 84 00 00 */	lfs f4, 0(r4)
/* 801C5150 001C2150  ED 4C 01 72 */	fmuls f10, f12, f5
/* 801C5154 001C2154  C0 A4 00 18 */	lfs f5, 0x18(r4)
/* 801C5158 001C2158  ED 07 30 2A */	fadds f8, f7, f6
/* 801C515C 001C215C  C0 C4 00 24 */	lfs f6, 0x24(r4)
/* 801C5160 001C2160  EC E1 F8 2A */	fadds f7, f1, f31
/* 801C5164 001C2164  EC 2C 02 B2 */	fmuls f1, f12, f10
/* 801C5168 001C2168  ED 4B 02 32 */	fmuls f10, f11, f8
/* 801C516C 001C216C  EC E2 38 2A */	fadds f7, f2, f7
/* 801C5170 001C2170  ED 0B 03 72 */	fmuls f8, f11, f13
/* 801C5174 001C2174  EC 43 02 B2 */	fmuls f2, f3, f10
/* 801C5178 001C2178  EC 69 01 FA */	fmadds f3, f9, f7, f0
/* 801C517C 001C217C  EC 04 10 7A */	fmadds f0, f4, f1, f2
/* 801C5180 001C2180  EC EB 00 F2 */	fmuls f7, f11, f3
/* 801C5184 001C2184  EC 05 01 FA */	fmadds f0, f5, f7, f0
/* 801C5188 001C2188  EC 06 02 3A */	fmadds f0, f6, f8, f0
/* 801C518C 001C218C  D0 03 00 00 */	stfs f0, 0(r3)
/* 801C5190 001C2190  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 801C5194 001C2194  C0 44 00 04 */	lfs f2, 4(r4)
/* 801C5198 001C2198  EC 00 02 B2 */	fmuls f0, f0, f10
/* 801C519C 001C219C  C0 64 00 1C */	lfs f3, 0x1c(r4)
/* 801C51A0 001C21A0  C0 84 00 28 */	lfs f4, 0x28(r4)
/* 801C51A4 001C21A4  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 801C51A8 001C21A8  EC 03 01 FA */	fmadds f0, f3, f7, f0
/* 801C51AC 001C21AC  EC 04 02 3A */	fmadds f0, f4, f8, f0
/* 801C51B0 001C21B0  D0 03 00 04 */	stfs f0, 4(r3)
/* 801C51B4 001C21B4  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 801C51B8 001C21B8  C0 44 00 08 */	lfs f2, 8(r4)
/* 801C51BC 001C21BC  EC 00 02 B2 */	fmuls f0, f0, f10
/* 801C51C0 001C21C0  C0 64 00 20 */	lfs f3, 0x20(r4)
/* 801C51C4 001C21C4  C0 84 00 2C */	lfs f4, 0x2c(r4)
/* 801C51C8 001C21C8  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 801C51CC 001C21CC  EC 03 01 FA */	fmadds f0, f3, f7, f0
/* 801C51D0 001C21D0  EC 04 02 3A */	fmadds f0, f4, f8, f0
/* 801C51D4 001C21D4  D0 03 00 08 */	stfs f0, 8(r3)
/* 801C51D8 001C21D8  48 00 02 20 */	b lbl_801C53F8
lbl_801C51DC:
/* 801C51DC 001C21DC  ED 82 00 B2 */	fmuls f12, f2, f2
/* 801C51E0 001C21E0  C1 A4 00 04 */	lfs f13, 4(r4)
/* 801C51E4 001C21E4  C0 62 C4 7C */	lfs f3, lbl_8027C11C-_SDA2_BASE_(r2)
/* 801C51E8 001C21E8  1C 06 00 0C */	mulli r0, r6, 0xc
/* 801C51EC 001C21EC  C1 42 C4 78 */	lfs f10, lbl_8027C118-_SDA2_BASE_(r2)
/* 801C51F0 001C21F0  ED 6C 00 B2 */	fmuls f11, f12, f2
/* 801C51F4 001C21F4  EC 2D 18 28 */	fsubs f1, f13, f3
/* 801C51F8 001C21F8  80 84 00 08 */	lwz r4, 8(r4)
/* 801C51FC 001C21FC  EC EA 1B 7C */	fnmsubs f7, f10, f13, f3
/* 801C5200 001C2200  FC 60 58 50 */	fneg f3, f11
/* 801C5204 001C2204  7C 84 02 14 */	add r4, r4, r0
/* 801C5208 001C2208  EC AA 68 28 */	fsubs f5, f10, f13
/* 801C520C 001C220C  EC 81 03 32 */	fmuls f4, f1, f12
/* 801C5210 001C2210  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 801C5214 001C2214  ED 0A 1B 3A */	fmadds f8, f10, f12, f3
/* 801C5218 001C2218  EC CB 60 28 */	fsubs f6, f11, f12
/* 801C521C 001C221C  C0 64 00 00 */	lfs f3, 0(r4)
/* 801C5220 001C2220  EC A5 22 FA */	fmadds f5, f5, f11, f4
/* 801C5224 001C2224  ED 28 10 28 */	fsubs f9, f8, f2
/* 801C5228 001C2228  C0 84 00 18 */	lfs f4, 0x18(r4)
/* 801C522C 001C222C  ED 0D 50 28 */	fsubs f8, f13, f10
/* 801C5230 001C2230  ED 40 28 2A */	fadds f10, f0, f5
/* 801C5234 001C2234  C0 A4 00 24 */	lfs f5, 0x24(r4)
/* 801C5238 001C2238  EC E7 03 32 */	fmuls f7, f7, f12
/* 801C523C 001C223C  ED 2D 02 72 */	fmuls f9, f13, f9
/* 801C5240 001C2240  EC 01 02 B2 */	fmuls f0, f1, f10
/* 801C5244 001C2244  EC 28 3A FA */	fmadds f1, f8, f11, f7
/* 801C5248 001C2248  EC CD 01 B2 */	fmuls f6, f13, f6
/* 801C524C 001C224C  EC 03 02 7A */	fmadds f0, f3, f9, f0
/* 801C5250 001C2250  EC ED 08 BA */	fmadds f7, f13, f2, f1
/* 801C5254 001C2254  EC 04 01 FA */	fmadds f0, f4, f7, f0
/* 801C5258 001C2258  EC 05 01 BA */	fmadds f0, f5, f6, f0
/* 801C525C 001C225C  D0 03 00 00 */	stfs f0, 0(r3)
/* 801C5260 001C2260  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 801C5264 001C2264  C0 24 00 04 */	lfs f1, 4(r4)
/* 801C5268 001C2268  EC 00 02 B2 */	fmuls f0, f0, f10
/* 801C526C 001C226C  C0 44 00 1C */	lfs f2, 0x1c(r4)
/* 801C5270 001C2270  C0 64 00 28 */	lfs f3, 0x28(r4)
/* 801C5274 001C2274  EC 01 02 7A */	fmadds f0, f1, f9, f0
/* 801C5278 001C2278  EC 02 01 FA */	fmadds f0, f2, f7, f0
/* 801C527C 001C227C  EC 03 01 BA */	fmadds f0, f3, f6, f0
/* 801C5280 001C2280  D0 03 00 04 */	stfs f0, 4(r3)
/* 801C5284 001C2284  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 801C5288 001C2288  C0 24 00 08 */	lfs f1, 8(r4)
/* 801C528C 001C228C  EC 00 02 B2 */	fmuls f0, f0, f10
/* 801C5290 001C2290  C0 44 00 20 */	lfs f2, 0x20(r4)
/* 801C5294 001C2294  C0 64 00 2C */	lfs f3, 0x2c(r4)
/* 801C5298 001C2298  EC 01 02 7A */	fmadds f0, f1, f9, f0
/* 801C529C 001C229C  EC 02 01 FA */	fmadds f0, f2, f7, f0
/* 801C52A0 001C22A0  EC 03 01 BA */	fmadds f0, f3, f6, f0
/* 801C52A4 001C22A4  D0 03 00 08 */	stfs f0, 8(r3)
/* 801C52A8 001C22A8  48 00 01 50 */	b lbl_801C53F8
lbl_801C52AC:
/* 801C52AC 001C22AC  88 04 00 00 */	lbz r0, 0(r4)
/* 801C52B0 001C22B0  A8 A4 00 02 */	lha r5, 2(r4)
/* 801C52B4 001C22B4  2C 00 00 02 */	cmpwi r0, 2
/* 801C52B8 001C22B8  38 A5 FF FF */	addi r5, r5, -1
/* 801C52BC 001C22BC  7C A5 07 34 */	extsh r5, r5
/* 801C52C0 001C22C0  41 82 00 74 */	beq lbl_801C5334
/* 801C52C4 001C22C4  40 80 00 14 */	bge lbl_801C52D8
/* 801C52C8 001C22C8  2C 00 00 00 */	cmpwi r0, 0
/* 801C52CC 001C22CC  41 82 00 18 */	beq lbl_801C52E4
/* 801C52D0 001C22D0  40 80 00 3C */	bge lbl_801C530C
/* 801C52D4 001C22D4  48 00 01 24 */	b lbl_801C53F8
lbl_801C52D8:
/* 801C52D8 001C22D8  2C 00 00 04 */	cmpwi r0, 4
/* 801C52DC 001C22DC  40 80 01 1C */	bge lbl_801C53F8
/* 801C52E0 001C22E0  48 00 00 F0 */	b lbl_801C53D0
lbl_801C52E4:
/* 801C52E4 001C22E4  1C 05 00 0C */	mulli r0, r5, 0xc
/* 801C52E8 001C22E8  80 84 00 08 */	lwz r4, 8(r4)
/* 801C52EC 001C22EC  7C A4 02 14 */	add r5, r4, r0
/* 801C52F0 001C22F0  80 85 00 00 */	lwz r4, 0(r5)
/* 801C52F4 001C22F4  80 05 00 04 */	lwz r0, 4(r5)
/* 801C52F8 001C22F8  90 83 00 00 */	stw r4, 0(r3)
/* 801C52FC 001C22FC  90 03 00 04 */	stw r0, 4(r3)
/* 801C5300 001C2300  80 05 00 08 */	lwz r0, 8(r5)
/* 801C5304 001C2304  90 03 00 08 */	stw r0, 8(r3)
/* 801C5308 001C2308  48 00 00 F0 */	b lbl_801C53F8
lbl_801C530C:
/* 801C530C 001C230C  1C 05 00 24 */	mulli r0, r5, 0x24
/* 801C5310 001C2310  80 84 00 08 */	lwz r4, 8(r4)
/* 801C5314 001C2314  7C A4 02 14 */	add r5, r4, r0
/* 801C5318 001C2318  80 85 00 00 */	lwz r4, 0(r5)
/* 801C531C 001C231C  80 05 00 04 */	lwz r0, 4(r5)
/* 801C5320 001C2320  90 83 00 00 */	stw r4, 0(r3)
/* 801C5324 001C2324  90 03 00 04 */	stw r0, 4(r3)
/* 801C5328 001C2328  80 05 00 08 */	lwz r0, 8(r5)
/* 801C532C 001C232C  90 03 00 08 */	stw r0, 8(r3)
/* 801C5330 001C2330  48 00 00 C8 */	b lbl_801C53F8
lbl_801C5334:
/* 801C5334 001C2334  FC 20 00 50 */	fneg f1, f0
/* 801C5338 001C2338  1C A5 00 0C */	mulli r5, r5, 0xc
/* 801C533C 001C233C  80 04 00 08 */	lwz r0, 8(r4)
/* 801C5340 001C2340  C0 C2 C4 84 */	lfs f6, lbl_8027C124-_SDA2_BASE_(r2)
/* 801C5344 001C2344  EC 41 00 2A */	fadds f2, f1, f0
/* 801C5348 001C2348  38 85 FF F4 */	addi r4, r5, -12
/* 801C534C 001C234C  7C 80 22 14 */	add r4, r0, r4
/* 801C5350 001C2350  C0 A2 C4 7C */	lfs f5, lbl_8027C11C-_SDA2_BASE_(r2)
/* 801C5354 001C2354  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 801C5358 001C2358  EC 80 10 2A */	fadds f4, f0, f2
/* 801C535C 001C235C  EC 21 01 B2 */	fmuls f1, f1, f6
/* 801C5360 001C2360  C0 44 00 00 */	lfs f2, 0(r4)
/* 801C5364 001C2364  C0 64 00 18 */	lfs f3, 0x18(r4)
/* 801C5368 001C2368  EC A5 01 3A */	fmadds f5, f5, f4, f0
/* 801C536C 001C236C  C0 84 00 24 */	lfs f4, 0x24(r4)
/* 801C5370 001C2370  EC 02 09 FA */	fmadds f0, f2, f7, f1
/* 801C5374 001C2374  EC A6 01 72 */	fmuls f5, f6, f5
/* 801C5378 001C2378  EC 03 01 7A */	fmadds f0, f3, f5, f0
/* 801C537C 001C237C  EC 04 01 BA */	fmadds f0, f4, f6, f0
/* 801C5380 001C2380  D0 03 00 00 */	stfs f0, 0(r3)
/* 801C5384 001C2384  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 801C5388 001C2388  C0 24 00 04 */	lfs f1, 4(r4)
/* 801C538C 001C238C  EC 00 01 B2 */	fmuls f0, f0, f6
/* 801C5390 001C2390  C0 44 00 1C */	lfs f2, 0x1c(r4)
/* 801C5394 001C2394  C0 64 00 28 */	lfs f3, 0x28(r4)
/* 801C5398 001C2398  EC 01 01 FA */	fmadds f0, f1, f7, f0
/* 801C539C 001C239C  EC 02 01 7A */	fmadds f0, f2, f5, f0
/* 801C53A0 001C23A0  EC 03 01 BA */	fmadds f0, f3, f6, f0
/* 801C53A4 001C23A4  D0 03 00 04 */	stfs f0, 4(r3)
/* 801C53A8 001C23A8  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 801C53AC 001C23AC  C0 24 00 08 */	lfs f1, 8(r4)
/* 801C53B0 001C23B0  EC 00 01 B2 */	fmuls f0, f0, f6
/* 801C53B4 001C23B4  C0 44 00 20 */	lfs f2, 0x20(r4)
/* 801C53B8 001C23B8  C0 64 00 2C */	lfs f3, 0x2c(r4)
/* 801C53BC 001C23BC  EC 01 01 FA */	fmadds f0, f1, f7, f0
/* 801C53C0 001C23C0  EC 02 01 7A */	fmadds f0, f2, f5, f0
/* 801C53C4 001C23C4  EC 03 01 BA */	fmadds f0, f3, f6, f0
/* 801C53C8 001C23C8  D0 03 00 08 */	stfs f0, 8(r3)
/* 801C53CC 001C23CC  48 00 00 2C */	b lbl_801C53F8
lbl_801C53D0:
/* 801C53D0 001C23D0  1C A5 00 0C */	mulli r5, r5, 0xc
/* 801C53D4 001C23D4  80 84 00 08 */	lwz r4, 8(r4)
/* 801C53D8 001C23D8  38 05 00 0C */	addi r0, r5, 0xc
/* 801C53DC 001C23DC  7C A4 02 14 */	add r5, r4, r0
/* 801C53E0 001C23E0  80 85 00 00 */	lwz r4, 0(r5)
/* 801C53E4 001C23E4  80 05 00 04 */	lwz r0, 4(r5)
/* 801C53E8 001C23E8  90 83 00 00 */	stw r4, 0(r3)
/* 801C53EC 001C23EC  90 03 00 04 */	stw r0, 4(r3)
/* 801C53F0 001C23F0  80 05 00 08 */	lwz r0, 8(r5)
/* 801C53F4 001C23F4  90 03 00 08 */	stw r0, 8(r3)
lbl_801C53F8:
/* 801C53F8 001C23F8  E3 E1 00 28 */	psq_l p31, 40(r1), 0, qr0
/* 801C53FC 001C23FC  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 801C5400 001C2400  38 21 00 30 */	addi r1, r1, 0x30
/* 801C5404 001C2404  4E 80 00 20 */	blr 

.global splArcLength
splArcLength:
/* 801C5408 001C2408  EC 62 08 28 */	fsubs f3, f2, f1
/* 801C540C 001C240C  C0 02 C4 B8 */	lfs f0, lbl_8027C158-_SDA2_BASE_(r2)
/* 801C5410 001C2410  38 00 00 07 */	li r0, 7
/* 801C5414 001C2414  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C5418 001C2418  C0 82 C4 90 */	lfs f4, lbl_8027C130-_SDA2_BASE_(r2)
/* 801C541C 001C241C  38 80 00 02 */	li r4, 2
/* 801C5420 001C2420  EC 63 00 32 */	fmuls f3, f3, f0
/* 801C5424 001C2424  EC 01 18 2A */	fadds f0, f1, f3
/* 801C5428 001C2428  7C 09 03 A6 */	mtctr r0
lbl_801C542C:
/* 801C542C 001C242C  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 801C5430 001C2430  40 82 00 B8 */	bne lbl_801C54E8
/* 801C5434 001C2434  ED A0 00 32 */	fmuls f13, f0, f0
/* 801C5438 001C2438  C0 A3 00 04 */	lfs f5, 4(r3)
/* 801C543C 001C243C  C1 03 00 00 */	lfs f8, 0(r3)
/* 801C5440 001C2440  C1 23 00 08 */	lfs f9, 8(r3)
/* 801C5444 001C2444  ED 8D 00 32 */	fmuls f12, f13, f0
/* 801C5448 001C2448  C1 43 00 0C */	lfs f10, 0xc(r3)
/* 801C544C 001C244C  C1 63 00 10 */	lfs f11, 0x10(r3)
/* 801C5450 001C2450  C0 C2 C4 90 */	lfs f6, lbl_8027C130-_SDA2_BASE_(r2)
/* 801C5454 001C2454  EC EC 00 32 */	fmuls f7, f12, f0
/* 801C5458 001C2458  EC A5 03 32 */	fmuls f5, f5, f12
/* 801C545C 001C245C  EC A8 29 FA */	fmadds f5, f8, f7, f5
/* 801C5460 001C2460  EC A9 2B 7A */	fmadds f5, f9, f13, f5
/* 801C5464 001C2464  EC AA 28 3A */	fmadds f5, f10, f0, f5
/* 801C5468 001C2468  ED 2B 28 2A */	fadds f9, f11, f5
/* 801C546C 001C246C  FC 09 30 40 */	.byte 0xFC, 0x09, 0x30, 0x40  /* unknown instruction */
/* 801C5470 001C2470  40 80 00 14 */	bge lbl_801C5484
/* 801C5474 001C2474  C0 A2 C4 A0 */	lfs f5, lbl_8027C140-_SDA2_BASE_(r2)
/* 801C5478 001C2478  FC 09 28 40 */	.byte 0xFC, 0x09, 0x28, 0x40  /* unknown instruction */
/* 801C547C 001C247C  40 81 00 08 */	ble lbl_801C5484
/* 801C5480 001C2480  FD 20 30 90 */	fmr f9, f6
lbl_801C5484:
/* 801C5484 001C2484  C0 A2 C4 90 */	lfs f5, lbl_8027C130-_SDA2_BASE_(r2)
/* 801C5488 001C2488  FC 09 28 40 */	.byte 0xFC, 0x09, 0x28, 0x40  /* unknown instruction */
/* 801C548C 001C248C  40 81 00 50 */	ble lbl_801C54DC
/* 801C5490 001C2490  FC C0 48 34 */	frsqrte f6, f9
/* 801C5494 001C2494  C9 02 C4 A8 */	lfd f8, lbl_8027C148-_SDA2_BASE_(r2)
/* 801C5498 001C2498  C8 E2 C4 B0 */	lfd f7, lbl_8027C150-_SDA2_BASE_(r2)
/* 801C549C 001C249C  FC A6 01 B2 */	fmul f5, f6, f6
/* 801C54A0 001C24A0  FC C8 01 B2 */	fmul f6, f8, f6
/* 801C54A4 001C24A4  FC A9 39 7C */	fnmsub f5, f9, f5, f7
/* 801C54A8 001C24A8  FC C6 01 72 */	fmul f6, f6, f5
/* 801C54AC 001C24AC  FC A6 01 B2 */	fmul f5, f6, f6
/* 801C54B0 001C24B0  FC C8 01 B2 */	fmul f6, f8, f6
/* 801C54B4 001C24B4  FC A9 39 7C */	fnmsub f5, f9, f5, f7
/* 801C54B8 001C24B8  FC C6 01 72 */	fmul f6, f6, f5
/* 801C54BC 001C24BC  FC A6 01 B2 */	fmul f5, f6, f6
/* 801C54C0 001C24C0  FC C8 01 B2 */	fmul f6, f8, f6
/* 801C54C4 001C24C4  FC A9 39 7C */	fnmsub f5, f9, f5, f7
/* 801C54C8 001C24C8  FC A6 01 72 */	fmul f5, f6, f5
/* 801C54CC 001C24CC  FC A9 01 72 */	fmul f5, f9, f5
/* 801C54D0 001C24D0  FC A0 28 18 */	frsp f5, f5
/* 801C54D4 001C24D4  D0 A1 00 14 */	stfs f5, 0x14(r1)
/* 801C54D8 001C24D8  C1 21 00 14 */	lfs f9, 0x14(r1)
lbl_801C54DC:
/* 801C54DC 001C24DC  C0 A2 C4 88 */	lfs f5, lbl_8027C128-_SDA2_BASE_(r2)
/* 801C54E0 001C24E0  EC 85 22 7A */	fmadds f4, f5, f9, f4
/* 801C54E4 001C24E4  48 00 00 B4 */	b lbl_801C5598
lbl_801C54E8:
/* 801C54E8 001C24E8  ED A0 00 32 */	fmuls f13, f0, f0
/* 801C54EC 001C24EC  C0 A3 00 04 */	lfs f5, 4(r3)
/* 801C54F0 001C24F0  C1 03 00 00 */	lfs f8, 0(r3)
/* 801C54F4 001C24F4  C1 23 00 08 */	lfs f9, 8(r3)
/* 801C54F8 001C24F8  ED 8D 00 32 */	fmuls f12, f13, f0
/* 801C54FC 001C24FC  C1 43 00 0C */	lfs f10, 0xc(r3)
/* 801C5500 001C2500  C1 63 00 10 */	lfs f11, 0x10(r3)
/* 801C5504 001C2504  C0 C2 C4 90 */	lfs f6, lbl_8027C130-_SDA2_BASE_(r2)
/* 801C5508 001C2508  EC EC 00 32 */	fmuls f7, f12, f0
/* 801C550C 001C250C  EC A5 03 32 */	fmuls f5, f5, f12
/* 801C5510 001C2510  EC A8 29 FA */	fmadds f5, f8, f7, f5
/* 801C5514 001C2514  EC A9 2B 7A */	fmadds f5, f9, f13, f5
/* 801C5518 001C2518  EC AA 28 3A */	fmadds f5, f10, f0, f5
/* 801C551C 001C251C  ED 2B 28 2A */	fadds f9, f11, f5
/* 801C5520 001C2520  FC 09 30 40 */	.byte 0xFC, 0x09, 0x30, 0x40  /* unknown instruction */
/* 801C5524 001C2524  40 80 00 14 */	bge lbl_801C5538
/* 801C5528 001C2528  C0 A2 C4 A0 */	lfs f5, lbl_8027C140-_SDA2_BASE_(r2)
/* 801C552C 001C252C  FC 09 28 40 */	.byte 0xFC, 0x09, 0x28, 0x40  /* unknown instruction */
/* 801C5530 001C2530  40 81 00 08 */	ble lbl_801C5538
/* 801C5534 001C2534  FD 20 30 90 */	fmr f9, f6
lbl_801C5538:
/* 801C5538 001C2538  C0 A2 C4 90 */	lfs f5, lbl_8027C130-_SDA2_BASE_(r2)
/* 801C553C 001C253C  FC 09 28 40 */	.byte 0xFC, 0x09, 0x28, 0x40  /* unknown instruction */
/* 801C5540 001C2540  40 81 00 50 */	ble lbl_801C5590
/* 801C5544 001C2544  FC C0 48 34 */	frsqrte f6, f9
/* 801C5548 001C2548  C9 02 C4 A8 */	lfd f8, lbl_8027C148-_SDA2_BASE_(r2)
/* 801C554C 001C254C  C8 E2 C4 B0 */	lfd f7, lbl_8027C150-_SDA2_BASE_(r2)
/* 801C5550 001C2550  FC A6 01 B2 */	fmul f5, f6, f6
/* 801C5554 001C2554  FC C8 01 B2 */	fmul f6, f8, f6
/* 801C5558 001C2558  FC A9 39 7C */	fnmsub f5, f9, f5, f7
/* 801C555C 001C255C  FC C6 01 72 */	fmul f6, f6, f5
/* 801C5560 001C2560  FC A6 01 B2 */	fmul f5, f6, f6
/* 801C5564 001C2564  FC C8 01 B2 */	fmul f6, f8, f6
/* 801C5568 001C2568  FC A9 39 7C */	fnmsub f5, f9, f5, f7
/* 801C556C 001C256C  FC C6 01 72 */	fmul f6, f6, f5
/* 801C5570 001C2570  FC A6 01 B2 */	fmul f5, f6, f6
/* 801C5574 001C2574  FC C8 01 B2 */	fmul f6, f8, f6
/* 801C5578 001C2578  FC A9 39 7C */	fnmsub f5, f9, f5, f7
/* 801C557C 001C257C  FC A6 01 72 */	fmul f5, f6, f5
/* 801C5580 001C2580  FC A9 01 72 */	fmul f5, f9, f5
/* 801C5584 001C2584  FC A0 28 18 */	frsp f5, f5
/* 801C5588 001C2588  D0 A1 00 10 */	stfs f5, 0x10(r1)
/* 801C558C 001C258C  C1 21 00 10 */	lfs f9, 0x10(r1)
lbl_801C5590:
/* 801C5590 001C2590  C0 A2 C4 78 */	lfs f5, lbl_8027C118-_SDA2_BASE_(r2)
/* 801C5594 001C2594  EC 85 22 7A */	fmadds f4, f5, f9, f4
lbl_801C5598:
/* 801C5598 001C2598  EC 00 18 2A */	fadds f0, f0, f3
/* 801C559C 001C259C  38 84 00 01 */	addi r4, r4, 1
/* 801C55A0 001C25A0  42 00 FE 8C */	bdnz lbl_801C542C
/* 801C55A4 001C25A4  ED 81 00 72 */	fmuls f12, f1, f1
/* 801C55A8 001C25A8  C0 03 00 04 */	lfs f0, 4(r3)
/* 801C55AC 001C25AC  C0 E3 00 00 */	lfs f7, 0(r3)
/* 801C55B0 001C25B0  C1 03 00 08 */	lfs f8, 8(r3)
/* 801C55B4 001C25B4  ED 6C 00 72 */	fmuls f11, f12, f1
/* 801C55B8 001C25B8  C1 23 00 0C */	lfs f9, 0xc(r3)
/* 801C55BC 001C25BC  C1 43 00 10 */	lfs f10, 0x10(r3)
/* 801C55C0 001C25C0  C0 A2 C4 90 */	lfs f5, lbl_8027C130-_SDA2_BASE_(r2)
/* 801C55C4 001C25C4  EC CB 00 72 */	fmuls f6, f11, f1
/* 801C55C8 001C25C8  EC 00 02 F2 */	fmuls f0, f0, f11
/* 801C55CC 001C25CC  EC 07 01 BA */	fmadds f0, f7, f6, f0
/* 801C55D0 001C25D0  EC 08 03 3A */	fmadds f0, f8, f12, f0
/* 801C55D4 001C25D4  EC 09 00 7A */	fmadds f0, f9, f1, f0
/* 801C55D8 001C25D8  EC 0A 00 2A */	fadds f0, f10, f0
/* 801C55DC 001C25DC  FC 00 28 40 */	.byte 0xFC, 0x00, 0x28, 0x40  /* unknown instruction */
/* 801C55E0 001C25E0  40 80 00 14 */	bge lbl_801C55F4
/* 801C55E4 001C25E4  C0 22 C4 A0 */	lfs f1, lbl_8027C140-_SDA2_BASE_(r2)
/* 801C55E8 001C25E8  FC 00 08 40 */	.byte 0xFC, 0x00, 0x08, 0x40  /* unknown instruction */
/* 801C55EC 001C25EC  40 81 00 08 */	ble lbl_801C55F4
/* 801C55F0 001C25F0  FC 00 28 90 */	fmr f0, f5
lbl_801C55F4:
/* 801C55F4 001C25F4  C0 22 C4 90 */	lfs f1, lbl_8027C130-_SDA2_BASE_(r2)
/* 801C55F8 001C25F8  FC 00 08 40 */	.byte 0xFC, 0x00, 0x08, 0x40  /* unknown instruction */
/* 801C55FC 001C25FC  40 81 00 50 */	ble lbl_801C564C
/* 801C5600 001C2600  FC A0 00 34 */	frsqrte f5, f0
/* 801C5604 001C2604  C8 E2 C4 A8 */	lfd f7, lbl_8027C148-_SDA2_BASE_(r2)
/* 801C5608 001C2608  C8 C2 C4 B0 */	lfd f6, lbl_8027C150-_SDA2_BASE_(r2)
/* 801C560C 001C260C  FC 25 01 72 */	fmul f1, f5, f5
/* 801C5610 001C2610  FC A7 01 72 */	fmul f5, f7, f5
/* 801C5614 001C2614  FC 20 30 7C */	fnmsub f1, f0, f1, f6
/* 801C5618 001C2618  FC A5 00 72 */	fmul f5, f5, f1
/* 801C561C 001C261C  FC 25 01 72 */	fmul f1, f5, f5
/* 801C5620 001C2620  FC A7 01 72 */	fmul f5, f7, f5
/* 801C5624 001C2624  FC 20 30 7C */	fnmsub f1, f0, f1, f6
/* 801C5628 001C2628  FC A5 00 72 */	fmul f5, f5, f1
/* 801C562C 001C262C  FC 25 01 72 */	fmul f1, f5, f5
/* 801C5630 001C2630  FC A7 01 72 */	fmul f5, f7, f5
/* 801C5634 001C2634  FC 20 30 7C */	fnmsub f1, f0, f1, f6
/* 801C5638 001C2638  FC 25 00 72 */	fmul f1, f5, f1
/* 801C563C 001C263C  FC 00 00 72 */	fmul f0, f0, f1
/* 801C5640 001C2640  FC 00 00 18 */	frsp f0, f0
/* 801C5644 001C2644  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 801C5648 001C2648  C0 01 00 0C */	lfs f0, 0xc(r1)
lbl_801C564C:
/* 801C564C 001C264C  ED 82 00 B2 */	fmuls f12, f2, f2
/* 801C5650 001C2650  C0 23 00 04 */	lfs f1, 4(r3)
/* 801C5654 001C2654  C0 E3 00 00 */	lfs f7, 0(r3)
/* 801C5658 001C2658  C1 03 00 08 */	lfs f8, 8(r3)
/* 801C565C 001C265C  ED 6C 00 B2 */	fmuls f11, f12, f2
/* 801C5660 001C2660  C1 23 00 0C */	lfs f9, 0xc(r3)
/* 801C5664 001C2664  C1 43 00 10 */	lfs f10, 0x10(r3)
/* 801C5668 001C2668  C0 A2 C4 90 */	lfs f5, lbl_8027C130-_SDA2_BASE_(r2)
/* 801C566C 001C266C  EC CB 00 B2 */	fmuls f6, f11, f2
/* 801C5670 001C2670  EC 21 02 F2 */	fmuls f1, f1, f11
/* 801C5674 001C2674  EC 27 09 BA */	fmadds f1, f7, f6, f1
/* 801C5678 001C2678  EC 28 0B 3A */	fmadds f1, f8, f12, f1
/* 801C567C 001C267C  EC 29 08 BA */	fmadds f1, f9, f2, f1
/* 801C5680 001C2680  EC EA 08 2A */	fadds f7, f10, f1
/* 801C5684 001C2684  FC 07 28 40 */	.byte 0xFC, 0x07, 0x28, 0x40  /* unknown instruction */
/* 801C5688 001C2688  40 80 00 14 */	bge lbl_801C569C
/* 801C568C 001C268C  C0 22 C4 A0 */	lfs f1, lbl_8027C140-_SDA2_BASE_(r2)
/* 801C5690 001C2690  FC 07 08 40 */	.byte 0xFC, 0x07, 0x08, 0x40  /* unknown instruction */
/* 801C5694 001C2694  40 81 00 08 */	ble lbl_801C569C
/* 801C5698 001C2698  FC E0 28 90 */	fmr f7, f5
lbl_801C569C:
/* 801C569C 001C269C  C0 22 C4 90 */	lfs f1, lbl_8027C130-_SDA2_BASE_(r2)
/* 801C56A0 001C26A0  FC 07 08 40 */	.byte 0xFC, 0x07, 0x08, 0x40  /* unknown instruction */
/* 801C56A4 001C26A4  40 81 00 50 */	ble lbl_801C56F4
/* 801C56A8 001C26A8  FC 40 38 34 */	frsqrte f2, f7
/* 801C56AC 001C26AC  C8 C2 C4 A8 */	lfd f6, lbl_8027C148-_SDA2_BASE_(r2)
/* 801C56B0 001C26B0  C8 A2 C4 B0 */	lfd f5, lbl_8027C150-_SDA2_BASE_(r2)
/* 801C56B4 001C26B4  FC 22 00 B2 */	fmul f1, f2, f2
/* 801C56B8 001C26B8  FC 46 00 B2 */	fmul f2, f6, f2
/* 801C56BC 001C26BC  FC 27 28 7C */	fnmsub f1, f7, f1, f5
/* 801C56C0 001C26C0  FC 42 00 72 */	fmul f2, f2, f1
/* 801C56C4 001C26C4  FC 22 00 B2 */	fmul f1, f2, f2
/* 801C56C8 001C26C8  FC 46 00 B2 */	fmul f2, f6, f2
/* 801C56CC 001C26CC  FC 27 28 7C */	fnmsub f1, f7, f1, f5
/* 801C56D0 001C26D0  FC 42 00 72 */	fmul f2, f2, f1
/* 801C56D4 001C26D4  FC 22 00 B2 */	fmul f1, f2, f2
/* 801C56D8 001C26D8  FC 46 00 B2 */	fmul f2, f6, f2
/* 801C56DC 001C26DC  FC 27 28 7C */	fnmsub f1, f7, f1, f5
/* 801C56E0 001C26E0  FC 22 00 72 */	fmul f1, f2, f1
/* 801C56E4 001C26E4  FC 27 00 72 */	fmul f1, f7, f1
/* 801C56E8 001C26E8  FC 20 08 18 */	frsp f1, f1
/* 801C56EC 001C26EC  D0 21 00 08 */	stfs f1, 8(r1)
/* 801C56F0 001C26F0  C0 E1 00 08 */	lfs f7, 8(r1)
lbl_801C56F4:
/* 801C56F4 001C26F4  EC 24 00 2A */	fadds f1, f4, f0
/* 801C56F8 001C26F8  C0 02 C4 7C */	lfs f0, lbl_8027C11C-_SDA2_BASE_(r2)
/* 801C56FC 001C26FC  EC 21 38 2A */	fadds f1, f1, f7
/* 801C5700 001C2700  EC 23 00 72 */	fmuls f1, f3, f1
/* 801C5704 001C2704  EC 21 00 24 */	fdivs f1, f1, f0
/* 801C5708 001C2708  38 21 00 20 */	addi r1, r1, 0x20
/* 801C570C 001C270C  4E 80 00 20 */	blr 

.global splArcLengthGetParameter
splArcLengthGetParameter:
/* 801C5710 001C2710  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 801C5714 001C2714  7C 08 02 A6 */	mflr r0
/* 801C5718 001C2718  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 801C571C 001C271C  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 801C5720 001C2720  F3 E1 00 98 */	psq_st p31, 152(r1), 0, qr0
/* 801C5724 001C2724  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 801C5728 001C2728  F3 C1 00 88 */	psq_st p30, 136(r1), 0, qr0
/* 801C572C 001C272C  DB A1 00 70 */	stfd f29, 0x70(r1)
/* 801C5730 001C2730  F3 A1 00 78 */	psq_st p29, 120(r1), 0, qr0
/* 801C5734 001C2734  DB 81 00 60 */	stfd f28, 0x60(r1)
/* 801C5738 001C2738  F3 81 00 68 */	psq_st p28, 104(r1), 0, qr0
/* 801C573C 001C273C  DB 61 00 50 */	stfd f27, 0x50(r1)
/* 801C5740 001C2740  F3 61 00 58 */	psq_st p27, 88(r1), 0, qr0
/* 801C5744 001C2744  DB 41 00 40 */	stfd f26, 0x40(r1)
/* 801C5748 001C2748  F3 41 00 48 */	psq_st p26, 72(r1), 0, qr0
/* 801C574C 001C274C  DB 21 00 30 */	stfd f25, 0x30(r1)
/* 801C5750 001C2750  F3 21 00 38 */	psq_st p25, 56(r1), 0, qr0
/* 801C5754 001C2754  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801C5758 001C2758  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801C575C 001C275C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 801C5760 001C2760  C3 82 C4 90 */	lfs f28, lbl_8027C130-_SDA2_BASE_(r2)
/* 801C5764 001C2764  7C 7D 1B 78 */	mr r29, r3
/* 801C5768 001C2768  C3 62 C4 80 */	lfs f27, lbl_8027C120-_SDA2_BASE_(r2)
/* 801C576C 001C276C  3B C0 00 00 */	li r30, 0
/* 801C5770 001C2770  FC 01 E0 40 */	.byte 0xFC, 0x01, 0xE0, 0x40  /* unknown instruction */
/* 801C5774 001C2774  4C 40 13 82 */	cror 2, 0, 2
/* 801C5778 001C2778  40 82 00 0C */	bne lbl_801C5784
/* 801C577C 001C277C  FC 20 E0 90 */	fmr f1, f28
/* 801C5780 001C2780  48 00 01 3C */	b lbl_801C58BC
lbl_801C5784:
/* 801C5784 001C2784  FC 01 D8 40 */	.byte 0xFC, 0x01, 0xD8, 0x40  /* unknown instruction */
/* 801C5788 001C2788  4C 41 13 82 */	cror 2, 1, 2
/* 801C578C 001C278C  40 82 01 24 */	bne lbl_801C58B0
/* 801C5790 001C2790  FC 20 D8 90 */	fmr f1, f27
/* 801C5794 001C2794  48 00 01 28 */	b lbl_801C58BC
/* 801C5798 001C2798  48 00 00 0C */	b lbl_801C57A4
lbl_801C579C:
/* 801C579C 001C279C  38 63 00 04 */	addi r3, r3, 4
/* 801C57A0 001C27A0  3B DE 00 01 */	addi r30, r30, 1
lbl_801C57A4:
/* 801C57A4 001C27A4  C0 03 00 04 */	lfs f0, 4(r3)
/* 801C57A8 001C27A8  FC 00 08 40 */	.byte 0xFC, 0x00, 0x08, 0x40  /* unknown instruction */
/* 801C57AC 001C27AC  41 80 FF F0 */	blt lbl_801C579C
/* 801C57B0 001C27B0  88 1D 00 00 */	lbz r0, 0(r29)
/* 801C57B4 001C27B4  2C 00 00 00 */	cmpwi r0, 0
/* 801C57B8 001C27B8  41 82 00 14 */	beq lbl_801C57CC
/* 801C57BC 001C27BC  41 80 00 AC */	blt lbl_801C5868
/* 801C57C0 001C27C0  2C 00 00 04 */	cmpwi r0, 4
/* 801C57C4 001C27C4  40 80 00 A4 */	bge lbl_801C5868
/* 801C57C8 001C27C8  48 00 00 24 */	b lbl_801C57EC
lbl_801C57CC:
/* 801C57CC 001C27CC  57 C0 10 3A */	slwi r0, r30, 2
/* 801C57D0 001C27D0  7C 64 02 14 */	add r3, r4, r0
/* 801C57D4 001C27D4  7C 44 04 2E */	lfsx f2, r4, r0
/* 801C57D8 001C27D8  C0 03 00 04 */	lfs f0, 4(r3)
/* 801C57DC 001C27DC  EC 21 10 28 */	fsubs f1, f1, f2
/* 801C57E0 001C27E0  EC 00 10 28 */	fsubs f0, f0, f2
/* 801C57E4 001C27E4  EF 41 00 24 */	fdivs f26, f1, f0
/* 801C57E8 001C27E8  48 00 00 80 */	b lbl_801C5868
lbl_801C57EC:
/* 801C57EC 001C27EC  57 C0 10 3A */	slwi r0, r30, 2
/* 801C57F0 001C27F0  C0 5D 00 0C */	lfs f2, 0xc(r29)
/* 801C57F4 001C27F4  7C 04 04 2E */	lfsx f0, r4, r0
/* 801C57F8 001C27F8  1F FE 00 14 */	mulli r31, r30, 0x14
/* 801C57FC 001C27FC  C3 E2 C4 C0 */	lfs f31, lbl_8027C160-_SDA2_BASE_(r2)
/* 801C5800 001C2800  EC 01 00 28 */	fsubs f0, f1, f0
/* 801C5804 001C2804  C3 A2 C4 BC */	lfs f29, lbl_8027C15C-_SDA2_BASE_(r2)
/* 801C5808 001C2808  C3 C2 C4 90 */	lfs f30, lbl_8027C130-_SDA2_BASE_(r2)
/* 801C580C 001C280C  EF 22 00 32 */	fmuls f25, f2, f0
/* 801C5810 001C2810  48 00 00 3C */	b lbl_801C584C
lbl_801C5814:
/* 801C5814 001C2814  EC 1C D8 2A */	fadds f0, f28, f27
/* 801C5818 001C2818  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 801C581C 001C281C  FC 20 E0 90 */	fmr f1, f28
/* 801C5820 001C2820  7C 60 FA 14 */	add r3, r0, r31
/* 801C5824 001C2824  EF 40 07 72 */	fmuls f26, f0, f29
/* 801C5828 001C2828  FC 40 D0 90 */	fmr f2, f26
/* 801C582C 001C282C  4B FF FB DD */	bl splArcLength
/* 801C5830 001C2830  EC 1F 08 2A */	fadds f0, f31, f1
/* 801C5834 001C2834  FC 19 00 40 */	.byte 0xFC, 0x19, 0x00, 0x40  /* unknown instruction */
/* 801C5838 001C2838  40 80 00 0C */	bge lbl_801C5844
/* 801C583C 001C283C  FF 60 D0 90 */	fmr f27, f26
/* 801C5840 001C2840  48 00 00 0C */	b lbl_801C584C
lbl_801C5844:
/* 801C5844 001C2844  FF 80 D0 90 */	fmr f28, f26
/* 801C5848 001C2848  EF 39 08 28 */	fsubs f25, f25, f1
lbl_801C584C:
/* 801C584C 001C284C  EC 1C D8 28 */	fsubs f0, f28, f27
/* 801C5850 001C2850  FC 00 F0 40 */	.byte 0xFC, 0x00, 0xF0, 0x40  /* unknown instruction */
/* 801C5854 001C2854  40 80 00 08 */	bge lbl_801C585C
/* 801C5858 001C2858  FC 00 00 50 */	fneg f0, f0
lbl_801C585C:
/* 801C585C 001C285C  FC 00 F8 40 */	.byte 0xFC, 0x00, 0xF8, 0x40  /* unknown instruction */
/* 801C5860 001C2860  4C 41 13 82 */	cror 2, 1, 2
/* 801C5864 001C2864  41 82 FF B0 */	beq lbl_801C5814
lbl_801C5868:
/* 801C5868 001C2868  A8 1D 00 02 */	lha r0, 2(r29)
/* 801C586C 001C286C  3C 60 43 30 */	lis r3, 0x4330
/* 801C5870 001C2870  6F C4 80 00 */	xoris r4, r30, 0x8000
/* 801C5874 001C2874  90 61 00 08 */	stw r3, 8(r1)
/* 801C5878 001C2878  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801C587C 001C287C  C8 62 C4 98 */	lfd f3, lbl_8027C138-_SDA2_BASE_(r2)
/* 801C5880 001C2880  90 81 00 0C */	stw r4, 0xc(r1)
/* 801C5884 001C2884  C0 02 C4 80 */	lfs f0, lbl_8027C120-_SDA2_BASE_(r2)
/* 801C5888 001C2888  C8 21 00 08 */	lfd f1, 8(r1)
/* 801C588C 001C288C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C5890 001C2890  EC 41 18 28 */	fsubs f2, f1, f3
/* 801C5894 001C2894  90 61 00 10 */	stw r3, 0x10(r1)
/* 801C5898 001C2898  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 801C589C 001C289C  EC 5A 10 2A */	fadds f2, f26, f2
/* 801C58A0 001C28A0  EC 21 18 28 */	fsubs f1, f1, f3
/* 801C58A4 001C28A4  EC 01 00 28 */	fsubs f0, f1, f0
/* 801C58A8 001C28A8  EC 22 00 24 */	fdivs f1, f2, f0
/* 801C58AC 001C28AC  48 00 00 10 */	b lbl_801C58BC
lbl_801C58B0:
/* 801C58B0 001C28B0  80 9D 00 10 */	lwz r4, 0x10(r29)
/* 801C58B4 001C28B4  7C 83 23 78 */	mr r3, r4
/* 801C58B8 001C28B8  4B FF FE EC */	b lbl_801C57A4
lbl_801C58BC:
/* 801C58BC 001C28BC  E3 E1 00 98 */	psq_l p31, 152(r1), 0, qr0
/* 801C58C0 001C28C0  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 801C58C4 001C28C4  E3 C1 00 88 */	psq_l p30, 136(r1), 0, qr0
/* 801C58C8 001C28C8  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 801C58CC 001C28CC  E3 A1 00 78 */	psq_l p29, 120(r1), 0, qr0
/* 801C58D0 001C28D0  CB A1 00 70 */	lfd f29, 0x70(r1)
/* 801C58D4 001C28D4  E3 81 00 68 */	psq_l p28, 104(r1), 0, qr0
/* 801C58D8 001C28D8  CB 81 00 60 */	lfd f28, 0x60(r1)
/* 801C58DC 001C28DC  E3 61 00 58 */	psq_l p27, 88(r1), 0, qr0
/* 801C58E0 001C28E0  CB 61 00 50 */	lfd f27, 0x50(r1)
/* 801C58E4 001C28E4  E3 41 00 48 */	psq_l p26, 72(r1), 0, qr0
/* 801C58E8 001C28E8  CB 41 00 40 */	lfd f26, 0x40(r1)
/* 801C58EC 001C28EC  E3 21 00 38 */	psq_l p25, 56(r1), 0, qr0
/* 801C58F0 001C28F0  CB 21 00 30 */	lfd f25, 0x30(r1)
/* 801C58F4 001C28F4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801C58F8 001C28F8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801C58FC 001C28FC  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 801C5900 001C2900  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 801C5904 001C2904  7C 08 03 A6 */	mtlr r0
/* 801C5908 001C2908  38 21 00 A0 */	addi r1, r1, 0xa0
/* 801C590C 001C290C  4E 80 00 20 */	blr 

.global splArcLengthPoint
splArcLengthPoint:
/* 801C5910 001C2910  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C5914 001C2914  7C 08 02 A6 */	mflr r0
/* 801C5918 001C2918  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C591C 001C291C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C5920 001C2920  7C 9F 23 78 */	mr r31, r4
/* 801C5924 001C2924  93 C1 00 08 */	stw r30, 8(r1)
/* 801C5928 001C2928  7C 7E 1B 78 */	mr r30, r3
/* 801C592C 001C292C  7F E3 FB 78 */	mr r3, r31
/* 801C5930 001C2930  4B FF FD E1 */	bl splArcLengthGetParameter
/* 801C5934 001C2934  7F C3 F3 78 */	mr r3, r30
/* 801C5938 001C2938  7F E4 FB 78 */	mr r4, r31
/* 801C593C 001C293C  4B FF F6 3D */	bl splGetSplinePoint
/* 801C5940 001C2940  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C5944 001C2944  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C5948 001C2948  83 C1 00 08 */	lwz r30, 8(r1)
/* 801C594C 001C294C  7C 08 03 A6 */	mtlr r0
/* 801C5950 001C2950  38 21 00 10 */	addi r1, r1, 0x10
/* 801C5954 001C2954  4E 80 00 20 */	blr 
