.include "macros.inc"

.section .text  # 0x801862B8 - 0x80186328

.global GXCallDisplayList
GXCallDisplayList:
/* 801862B8 001832B8  7C 08 02 A6 */	mflr r0
/* 801862BC 001832BC  90 01 00 04 */	stw r0, 4(r1)
/* 801862C0 001832C0  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 801862C4 001832C4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 801862C8 001832C8  3B E4 00 00 */	addi r31, r4, 0
/* 801862CC 001832CC  93 C1 00 10 */	stw r30, 0x10(r1)
/* 801862D0 001832D0  3B C3 00 00 */	addi r30, r3, 0
/* 801862D4 001832D4  80 A2 BA 70 */	lwz r5, lbl_8027B710-_SDA2_BASE_(r2)
/* 801862D8 001832D8  80 05 05 AC */	lwz r0, 0x5ac(r5)
/* 801862DC 001832DC  28 00 00 00 */	cmplwi r0, 0
/* 801862E0 001832E0  41 82 00 08 */	beq lbl_801862E8
/* 801862E4 001832E4  4B FF CC 01 */	bl __GXSetDirtyState
lbl_801862E8:
/* 801862E8 001832E8  80 62 BA 70 */	lwz r3, lbl_8027B710-_SDA2_BASE_(r2)
/* 801862EC 001832EC  80 03 00 00 */	lwz r0, 0(r3)
/* 801862F0 001832F0  28 00 00 00 */	cmplwi r0, 0
/* 801862F4 001832F4  40 82 00 08 */	bne lbl_801862FC
/* 801862F8 001832F8  4B FF CD 3D */	bl __GXSendFlushPrim
lbl_801862FC:
/* 801862FC 001832FC  38 00 00 40 */	li r0, 0x40
/* 80186300 00183300  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 80186304 00183304  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 80186308 00183308  93 C3 80 00 */	stw r30, -0x8000(r3)
/* 8018630C 0018330C  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 80186310 00183310  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80186314 00183314  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80186318 00183318  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8018631C 0018331C  38 21 00 18 */	addi r1, r1, 0x18
/* 80186320 00183320  7C 08 03 A6 */	mtlr r0
/* 80186324 00183324  4E 80 00 20 */	blr 
