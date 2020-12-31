.include "macros.inc"

.section .text  # 0x80195B80 - 0x80195D94

.global func_80195B80
func_80195B80:
/* 80195B80 00192B80  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80195B84 00192B84  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80195B88 00192B88  F3 E1 00 38 */	psq_st p31, 56(r1), 0, qr0
/* 80195B8C 00192B8C  D8 21 00 08 */	stfd f1, 8(r1)
/* 80195B90 00192B90  3C 00 3E 30 */	lis r0, 0x3e30
/* 80195B94 00192B94  80 E1 00 08 */	lwz r7, 8(r1)
/* 80195B98 00192B98  54 E6 00 7E */	clrlwi r6, r7, 1
/* 80195B9C 00192B9C  7C 06 00 00 */	cmpw r6, r0
/* 80195BA0 00192BA0  40 80 00 54 */	bge lbl_80195BF4
/* 80195BA4 00192BA4  FC 00 08 1E */	fctiwz f0, f1
/* 80195BA8 00192BA8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80195BAC 00192BAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80195BB0 00192BB0  2C 00 00 00 */	cmpwi r0, 0
/* 80195BB4 00192BB4  40 82 00 40 */	bne lbl_80195BF4
/* 80195BB8 00192BB8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80195BBC 00192BBC  38 83 00 01 */	addi r4, r3, 1
/* 80195BC0 00192BC0  7C C0 03 78 */	or r0, r6, r0
/* 80195BC4 00192BC4  7C 80 03 79 */	or. r0, r4, r0
/* 80195BC8 00192BC8  40 82 00 14 */	bne lbl_80195BDC
/* 80195BCC 00192BCC  FC 20 0A 10 */	fabs f1, f1
/* 80195BD0 00192BD0  C8 02 C0 20 */	lfd f0, lbl_8027BCC0-_SDA2_BASE_(r2)
/* 80195BD4 00192BD4  FC 20 08 24 */	fdiv f1, f0, f1
/* 80195BD8 00192BD8  48 00 01 AC */	b lbl_80195D84
lbl_80195BDC:
/* 80195BDC 00192BDC  2C 03 00 01 */	cmpwi r3, 1
/* 80195BE0 00192BE0  40 82 00 08 */	bne lbl_80195BE8
/* 80195BE4 00192BE4  48 00 01 A0 */	b lbl_80195D84
lbl_80195BE8:
/* 80195BE8 00192BE8  C8 02 C0 28 */	lfd f0, lbl_8027BCC8-_SDA2_BASE_(r2)
/* 80195BEC 00192BEC  FC 20 08 24 */	fdiv f1, f0, f1
/* 80195BF0 00192BF0  48 00 01 94 */	b lbl_80195D84
lbl_80195BF4:
/* 80195BF4 00192BF4  3C 80 3F E6 */	lis r4, 0x3FE59428@ha
/* 80195BF8 00192BF8  38 04 94 28 */	addi r0, r4, 0x3FE59428@l
/* 80195BFC 00192BFC  7C 06 00 00 */	cmpw r6, r0
/* 80195C00 00192C00  41 80 00 40 */	blt lbl_80195C40
/* 80195C04 00192C04  2C 07 00 00 */	cmpwi r7, 0
/* 80195C08 00192C08  40 80 00 14 */	bge lbl_80195C1C
/* 80195C0C 00192C0C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80195C10 00192C10  FC 40 10 50 */	fneg f2, f2
/* 80195C14 00192C14  FC 00 00 50 */	fneg f0, f0
/* 80195C18 00192C18  D8 01 00 08 */	stfd f0, 8(r1)
lbl_80195C1C:
/* 80195C1C 00192C1C  C8 02 C0 38 */	lfd f0, lbl_8027BCD8-_SDA2_BASE_(r2)
/* 80195C20 00192C20  C8 62 C0 30 */	lfd f3, lbl_8027BCD0-_SDA2_BASE_(r2)
/* 80195C24 00192C24  C8 21 00 08 */	lfd f1, 8(r1)
/* 80195C28 00192C28  FC 00 10 28 */	fsub f0, f0, f2
/* 80195C2C 00192C2C  C8 42 C0 40 */	lfd f2, lbl_8027BCE0-_SDA2_BASE_(r2)
/* 80195C30 00192C30  FC 23 08 28 */	fsub f1, f3, f1
/* 80195C34 00192C34  FC 01 00 2A */	fadd f0, f1, f0
/* 80195C38 00192C38  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 80195C3C 00192C3C  D8 01 00 08 */	stfd f0, 8(r1)
lbl_80195C40:
/* 80195C40 00192C40  C8 01 00 08 */	lfd f0, 8(r1)
/* 80195C44 00192C44  3C 80 80 20 */	lis r4, lbl_80205780@ha
/* 80195C48 00192C48  38 A4 57 80 */	addi r5, r4, lbl_80205780@l
/* 80195C4C 00192C4C  3C 80 3F E6 */	lis r4, 0x3FE59428@ha
/* 80195C50 00192C50  FD A0 00 32 */	fmul f13, f0, f0
/* 80195C54 00192C54  38 04 94 28 */	addi r0, r4, 0x3FE59428@l
/* 80195C58 00192C58  C8 A5 00 60 */	lfd f5, 0x60(r5)
/* 80195C5C 00192C5C  7C 06 00 00 */	cmpw r6, r0
/* 80195C60 00192C60  C8 85 00 50 */	lfd f4, 0x50(r5)
/* 80195C64 00192C64  C9 25 00 58 */	lfd f9, 0x58(r5)
/* 80195C68 00192C68  FF ED 03 72 */	fmul f31, f13, f13
/* 80195C6C 00192C6C  C9 05 00 48 */	lfd f8, 0x48(r5)
/* 80195C70 00192C70  C8 65 00 40 */	lfd f3, 0x40(r5)
/* 80195C74 00192C74  C9 65 00 38 */	lfd f11, 0x38(r5)
/* 80195C78 00192C78  FC 2D 00 32 */	fmul f1, f13, f0
/* 80195C7C 00192C7C  C8 C5 00 30 */	lfd f6, 0x30(r5)
/* 80195C80 00192C80  FC FF 21 7A */	fmadd f7, f31, f5, f4
/* 80195C84 00192C84  C9 45 00 28 */	lfd f10, 0x28(r5)
/* 80195C88 00192C88  C8 A5 00 20 */	lfd f5, 0x20(r5)
/* 80195C8C 00192C8C  FD 9F 42 7A */	fmadd f12, f31, f9, f8
/* 80195C90 00192C90  C9 25 00 18 */	lfd f9, 0x18(r5)
/* 80195C94 00192C94  C8 85 00 10 */	lfd f4, 0x10(r5)
/* 80195C98 00192C98  FC FF 19 FA */	fmadd f7, f31, f7, f3
/* 80195C9C 00192C9C  C9 05 00 08 */	lfd f8, 8(r5)
/* 80195CA0 00192CA0  C8 65 00 00 */	lfd f3, 0(r5)
/* 80195CA4 00192CA4  FD 7F 5B 3A */	fmadd f11, f31, f12, f11
/* 80195CA8 00192CA8  D9 A1 00 18 */	stfd f13, 0x18(r1)
/* 80195CAC 00192CAC  FC DF 31 FA */	fmadd f6, f31, f7, f6
/* 80195CB0 00192CB0  FC FF 52 FA */	fmadd f7, f31, f11, f10
/* 80195CB4 00192CB4  FC BF 29 BA */	fmadd f5, f31, f6, f5
/* 80195CB8 00192CB8  FC DF 49 FA */	fmadd f6, f31, f7, f9
/* 80195CBC 00192CBC  FC 9F 21 7A */	fmadd f4, f31, f5, f4
/* 80195CC0 00192CC0  FC BF 41 BA */	fmadd f5, f31, f6, f8
/* 80195CC4 00192CC4  FC 8D 01 32 */	fmul f4, f13, f4
/* 80195CC8 00192CC8  FC 85 20 2A */	fadd f4, f5, f4
/* 80195CCC 00192CCC  FC 81 11 3A */	fmadd f4, f1, f4, f2
/* 80195CD0 00192CD0  FC CD 11 3A */	fmadd f6, f13, f4, f2
/* 80195CD4 00192CD4  FC C3 30 7A */	fmadd f6, f3, f1, f6
/* 80195CD8 00192CD8  FC 20 30 2A */	fadd f1, f0, f6
/* 80195CDC 00192CDC  41 80 00 60 */	blt lbl_80195D3C
/* 80195CE0 00192CE0  3C 80 43 30 */	lis r4, 0x4330
/* 80195CE4 00192CE4  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80195CE8 00192CE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80195CEC 00192CEC  54 E0 17 BC */	rlwinm r0, r7, 2, 0x1e, 0x1e
/* 80195CF0 00192CF0  20 00 00 01 */	subfic r0, r0, 1
/* 80195CF4 00192CF4  C8 A2 C0 50 */	lfd f5, lbl_8027BCF0-_SDA2_BASE_(r2)
/* 80195CF8 00192CF8  90 81 00 20 */	stw r4, 0x20(r1)
/* 80195CFC 00192CFC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80195D00 00192D00  FC 41 00 72 */	fmul f2, f1, f1
/* 80195D04 00192D04  C8 62 C0 48 */	lfd f3, lbl_8027BCE8-_SDA2_BASE_(r2)
/* 80195D08 00192D08  C8 81 00 20 */	lfd f4, 0x20(r1)
/* 80195D0C 00192D0C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80195D10 00192D10  FC E4 28 28 */	fsub f7, f4, f5
/* 80195D14 00192D14  90 81 00 28 */	stw r4, 0x28(r1)
/* 80195D18 00192D18  FC 21 38 2A */	fadd f1, f1, f7
/* 80195D1C 00192D1C  C8 81 00 28 */	lfd f4, 0x28(r1)
/* 80195D20 00192D20  FC 84 28 28 */	fsub f4, f4, f5
/* 80195D24 00192D24  FC 22 08 24 */	fdiv f1, f2, f1
/* 80195D28 00192D28  FC 21 30 28 */	fsub f1, f1, f6
/* 80195D2C 00192D2C  FC 00 08 28 */	fsub f0, f0, f1
/* 80195D30 00192D30  FC 03 38 3C */	fnmsub f0, f3, f0, f7
/* 80195D34 00192D34  FC 24 00 32 */	fmul f1, f4, f0
/* 80195D38 00192D38  48 00 00 4C */	b lbl_80195D84
lbl_80195D3C:
/* 80195D3C 00192D3C  2C 03 00 01 */	cmpwi r3, 1
/* 80195D40 00192D40  40 82 00 08 */	bne lbl_80195D48
/* 80195D44 00192D44  48 00 00 40 */	b lbl_80195D84
lbl_80195D48:
/* 80195D48 00192D48  C8 42 C0 28 */	lfd f2, lbl_8027BCC8-_SDA2_BASE_(r2)
/* 80195D4C 00192D4C  38 00 00 00 */	li r0, 0
/* 80195D50 00192D50  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 80195D54 00192D54  FC 82 08 24 */	fdiv f4, f2, f1
/* 80195D58 00192D58  C8 22 C0 20 */	lfd f1, lbl_8027BCC0-_SDA2_BASE_(r2)
/* 80195D5C 00192D5C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80195D60 00192D60  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 80195D64 00192D64  D8 81 00 10 */	stfd f4, 0x10(r1)
/* 80195D68 00192D68  FC 02 00 28 */	fsub f0, f2, f0
/* 80195D6C 00192D6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80195D70 00192D70  FC 06 00 28 */	fsub f0, f6, f0
/* 80195D74 00192D74  C8 61 00 10 */	lfd f3, 0x10(r1)
/* 80195D78 00192D78  FC 23 08 BA */	fmadd f1, f3, f2, f1
/* 80195D7C 00192D7C  FC 03 08 3A */	fmadd f0, f3, f0, f1
/* 80195D80 00192D80  FC 24 18 3A */	fmadd f1, f4, f0, f3
lbl_80195D84:
/* 80195D84 00192D84  E3 E1 00 38 */	psq_l p31, 56(r1), 0, qr0
/* 80195D88 00192D88  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80195D8C 00192D8C  38 21 00 40 */	addi r1, r1, 0x40
/* 80195D90 00192D90  4E 80 00 20 */	blr 
