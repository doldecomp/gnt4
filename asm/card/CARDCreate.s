.include "macros.inc"

.section .text  # 0x8017EFC8 - 0x8017F318

.global func_8017EFC8
func_8017EFC8:
/* 8017EFC8 0017BFC8  7C 08 02 A6 */	mflr r0
/* 8017EFCC 0017BFCC  90 01 00 04 */	stw r0, 4(r1)
/* 8017EFD0 0017BFD0  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8017EFD4 0017BFD4  BF 61 00 14 */	stmw r27, 0x14(r1)
/* 8017EFD8 0017BFD8  3B 83 00 00 */	addi r28, r3, 0
/* 8017EFDC 0017BFDC  3C 60 80 24 */	lis r3, lbl_80245540@ha
/* 8017EFE0 0017BFE0  1C BC 01 10 */	mulli r5, r28, 0x110
/* 8017EFE4 0017BFE4  38 03 55 40 */	addi r0, r3, lbl_80245540@l
/* 8017EFE8 0017BFE8  7F E0 2A 14 */	add r31, r0, r5
/* 8017EFEC 0017BFEC  83 BF 00 D0 */	lwz r29, 0xd0(r31)
/* 8017EFF0 0017BFF0  3B 60 00 00 */	li r27, 0
/* 8017EFF4 0017BFF4  7C 9E 23 79 */	or. r30, r4, r4
/* 8017EFF8 0017BFF8  93 7F 00 D0 */	stw r27, 0xd0(r31)
/* 8017EFFC 0017BFFC  41 80 00 C0 */	blt lbl_8017F0BC
/* 8017F000 0017C000  7F E3 FB 78 */	mr r3, r31
/* 8017F004 0017C004  4B FF D6 DD */	bl func_8017C6E0
/* 8017F008 0017C008  A0 1F 00 BC */	lhz r0, 0xbc(r31)
/* 8017F00C 0017C00C  38 A0 00 04 */	li r5, 4
/* 8017F010 0017C010  80 9F 01 0C */	lwz r4, 0x10c(r31)
/* 8017F014 0017C014  54 00 30 32 */	slwi r0, r0, 6
/* 8017F018 0017C018  7F C3 02 14 */	add r30, r3, r0
/* 8017F01C 0017C01C  38 7E 00 00 */	addi r3, r30, 0
/* 8017F020 0017C020  4B E8 65 AD */	bl memcpy
/* 8017F024 0017C024  80 9F 01 0C */	lwz r4, 0x10c(r31)
/* 8017F028 0017C028  38 7E 00 04 */	addi r3, r30, 4
/* 8017F02C 0017C02C  38 A0 00 02 */	li r5, 2
/* 8017F030 0017C030  38 84 00 04 */	addi r4, r4, 4
/* 8017F034 0017C034  4B E8 65 99 */	bl memcpy
/* 8017F038 0017C038  38 00 00 04 */	li r0, 4
/* 8017F03C 0017C03C  98 1E 00 34 */	stb r0, 0x34(r30)
/* 8017F040 0017C040  38 00 FF FF */	li r0, -1
/* 8017F044 0017C044  3C 60 80 00 */	lis r3, 0x800000F8@ha
/* 8017F048 0017C048  9B 7E 00 35 */	stb r27, 0x35(r30)
/* 8017F04C 0017C04C  A0 9F 00 BE */	lhz r4, 0xbe(r31)
/* 8017F050 0017C050  B0 9E 00 36 */	sth r4, 0x36(r30)
/* 8017F054 0017C054  9B 7E 00 07 */	stb r27, 7(r30)
/* 8017F058 0017C058  90 1E 00 2C */	stw r0, 0x2c(r30)
/* 8017F05C 0017C05C  B3 7E 00 30 */	sth r27, 0x30(r30)
/* 8017F060 0017C060  B3 7E 00 32 */	sth r27, 0x32(r30)
/* 8017F064 0017C064  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 8017F068 0017C068  A0 1E 00 32 */	lhz r0, 0x32(r30)
/* 8017F06C 0017C06C  54 00 00 3A */	rlwinm r0, r0, 0, 0, 0x1d
/* 8017F070 0017C070  60 00 00 01 */	ori r0, r0, 1
/* 8017F074 0017C074  B0 1E 00 32 */	sth r0, 0x32(r30)
/* 8017F078 0017C078  80 9F 00 C0 */	lwz r4, 0xc0(r31)
/* 8017F07C 0017C07C  93 64 00 08 */	stw r27, 8(r4)
/* 8017F080 0017C080  A0 1E 00 36 */	lhz r0, 0x36(r30)
/* 8017F084 0017C084  80 9F 00 C0 */	lwz r4, 0xc0(r31)
/* 8017F088 0017C088  B0 04 00 10 */	sth r0, 0x10(r4)
/* 8017F08C 0017C08C  80 03 00 F8 */	lwz r0, 0x800000F8@l(r3)
/* 8017F090 0017C090  54 1B F0 BE */	srwi r27, r0, 2
/* 8017F094 0017C094  4B FE DF CD */	bl func_8016D060
/* 8017F098 0017C098  38 DB 00 00 */	addi r6, r27, 0
/* 8017F09C 0017C09C  38 A0 00 00 */	li r5, 0
/* 8017F0A0 0017C0A0  48 00 F3 2D */	bl func_8018E3CC
/* 8017F0A4 0017C0A4  90 9E 00 28 */	stw r4, 0x28(r30)
/* 8017F0A8 0017C0A8  38 7C 00 00 */	addi r3, r28, 0
/* 8017F0AC 0017C0AC  38 9D 00 00 */	addi r4, r29, 0
/* 8017F0B0 0017C0B0  4B FF D7 D1 */	bl func_8017C880
/* 8017F0B4 0017C0B4  7C 7E 1B 79 */	or. r30, r3, r3
/* 8017F0B8 0017C0B8  40 80 00 2C */	bge lbl_8017F0E4
lbl_8017F0BC:
/* 8017F0BC 0017C0BC  38 7F 00 00 */	addi r3, r31, 0
/* 8017F0C0 0017C0C0  38 9E 00 00 */	addi r4, r30, 0
/* 8017F0C4 0017C0C4  4B FF B9 31 */	bl func_8017A9F4
/* 8017F0C8 0017C0C8  28 1D 00 00 */	cmplwi r29, 0
/* 8017F0CC 0017C0CC  41 82 00 18 */	beq lbl_8017F0E4
/* 8017F0D0 0017C0D0  39 9D 00 00 */	addi r12, r29, 0
/* 8017F0D4 0017C0D4  7D 88 03 A6 */	mtlr r12
/* 8017F0D8 0017C0D8  38 7C 00 00 */	addi r3, r28, 0
/* 8017F0DC 0017C0DC  38 9E 00 00 */	addi r4, r30, 0
/* 8017F0E0 0017C0E0  4E 80 00 21 */	blrl 
lbl_8017F0E4:
/* 8017F0E4 0017C0E4  BB 61 00 14 */	lmw r27, 0x14(r1)
/* 8017F0E8 0017C0E8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8017F0EC 0017C0EC  38 21 00 28 */	addi r1, r1, 0x28
/* 8017F0F0 0017C0F0  7C 08 03 A6 */	mtlr r0
/* 8017F0F4 0017C0F4  4E 80 00 20 */	blr 

.global func_8017F0F8
func_8017F0F8:
/* 8017F0F8 0017C0F8  7C 08 02 A6 */	mflr r0
/* 8017F0FC 0017C0FC  90 01 00 04 */	stw r0, 4(r1)
/* 8017F100 0017C100  94 21 FF B8 */	stwu r1, -0x48(r1)
/* 8017F104 0017C104  BE E1 00 24 */	stmw r23, 0x24(r1)
/* 8017F108 0017C108  3B 44 00 00 */	addi r26, r4, 0
/* 8017F10C 0017C10C  3B 23 00 00 */	addi r25, r3, 0
/* 8017F110 0017C110  3B 65 00 00 */	addi r27, r5, 0
/* 8017F114 0017C114  3B 86 00 00 */	addi r28, r6, 0
/* 8017F118 0017C118  3B A7 00 00 */	addi r29, r7, 0
/* 8017F11C 0017C11C  38 7A 00 00 */	addi r3, r26, 0
/* 8017F120 0017C120  48 01 3D 0D */	bl func_80192E2C
/* 8017F124 0017C124  28 03 00 20 */	cmplwi r3, 0x20
/* 8017F128 0017C128  40 81 00 0C */	ble lbl_8017F134
/* 8017F12C 0017C12C  38 60 FF F4 */	li r3, -12
/* 8017F130 0017C130  48 00 01 D4 */	b lbl_8017F304
lbl_8017F134:
/* 8017F134 0017C134  38 79 00 00 */	addi r3, r25, 0
/* 8017F138 0017C138  38 81 00 1C */	addi r4, r1, 0x1c
/* 8017F13C 0017C13C  4B FF B8 01 */	bl func_8017A93C
/* 8017F140 0017C140  2C 03 00 00 */	cmpwi r3, 0
/* 8017F144 0017C144  40 80 00 08 */	bge lbl_8017F14C
/* 8017F148 0017C148  48 00 01 BC */	b lbl_8017F304
lbl_8017F14C:
/* 8017F14C 0017C14C  28 1B 00 00 */	cmplwi r27, 0
/* 8017F150 0017C150  41 82 00 1C */	beq lbl_8017F16C
/* 8017F154 0017C154  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8017F158 0017C158  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8017F15C 0017C15C  7C 1B 23 96 */	divwu r0, r27, r4
/* 8017F160 0017C160  7C 00 21 D6 */	mullw r0, r0, r4
/* 8017F164 0017C164  7C 00 D8 51 */	subf. r0, r0, r27
/* 8017F168 0017C168  41 82 00 0C */	beq lbl_8017F174
lbl_8017F16C:
/* 8017F16C 0017C16C  38 60 FF 80 */	li r3, -128
/* 8017F170 0017C170  48 00 01 94 */	b lbl_8017F304
lbl_8017F174:
/* 8017F174 0017C174  3C 80 00 01 */	lis r4, 0x0000FFFF@ha
/* 8017F178 0017C178  3B C4 FF FF */	addi r30, r4, 0x0000FFFF@l
/* 8017F17C 0017C17C  4B FF D5 65 */	bl func_8017C6E0
/* 8017F180 0017C180  3B E3 00 00 */	addi r31, r3, 0
/* 8017F184 0017C184  3B 1F 00 00 */	addi r24, r31, 0
/* 8017F188 0017C188  3A E0 00 00 */	li r23, 0
/* 8017F18C 0017C18C  48 00 00 8C */	b lbl_8017F218
lbl_8017F190:
/* 8017F190 0017C190  88 18 00 00 */	lbz r0, 0(r24)
/* 8017F194 0017C194  28 00 00 FF */	cmplwi r0, 0xff
/* 8017F198 0017C198  40 82 00 18 */	bne lbl_8017F1B0
/* 8017F19C 0017C19C  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 8017F1A0 0017C1A0  28 00 FF FF */	cmplwi r0, 0xffff
/* 8017F1A4 0017C1A4  40 82 00 6C */	bne lbl_8017F210
/* 8017F1A8 0017C1A8  7E FE BB 78 */	mr r30, r23
/* 8017F1AC 0017C1AC  48 00 00 64 */	b lbl_8017F210
lbl_8017F1B0:
/* 8017F1B0 0017C1B0  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 8017F1B4 0017C1B4  38 78 00 00 */	addi r3, r24, 0
/* 8017F1B8 0017C1B8  38 A0 00 04 */	li r5, 4
/* 8017F1BC 0017C1BC  80 84 01 0C */	lwz r4, 0x10c(r4)
/* 8017F1C0 0017C1C0  48 01 15 81 */	bl func_80190740
/* 8017F1C4 0017C1C4  2C 03 00 00 */	cmpwi r3, 0
/* 8017F1C8 0017C1C8  40 82 00 48 */	bne lbl_8017F210
/* 8017F1CC 0017C1CC  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 8017F1D0 0017C1D0  38 78 00 04 */	addi r3, r24, 4
/* 8017F1D4 0017C1D4  38 A0 00 02 */	li r5, 2
/* 8017F1D8 0017C1D8  80 84 01 0C */	lwz r4, 0x10c(r4)
/* 8017F1DC 0017C1DC  38 84 00 04 */	addi r4, r4, 4
/* 8017F1E0 0017C1E0  48 01 15 61 */	bl func_80190740
/* 8017F1E4 0017C1E4  2C 03 00 00 */	cmpwi r3, 0
/* 8017F1E8 0017C1E8  40 82 00 28 */	bne lbl_8017F210
/* 8017F1EC 0017C1EC  38 78 00 00 */	addi r3, r24, 0
/* 8017F1F0 0017C1F0  38 9A 00 00 */	addi r4, r26, 0
/* 8017F1F4 0017C1F4  4B FF F7 E9 */	bl func_8017E9DC
/* 8017F1F8 0017C1F8  2C 03 00 00 */	cmpwi r3, 0
/* 8017F1FC 0017C1FC  41 82 00 14 */	beq lbl_8017F210
/* 8017F200 0017C200  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8017F204 0017C204  38 80 FF F9 */	li r4, -7
/* 8017F208 0017C208  4B FF B7 ED */	bl func_8017A9F4
/* 8017F20C 0017C20C  48 00 00 F8 */	b lbl_8017F304
lbl_8017F210:
/* 8017F210 0017C210  3B 18 00 40 */	addi r24, r24, 0x40
/* 8017F214 0017C214  3A F7 00 01 */	addi r23, r23, 1
lbl_8017F218:
/* 8017F218 0017C218  56 E0 04 3E */	clrlwi r0, r23, 0x10
/* 8017F21C 0017C21C  28 00 00 7F */	cmplwi r0, 0x7f
/* 8017F220 0017C220  41 80 FF 70 */	blt lbl_8017F190
/* 8017F224 0017C224  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 8017F228 0017C228  28 00 FF FF */	cmplwi r0, 0xffff
/* 8017F22C 0017C22C  40 82 00 14 */	bne lbl_8017F240
/* 8017F230 0017C230  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8017F234 0017C234  38 80 FF F8 */	li r4, -8
/* 8017F238 0017C238  4B FF B7 BD */	bl func_8017A9F4
/* 8017F23C 0017C23C  48 00 00 C8 */	b lbl_8017F304
lbl_8017F240:
/* 8017F240 0017C240  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8017F244 0017C244  4B FF D0 99 */	bl func_8017C2DC
/* 8017F248 0017C248  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 8017F24C 0017C24C  A0 03 00 06 */	lhz r0, 6(r3)
/* 8017F250 0017C250  80 64 00 0C */	lwz r3, 0xc(r4)
/* 8017F254 0017C254  7C 03 01 D6 */	mullw r0, r3, r0
/* 8017F258 0017C258  7C 00 D8 40 */	cmplw r0, r27
/* 8017F25C 0017C25C  40 80 00 14 */	bge lbl_8017F270
/* 8017F260 0017C260  38 64 00 00 */	addi r3, r4, 0
/* 8017F264 0017C264  38 80 FF F7 */	li r4, -9
/* 8017F268 0017C268  4B FF B7 8D */	bl func_8017A9F4
/* 8017F26C 0017C26C  48 00 00 98 */	b lbl_8017F304
lbl_8017F270:
/* 8017F270 0017C270  28 1D 00 00 */	cmplwi r29, 0
/* 8017F274 0017C274  41 82 00 0C */	beq lbl_8017F280
/* 8017F278 0017C278  7F A0 EB 78 */	mr r0, r29
/* 8017F27C 0017C27C  48 00 00 0C */	b lbl_8017F288
lbl_8017F280:
/* 8017F280 0017C280  3C 60 80 18 */	lis r3, func_801797EC@ha
/* 8017F284 0017C284  38 03 97 EC */	addi r0, r3, func_801797EC@l
lbl_8017F288:
/* 8017F288 0017C288  90 04 00 D0 */	stw r0, 0xd0(r4)
/* 8017F28C 0017C28C  57 C0 32 B2 */	rlwinm r0, r30, 6, 0xa, 0x19
/* 8017F290 0017C290  7C FF 02 14 */	add r7, r31, r0
/* 8017F294 0017C294  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8017F298 0017C298  57 DD 04 3E */	clrlwi r29, r30, 0x10
/* 8017F29C 0017C29C  38 9A 00 00 */	addi r4, r26, 0
/* 8017F2A0 0017C2A0  B3 C3 00 BC */	sth r30, 0xbc(r3)
/* 8017F2A4 0017C2A4  38 67 00 08 */	addi r3, r7, 8
/* 8017F2A8 0017C2A8  38 A0 00 20 */	li r5, 0x20
/* 8017F2AC 0017C2AC  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 8017F2B0 0017C2B0  80 06 00 0C */	lwz r0, 0xc(r6)
/* 8017F2B4 0017C2B4  7C 1B 03 96 */	divwu r0, r27, r0
/* 8017F2B8 0017C2B8  B0 07 00 38 */	sth r0, 0x38(r7)
/* 8017F2BC 0017C2BC  48 01 3A 75 */	bl func_80192D30
/* 8017F2C0 0017C2C0  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 8017F2C4 0017C2C4  3C 60 80 18 */	lis r3, func_8017EFC8@ha
/* 8017F2C8 0017C2C8  38 A3 EF C8 */	addi r5, r3, func_8017EFC8@l
/* 8017F2CC 0017C2CC  93 84 00 C0 */	stw r28, 0xc0(r4)
/* 8017F2D0 0017C2D0  7F 23 CB 78 */	mr r3, r25
/* 8017F2D4 0017C2D4  93 3C 00 00 */	stw r25, 0(r28)
/* 8017F2D8 0017C2D8  93 BC 00 04 */	stw r29, 4(r28)
/* 8017F2DC 0017C2DC  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 8017F2E0 0017C2E0  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8017F2E4 0017C2E4  7C 9B 03 96 */	divwu r4, r27, r0
/* 8017F2E8 0017C2E8  4B FF D1 99 */	bl func_8017C480
/* 8017F2EC 0017C2EC  7C 64 1B 79 */	or. r4, r3, r3
/* 8017F2F0 0017C2F0  40 80 00 10 */	bge lbl_8017F300
/* 8017F2F4 0017C2F4  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8017F2F8 0017C2F8  4B FF B6 FD */	bl func_8017A9F4
/* 8017F2FC 0017C2FC  48 00 00 08 */	b lbl_8017F304
lbl_8017F300:
/* 8017F300 0017C300  7C 83 23 78 */	mr r3, r4
lbl_8017F304:
/* 8017F304 0017C304  BA E1 00 24 */	lmw r23, 0x24(r1)
/* 8017F308 0017C308  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8017F30C 0017C30C  38 21 00 48 */	addi r1, r1, 0x48
/* 8017F310 0017C310  7C 08 03 A6 */	mtlr r0
/* 8017F314 0017C314  4E 80 00 20 */	blr 
