.include "macros.inc"

.section .text  # 0x801CB1C8 - 0x801CB20C

.global ObjInfoInit
ObjInfoInit:
/* 801CB1C8 001C81C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CB1CC 001C81CC  7C 08 02 A6 */	mflr r0
/* 801CB1D0 001C81D0  3C 60 80 22 */	lis r3, lbl_8021ACA0@ha
/* 801CB1D4 001C81D4  3C 80 80 22 */	lis r4, lbl_8021B128@ha
/* 801CB1D8 001C81D8  3C A0 80 22 */	lis r5, lbl_8021ACDC@ha
/* 801CB1DC 001C81DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CB1E0 001C81E0  38 CD 85 B0 */	addi r6, r13, lbl_80276ED0@sda21
/* 801CB1E4 001C81E4  38 63 AC A0 */	addi r3, r3, lbl_8021ACA0@l
/* 801CB1E8 001C81E8  38 84 B1 28 */	addi r4, r4, lbl_8021B128@l
/* 801CB1EC 001C81EC  38 A5 AC DC */	addi r5, r5, lbl_8021ACDC@l
/* 801CB1F0 001C81F0  38 E0 00 3C */	li r7, 0x3c
/* 801CB1F4 001C81F4  39 00 00 08 */	li r8, 8
/* 801CB1F8 001C81F8  48 00 32 5D */	bl hsdInitClassInfo
/* 801CB1FC 001C81FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CB200 001C8200  7C 08 03 A6 */	mtlr r0
/* 801CB204 001C8204  38 21 00 10 */	addi r1, r1, 0x10
/* 801CB208 001C8208  4E 80 00 20 */	blr 
