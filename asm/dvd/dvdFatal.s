.include "macros.inc"

.section .text  # 0x80172BFC - 0x80172C2C

.global __DVDPrintFatalMessage
__DVDPrintFatalMessage:
/* 80172BFC 0016FBFC  7C 08 02 A6 */	mflr r0
/* 80172C00 0016FC00  90 01 00 04 */	stw r0, 4(r1)
/* 80172C04 0016FC04  94 21 FF F8 */	stwu r1, -8(r1)
/* 80172C08 0016FC08  81 8D 8C B0 */	lwz r12, lbl_802775D0-_SDA_BASE_(r13)
/* 80172C0C 0016FC0C  28 0C 00 00 */	cmplwi r12, 0
/* 80172C10 0016FC10  41 82 00 0C */	beq lbl_80172C1C
/* 80172C14 0016FC14  7D 88 03 A6 */	mtlr r12
/* 80172C18 0016FC18  4E 80 00 21 */	blrl 
lbl_80172C1C:
/* 80172C1C 0016FC1C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80172C20 0016FC20  38 21 00 08 */	addi r1, r1, 8
/* 80172C24 0016FC24  7C 08 03 A6 */	mtlr r0
/* 80172C28 0016FC28  4E 80 00 20 */	blr 
