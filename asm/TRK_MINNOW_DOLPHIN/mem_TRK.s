.include "macros.inc"

.section .text  # 0x8018BAD8 - 0x8018BB94

.global func_8018BAD8
func_8018BAD8:
/* 8018BAD8 00188AD8  28 05 00 20 */	cmplwi r5, 0x20
/* 8018BADC 00188ADC  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 8018BAE0 00188AE0  38 C3 FF FF */	addi r6, r3, -1
/* 8018BAE4 00188AE4  7C 87 23 78 */	mr r7, r4
/* 8018BAE8 00188AE8  41 80 00 94 */	blt lbl_8018BB7C
/* 8018BAEC 00188AEC  7C C0 30 F8 */	nor r0, r6, r6
/* 8018BAF0 00188AF0  54 03 07 BF */	clrlwi. r3, r0, 0x1e
/* 8018BAF4 00188AF4  41 82 00 14 */	beq lbl_8018BB08
/* 8018BAF8 00188AF8  7C A3 28 50 */	subf r5, r3, r5
lbl_8018BAFC:
/* 8018BAFC 00188AFC  34 63 FF FF */	addic. r3, r3, -1
/* 8018BB00 00188B00  9C E6 00 01 */	stbu r7, 1(r6)
/* 8018BB04 00188B04  40 82 FF F8 */	bne lbl_8018BAFC
lbl_8018BB08:
/* 8018BB08 00188B08  28 07 00 00 */	cmplwi r7, 0
/* 8018BB0C 00188B0C  41 82 00 1C */	beq lbl_8018BB28
/* 8018BB10 00188B10  54 E3 C0 0E */	slwi r3, r7, 0x18
/* 8018BB14 00188B14  54 E0 80 1E */	slwi r0, r7, 0x10
/* 8018BB18 00188B18  54 E4 40 2E */	slwi r4, r7, 8
/* 8018BB1C 00188B1C  7C 60 03 78 */	or r0, r3, r0
/* 8018BB20 00188B20  7C 80 03 78 */	or r0, r4, r0
/* 8018BB24 00188B24  7C E7 03 78 */	or r7, r7, r0
lbl_8018BB28:
/* 8018BB28 00188B28  54 A4 D9 7F */	rlwinm. r4, r5, 0x1b, 5, 0x1f
/* 8018BB2C 00188B2C  38 66 FF FD */	addi r3, r6, -3
/* 8018BB30 00188B30  41 82 00 2C */	beq lbl_8018BB5C
lbl_8018BB34:
/* 8018BB34 00188B34  90 E3 00 04 */	stw r7, 4(r3)
/* 8018BB38 00188B38  34 84 FF FF */	addic. r4, r4, -1
/* 8018BB3C 00188B3C  90 E3 00 08 */	stw r7, 8(r3)
/* 8018BB40 00188B40  90 E3 00 0C */	stw r7, 0xc(r3)
/* 8018BB44 00188B44  90 E3 00 10 */	stw r7, 0x10(r3)
/* 8018BB48 00188B48  90 E3 00 14 */	stw r7, 0x14(r3)
/* 8018BB4C 00188B4C  90 E3 00 18 */	stw r7, 0x18(r3)
/* 8018BB50 00188B50  90 E3 00 1C */	stw r7, 0x1c(r3)
/* 8018BB54 00188B54  94 E3 00 20 */	stwu r7, 0x20(r3)
/* 8018BB58 00188B58  40 82 FF DC */	bne lbl_8018BB34
lbl_8018BB5C:
/* 8018BB5C 00188B5C  54 A4 F7 7F */	rlwinm. r4, r5, 0x1e, 0x1d, 0x1f
/* 8018BB60 00188B60  41 82 00 10 */	beq lbl_8018BB70
lbl_8018BB64:
/* 8018BB64 00188B64  34 84 FF FF */	addic. r4, r4, -1
/* 8018BB68 00188B68  94 E3 00 04 */	stwu r7, 4(r3)
/* 8018BB6C 00188B6C  40 82 FF F8 */	bne lbl_8018BB64
lbl_8018BB70:
/* 8018BB70 00188B70  38 00 00 03 */	li r0, 3
/* 8018BB74 00188B74  38 C3 00 03 */	addi r6, r3, 3
/* 8018BB78 00188B78  7C A5 00 38 */	and r5, r5, r0
lbl_8018BB7C:
/* 8018BB7C 00188B7C  28 05 00 00 */	cmplwi r5, 0
/* 8018BB80 00188B80  4D 82 00 20 */	beqlr 
lbl_8018BB84:
/* 8018BB84 00188B84  34 A5 FF FF */	addic. r5, r5, -1
/* 8018BB88 00188B88  9C E6 00 01 */	stbu r7, 1(r6)
/* 8018BB8C 00188B8C  40 82 FF F8 */	bne lbl_8018BB84
/* 8018BB90 00188B90  4E 80 00 20 */	blr 