.include "macros.inc"

.section .text  # 0x8016AC38 - 0x8016AFE4

.global func_8016AC38
func_8016AC38:
/* 8016AC38 00167C38  7C 08 02 A6 */	mflr r0
/* 8016AC3C 00167C3C  90 01 00 04 */	stw r0, 4(r1)
/* 8016AC40 00167C40  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8016AC44 00167C44  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8016AC48 00167C48  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8016AC4C 00167C4C  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 8016AC50 00167C50  48 00 24 31 */	bl func_8016D080
/* 8016AC54 00167C54  3C A0 80 00 */	lis r5, 0x800000F8@ha
/* 8016AC58 00167C58  90 8D 8B D4 */	stw r4, lbl_802774F4-_SDA_BASE_(r13)
/* 8016AC5C 00167C5C  80 05 00 F8 */	lwz r0, 0x800000F8@l(r5)
/* 8016AC60 00167C60  3C 80 43 1C */	lis r4, 0x431BDE83@ha
/* 8016AC64 00167C64  38 84 DE 83 */	addi r4, r4, 0x431BDE83@l
/* 8016AC68 00167C68  90 6D 8B D0 */	stw r3, lbl_802774F0-_SDA_BASE_(r13)
/* 8016AC6C 00167C6C  54 00 F0 BE */	srwi r0, r0, 2
/* 8016AC70 00167C70  7C 04 00 16 */	mulhwu r0, r4, r0
/* 8016AC74 00167C74  54 00 8B FE */	srwi r0, r0, 0xf
/* 8016AC78 00167C78  1C 00 00 64 */	mulli r0, r0, 0x64
/* 8016AC7C 00167C7C  54 1D E8 FE */	srwi r29, r0, 3
/* 8016AC80 00167C80  3B C0 00 00 */	li r30, 0
/* 8016AC84 00167C84  3F E0 CC 00 */	lis r31, 0xcc00
lbl_8016AC88:
/* 8016AC88 00167C88  48 00 23 F9 */	bl func_8016D080
/* 8016AC8C 00167C8C  80 CD 8B D4 */	lwz r6, lbl_802774F4-_SDA_BASE_(r13)
/* 8016AC90 00167C90  6F C5 80 00 */	xoris r5, r30, 0x8000
/* 8016AC94 00167C94  80 0D 8B D0 */	lwz r0, lbl_802774F0-_SDA_BASE_(r13)
/* 8016AC98 00167C98  7C 86 20 10 */	subfc r4, r6, r4
/* 8016AC9C 00167C9C  7C 00 19 10 */	subfe r0, r0, r3
/* 8016ACA0 00167CA0  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 8016ACA4 00167CA4  7C 1D 20 10 */	subfc r0, r29, r4
/* 8016ACA8 00167CA8  7C A5 19 10 */	subfe r5, r5, r3
/* 8016ACAC 00167CAC  7C A3 19 10 */	subfe r5, r3, r3
/* 8016ACB0 00167CB0  7C A5 00 D1 */	neg. r5, r5
/* 8016ACB4 00167CB4  41 82 00 10 */	beq lbl_8016ACC4
/* 8016ACB8 00167CB8  80 1F 30 00 */	lwz r0, 0x3000(r31)
/* 8016ACBC 00167CBC  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 8016ACC0 00167CC0  41 82 FF C8 */	beq lbl_8016AC88
lbl_8016ACC4:
/* 8016ACC4 00167CC4  3C 60 CC 00 */	lis r3, 0xCC003000@ha
/* 8016ACC8 00167CC8  80 03 30 00 */	lwz r0, 0xCC003000@l(r3)
/* 8016ACCC 00167CCC  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 8016ACD0 00167CD0  40 82 00 34 */	bne lbl_8016AD04
/* 8016ACD4 00167CD4  38 00 00 01 */	li r0, 1
/* 8016ACD8 00167CD8  90 0D 8B BC */	stw r0, lbl_802774DC-_SDA_BASE_(r13)
/* 8016ACDC 00167CDC  38 60 02 00 */	li r3, 0x200
/* 8016ACE0 00167CE0  90 0D 8B C0 */	stw r0, lbl_802774E0-_SDA_BASE_(r13)
/* 8016ACE4 00167CE4  4B FF F2 3D */	bl func_80169F20
/* 8016ACE8 00167CE8  81 8D 8B B8 */	lwz r12, lbl_802774D8-_SDA_BASE_(r13)
/* 8016ACEC 00167CEC  28 0C 00 00 */	cmplwi r12, 0
/* 8016ACF0 00167CF0  41 82 00 14 */	beq lbl_8016AD04
/* 8016ACF4 00167CF4  38 00 00 00 */	li r0, 0
/* 8016ACF8 00167CF8  7D 88 03 A6 */	mtlr r12
/* 8016ACFC 00167CFC  90 0D 8B B8 */	stw r0, lbl_802774D8-_SDA_BASE_(r13)
/* 8016AD00 00167D00  4E 80 00 21 */	blrl 
lbl_8016AD04:
/* 8016AD04 00167D04  38 00 00 02 */	li r0, 2
/* 8016AD08 00167D08  3C 60 CC 00 */	lis r3, 0xCC003000@ha
/* 8016AD0C 00167D0C  90 03 30 00 */	stw r0, 0xCC003000@l(r3)
/* 8016AD10 00167D10  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8016AD14 00167D14  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8016AD18 00167D18  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8016AD1C 00167D1C  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 8016AD20 00167D20  38 21 00 28 */	addi r1, r1, 0x28
/* 8016AD24 00167D24  7C 08 03 A6 */	mtlr r0
/* 8016AD28 00167D28  4E 80 00 20 */	blr 

.global func_8016AD2C
func_8016AD2C:
/* 8016AD2C 00167D2C  7C 08 02 A6 */	mflr r0
/* 8016AD30 00167D30  90 01 00 04 */	stw r0, 4(r1)
/* 8016AD34 00167D34  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8016AD38 00167D38  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8016AD3C 00167D3C  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8016AD40 00167D40  93 A1 00 0C */	stw r29, 0xc(r1)
/* 8016AD44 00167D44  4B FF EE 15 */	bl func_80169B58
/* 8016AD48 00167D48  7C 7E 1B 78 */	mr r30, r3
/* 8016AD4C 00167D4C  48 00 23 35 */	bl func_8016D080
/* 8016AD50 00167D50  3C A0 CC 00 */	lis r5, 0xCC003000@ha
/* 8016AD54 00167D54  80 05 30 00 */	lwz r0, 0xCC003000@l(r5)
/* 8016AD58 00167D58  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 8016AD5C 00167D5C  40 82 00 DC */	bne lbl_8016AE38
/* 8016AD60 00167D60  80 0D 8B BC */	lwz r0, lbl_802774DC-_SDA_BASE_(r13)
/* 8016AD64 00167D64  2C 00 00 00 */	cmpwi r0, 0
/* 8016AD68 00167D68  40 82 00 40 */	bne lbl_8016ADA8
/* 8016AD6C 00167D6C  80 0D 8B C8 */	lwz r0, lbl_802774E8-_SDA_BASE_(r13)
/* 8016AD70 00167D70  38 C0 00 00 */	li r6, 0
/* 8016AD74 00167D74  80 AD 8B CC */	lwz r5, lbl_802774EC-_SDA_BASE_(r13)
/* 8016AD78 00167D78  38 E0 00 01 */	li r7, 1
/* 8016AD7C 00167D7C  7C 00 32 78 */	xor r0, r0, r6
/* 8016AD80 00167D80  7C A5 32 78 */	xor r5, r5, r6
/* 8016AD84 00167D84  90 ED 8B BC */	stw r7, lbl_802774DC-_SDA_BASE_(r13)
/* 8016AD88 00167D88  7C A0 03 79 */	or. r0, r5, r0
/* 8016AD8C 00167D8C  41 82 00 08 */	beq lbl_8016AD94
/* 8016AD90 00167D90  48 00 00 08 */	b lbl_8016AD98
lbl_8016AD94:
/* 8016AD94 00167D94  7C C7 33 78 */	mr r7, r6
lbl_8016AD98:
/* 8016AD98 00167D98  90 8D 8B D4 */	stw r4, lbl_802774F4-_SDA_BASE_(r13)
/* 8016AD9C 00167D9C  7C FD 3B 78 */	mr r29, r7
/* 8016ADA0 00167DA0  90 6D 8B D0 */	stw r3, lbl_802774F0-_SDA_BASE_(r13)
/* 8016ADA4 00167DA4  48 00 01 48 */	b lbl_8016AEEC
lbl_8016ADA8:
/* 8016ADA8 00167DA8  80 0D 8B C8 */	lwz r0, lbl_802774E8-_SDA_BASE_(r13)
/* 8016ADAC 00167DAC  39 20 00 00 */	li r9, 0
/* 8016ADB0 00167DB0  80 AD 8B CC */	lwz r5, lbl_802774EC-_SDA_BASE_(r13)
/* 8016ADB4 00167DB4  39 40 00 01 */	li r10, 1
/* 8016ADB8 00167DB8  7C 00 4A 78 */	xor r0, r0, r9
/* 8016ADBC 00167DBC  7C A5 4A 78 */	xor r5, r5, r9
/* 8016ADC0 00167DC0  7C A0 03 79 */	or. r0, r5, r0
/* 8016ADC4 00167DC4  40 82 00 58 */	bne lbl_8016AE1C
/* 8016ADC8 00167DC8  3C C0 80 00 */	lis r6, 0x800000F8@ha
/* 8016ADCC 00167DCC  80 AD 8B D4 */	lwz r5, lbl_802774F4-_SDA_BASE_(r13)
/* 8016ADD0 00167DD0  80 E6 00 F8 */	lwz r7, 0x800000F8@l(r6)
/* 8016ADD4 00167DD4  3C C0 43 1C */	lis r6, 0x431BDE83@ha
/* 8016ADD8 00167DD8  39 06 DE 83 */	addi r8, r6, 0x431BDE83@l
/* 8016ADDC 00167DDC  80 0D 8B D0 */	lwz r0, lbl_802774F0-_SDA_BASE_(r13)
/* 8016ADE0 00167DE0  54 E6 F0 BE */	srwi r6, r7, 2
/* 8016ADE4 00167DE4  7C C8 30 16 */	mulhwu r6, r8, r6
/* 8016ADE8 00167DE8  54 C6 8B FE */	srwi r6, r6, 0xf
/* 8016ADEC 00167DEC  1C C6 00 64 */	mulli r6, r6, 0x64
/* 8016ADF0 00167DF0  7C E5 20 10 */	subfc r7, r5, r4
/* 8016ADF4 00167DF4  7C 00 19 10 */	subfe r0, r0, r3
/* 8016ADF8 00167DF8  54 C8 E8 FE */	srwi r8, r6, 3
/* 8016ADFC 00167DFC  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 8016AE00 00167E00  6D 26 80 00 */	xoris r6, r9, 0x8000
/* 8016AE04 00167E04  7C 07 40 10 */	subfc r0, r7, r8
/* 8016AE08 00167E08  7C A5 31 10 */	subfe r5, r5, r6
/* 8016AE0C 00167E0C  7C A6 31 10 */	subfe r5, r6, r6
/* 8016AE10 00167E10  7C A5 00 D1 */	neg. r5, r5
/* 8016AE14 00167E14  40 82 00 08 */	bne lbl_8016AE1C
/* 8016AE18 00167E18  7D 2A 4B 78 */	mr r10, r9
lbl_8016AE1C:
/* 8016AE1C 00167E1C  2C 0A 00 00 */	cmpwi r10, 0
/* 8016AE20 00167E20  41 82 00 0C */	beq lbl_8016AE2C
/* 8016AE24 00167E24  38 00 00 01 */	li r0, 1
/* 8016AE28 00167E28  48 00 00 08 */	b lbl_8016AE30
lbl_8016AE2C:
/* 8016AE2C 00167E2C  38 00 00 00 */	li r0, 0
lbl_8016AE30:
/* 8016AE30 00167E30  7C 1D 03 78 */	mr r29, r0
/* 8016AE34 00167E34  48 00 00 B8 */	b lbl_8016AEEC
lbl_8016AE38:
/* 8016AE38 00167E38  80 0D 8B BC */	lwz r0, lbl_802774DC-_SDA_BASE_(r13)
/* 8016AE3C 00167E3C  2C 00 00 00 */	cmpwi r0, 0
/* 8016AE40 00167E40  41 82 00 34 */	beq lbl_8016AE74
/* 8016AE44 00167E44  80 AD 8B C0 */	lwz r5, lbl_802774E0-_SDA_BASE_(r13)
/* 8016AE48 00167E48  38 00 00 00 */	li r0, 0
/* 8016AE4C 00167E4C  90 0D 8B BC */	stw r0, lbl_802774DC-_SDA_BASE_(r13)
/* 8016AE50 00167E50  2C 05 00 00 */	cmpwi r5, 0
/* 8016AE54 00167E54  3B A5 00 00 */	addi r29, r5, 0
/* 8016AE58 00167E58  41 82 00 10 */	beq lbl_8016AE68
/* 8016AE5C 00167E5C  90 8D 8B CC */	stw r4, lbl_802774EC-_SDA_BASE_(r13)
/* 8016AE60 00167E60  90 6D 8B C8 */	stw r3, lbl_802774E8-_SDA_BASE_(r13)
/* 8016AE64 00167E64  48 00 00 88 */	b lbl_8016AEEC
lbl_8016AE68:
/* 8016AE68 00167E68  90 0D 8B CC */	stw r0, lbl_802774EC-_SDA_BASE_(r13)
/* 8016AE6C 00167E6C  90 0D 8B C8 */	stw r0, lbl_802774E8-_SDA_BASE_(r13)
/* 8016AE70 00167E70  48 00 00 7C */	b lbl_8016AEEC
lbl_8016AE74:
/* 8016AE74 00167E74  80 CD 8B C8 */	lwz r6, lbl_802774E8-_SDA_BASE_(r13)
/* 8016AE78 00167E78  39 00 00 00 */	li r8, 0
/* 8016AE7C 00167E7C  80 ED 8B CC */	lwz r7, lbl_802774EC-_SDA_BASE_(r13)
/* 8016AE80 00167E80  7C C0 42 78 */	xor r0, r6, r8
/* 8016AE84 00167E84  7C E5 42 78 */	xor r5, r7, r8
/* 8016AE88 00167E88  7C A0 03 79 */	or. r0, r5, r0
/* 8016AE8C 00167E8C  41 82 00 50 */	beq lbl_8016AEDC
/* 8016AE90 00167E90  3C A0 80 00 */	lis r5, 0x800000F8@ha
/* 8016AE94 00167E94  80 05 00 F8 */	lwz r0, 0x800000F8@l(r5)
/* 8016AE98 00167E98  3C A0 10 62 */	lis r5, 0x10624DD3@ha
/* 8016AE9C 00167E9C  38 A5 4D D3 */	addi r5, r5, 0x10624DD3@l
/* 8016AEA0 00167EA0  54 00 F0 BE */	srwi r0, r0, 2
/* 8016AEA4 00167EA4  7C 05 00 16 */	mulhwu r0, r5, r0
/* 8016AEA8 00167EA8  54 00 D1 BE */	srwi r0, r0, 6
/* 8016AEAC 00167EAC  1C 00 00 28 */	mulli r0, r0, 0x28
/* 8016AEB0 00167EB0  7C E7 20 10 */	subfc r7, r7, r4
/* 8016AEB4 00167EB4  7C A6 19 10 */	subfe r5, r6, r3
/* 8016AEB8 00167EB8  6C A6 80 00 */	xoris r6, r5, 0x8000
/* 8016AEBC 00167EBC  6D 05 80 00 */	xoris r5, r8, 0x8000
/* 8016AEC0 00167EC0  7C 00 38 10 */	subfc r0, r0, r7
/* 8016AEC4 00167EC4  7C A5 31 10 */	subfe r5, r5, r6
/* 8016AEC8 00167EC8  7C A6 31 10 */	subfe r5, r6, r6
/* 8016AECC 00167ECC  7C A5 00 D1 */	neg. r5, r5
/* 8016AED0 00167ED0  41 82 00 0C */	beq lbl_8016AEDC
/* 8016AED4 00167ED4  3B A0 00 01 */	li r29, 1
/* 8016AED8 00167ED8  48 00 00 14 */	b lbl_8016AEEC
lbl_8016AEDC:
/* 8016AEDC 00167EDC  38 00 00 00 */	li r0, 0
/* 8016AEE0 00167EE0  90 0D 8B CC */	stw r0, lbl_802774EC-_SDA_BASE_(r13)
/* 8016AEE4 00167EE4  3B A0 00 00 */	li r29, 0
/* 8016AEE8 00167EE8  90 0D 8B C8 */	stw r0, lbl_802774E8-_SDA_BASE_(r13)
lbl_8016AEEC:
/* 8016AEEC 00167EEC  3C A0 80 00 */	lis r5, 0x800030E3@ha
/* 8016AEF0 00167EF0  93 AD 8B C0 */	stw r29, lbl_802774E0-_SDA_BASE_(r13)
/* 8016AEF4 00167EF4  88 05 30 E3 */	lbz r0, 0x800030E3@l(r5)
/* 8016AEF8 00167EF8  54 00 06 FF */	clrlwi. r0, r0, 0x1b
/* 8016AEFC 00167EFC  41 82 00 A0 */	beq lbl_8016AF9C
/* 8016AF00 00167F00  1D 40 00 3C */	mulli r10, r0, 0x3c
/* 8016AF04 00167F04  80 05 00 F8 */	lwz r0, 0xf8(r5)
/* 8016AF08 00167F08  81 2D 8B 4C */	lwz r9, lbl_8027746C-_SDA_BASE_(r13)
/* 8016AF0C 00167F0C  81 0D 8B 48 */	lwz r8, lbl_80277468-_SDA_BASE_(r13)
/* 8016AF10 00167F10  54 06 F0 BE */	srwi r6, r0, 2
/* 8016AF14 00167F14  7D 40 FE 70 */	srawi r0, r10, 0x1f
/* 8016AF18 00167F18  7C E0 31 D6 */	mullw r7, r0, r6
/* 8016AF1C 00167F1C  7C 0A 30 16 */	mulhwu r0, r10, r6
/* 8016AF20 00167F20  7C AA 31 D6 */	mullw r5, r10, r6
/* 8016AF24 00167F24  7D 29 28 14 */	addc r9, r9, r5
/* 8016AF28 00167F28  3B E0 00 00 */	li r31, 0
/* 8016AF2C 00167F2C  7C E7 02 14 */	add r7, r7, r0
/* 8016AF30 00167F30  7C 0A F9 D6 */	mullw r0, r10, r31
/* 8016AF34 00167F34  7C 07 02 14 */	add r0, r7, r0
/* 8016AF38 00167F38  7D 08 01 14 */	adde r8, r8, r0
/* 8016AF3C 00167F3C  6D 07 80 00 */	xoris r7, r8, 0x8000
/* 8016AF40 00167F40  6C 65 80 00 */	xoris r5, r3, 0x8000
/* 8016AF44 00167F44  7C 04 48 10 */	subfc r0, r4, r9
/* 8016AF48 00167F48  7C A5 39 10 */	subfe r5, r5, r7
/* 8016AF4C 00167F4C  7C A7 39 10 */	subfe r5, r7, r7
/* 8016AF50 00167F50  7C A5 00 D1 */	neg. r5, r5
/* 8016AF54 00167F54  41 82 00 48 */	beq lbl_8016AF9C
/* 8016AF58 00167F58  7C 89 20 10 */	subfc r4, r9, r4
/* 8016AF5C 00167F5C  7C 68 19 10 */	subfe r3, r8, r3
/* 8016AF60 00167F60  38 A0 00 00 */	li r5, 0
/* 8016AF64 00167F64  48 02 34 69 */	bl __div2i
/* 8016AF68 00167F68  38 A0 00 00 */	li r5, 0
/* 8016AF6C 00167F6C  38 C0 00 02 */	li r6, 2
/* 8016AF70 00167F70  48 02 34 5D */	bl __div2i
/* 8016AF74 00167F74  38 00 00 01 */	li r0, 1
/* 8016AF78 00167F78  7C 84 00 38 */	and r4, r4, r0
/* 8016AF7C 00167F7C  7C 60 F8 38 */	and r0, r3, r31
/* 8016AF80 00167F80  7C 83 FA 78 */	xor r3, r4, r31
/* 8016AF84 00167F84  7C 00 FA 78 */	xor r0, r0, r31
/* 8016AF88 00167F88  7C 60 03 79 */	or. r0, r3, r0
/* 8016AF8C 00167F8C  40 82 00 0C */	bne lbl_8016AF98
/* 8016AF90 00167F90  3B A0 00 01 */	li r29, 1
/* 8016AF94 00167F94  48 00 00 08 */	b lbl_8016AF9C
lbl_8016AF98:
/* 8016AF98 00167F98  3B A0 00 00 */	li r29, 0
lbl_8016AF9C:
/* 8016AF9C 00167F9C  7F C3 F3 78 */	mr r3, r30
/* 8016AFA0 00167FA0  4B FF EB E1 */	bl func_80169B80
/* 8016AFA4 00167FA4  7F A3 EB 78 */	mr r3, r29
/* 8016AFA8 00167FA8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8016AFAC 00167FAC  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8016AFB0 00167FB0  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8016AFB4 00167FB4  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 8016AFB8 00167FB8  38 21 00 18 */	addi r1, r1, 0x18
/* 8016AFBC 00167FBC  7C 08 03 A6 */	mtlr r0
/* 8016AFC0 00167FC0  4E 80 00 20 */	blr 

.global func_8016AFC4
func_8016AFC4:
/* 8016AFC4 00167FC4  7C 08 02 A6 */	mflr r0
/* 8016AFC8 00167FC8  90 01 00 04 */	stw r0, 4(r1)
/* 8016AFCC 00167FCC  94 21 FF F8 */	stwu r1, -8(r1)
/* 8016AFD0 00167FD0  4B FF FD 5D */	bl func_8016AD2C
/* 8016AFD4 00167FD4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8016AFD8 00167FD8  38 21 00 08 */	addi r1, r1, 8
/* 8016AFDC 00167FDC  7C 08 03 A6 */	mtlr r0
/* 8016AFE0 00167FE0  4E 80 00 20 */	blr 