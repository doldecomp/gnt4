.include "macros.inc"

.section .text  # 0x80195FBC - 0x80196090

.global cos
cos:
/* 80195FBC 00192FBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80195FC0 00192FC0  7C 08 02 A6 */	mflr r0
/* 80195FC4 00192FC4  3C 60 3F E9 */	lis r3, 0x3FE921FB@ha
/* 80195FC8 00192FC8  D8 21 00 08 */	stfd f1, 8(r1)
/* 80195FCC 00192FCC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80195FD0 00192FD0  38 03 21 FB */	addi r0, r3, 0x3FE921FB@l
/* 80195FD4 00192FD4  80 61 00 08 */	lwz r3, 8(r1)
/* 80195FD8 00192FD8  54 63 00 7E */	clrlwi r3, r3, 1
/* 80195FDC 00192FDC  7C 03 00 00 */	cmpw r3, r0
/* 80195FE0 00192FE0  41 81 00 10 */	bgt lbl_80195FF0
/* 80195FE4 00192FE4  C8 42 C0 80 */	lfd f2, lbl_8027BD20@sda21(r2)
/* 80195FE8 00192FE8  4B FF EB B1 */	bl __kernel_cos
/* 80195FEC 00192FEC  48 00 00 94 */	b lbl_80196080
lbl_80195FF0:
/* 80195FF0 00192FF0  3C 00 7F F0 */	lis r0, 0x7ff0
/* 80195FF4 00192FF4  7C 03 00 00 */	cmpw r3, r0
/* 80195FF8 00192FF8  41 80 00 0C */	blt lbl_80196004
/* 80195FFC 00192FFC  FC 21 08 28 */	fsub f1, f1, f1
/* 80196000 00193000  48 00 00 80 */	b lbl_80196080
lbl_80196004:
/* 80196004 00193004  38 61 00 10 */	addi r3, r1, 0x10
/* 80196008 00193008  4B FF E7 F1 */	bl __ieee754_rem_pio2
/* 8019600C 0019300C  54 60 07 BE */	clrlwi r0, r3, 0x1e
/* 80196010 00193010  2C 00 00 01 */	cmpwi r0, 1
/* 80196014 00193014  41 82 00 30 */	beq lbl_80196044
/* 80196018 00193018  40 80 00 10 */	bge lbl_80196028
/* 8019601C 0019301C  2C 00 00 00 */	cmpwi r0, 0
/* 80196020 00193020  40 80 00 14 */	bge lbl_80196034
/* 80196024 00193024  48 00 00 4C */	b lbl_80196070
lbl_80196028:
/* 80196028 00193028  2C 00 00 03 */	cmpwi r0, 3
/* 8019602C 0019302C  40 80 00 44 */	bge lbl_80196070
/* 80196030 00193030  48 00 00 2C */	b lbl_8019605C
lbl_80196034:
/* 80196034 00193034  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 80196038 00193038  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 8019603C 0019303C  4B FF EB 5D */	bl __kernel_cos
/* 80196040 00193040  48 00 00 40 */	b lbl_80196080
lbl_80196044:
/* 80196044 00193044  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 80196048 00193048  38 60 00 01 */	li r3, 1
/* 8019604C 0019304C  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 80196050 00193050  4B FF FA 91 */	bl __kernel_sin
/* 80196054 00193054  FC 20 08 50 */	fneg f1, f1
/* 80196058 00193058  48 00 00 28 */	b lbl_80196080
lbl_8019605C:
/* 8019605C 0019305C  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 80196060 00193060  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 80196064 00193064  4B FF EB 35 */	bl __kernel_cos
/* 80196068 00193068  FC 20 08 50 */	fneg f1, f1
/* 8019606C 0019306C  48 00 00 14 */	b lbl_80196080
lbl_80196070:
/* 80196070 00193070  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 80196074 00193074  38 60 00 01 */	li r3, 1
/* 80196078 00193078  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 8019607C 0019307C  4B FF FA 65 */	bl __kernel_sin
lbl_80196080:
/* 80196080 00193080  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80196084 00193084  7C 08 03 A6 */	mtlr r0
/* 80196088 00193088  38 21 00 20 */	addi r1, r1, 0x20
/* 8019608C 0019308C  4E 80 00 20 */	blr 
