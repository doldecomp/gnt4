.include "macros.inc"

.section .text  # 0x80190B90 - 0x80190BA0

.global func_80190B90
func_80190B90:
/* 80190B90 0018DB90  3C 60 80 19 */	lis r3, func_8018F040@ha
/* 80190B94 0018DB94  38 03 F0 40 */	addi r0, r3, func_8018F040@l
/* 80190B98 0018DB98  90 0D 8E 80 */	stw r0, lbl_802777A0-_SDA_BASE_(r13)
/* 80190B9C 0018DB9C  4E 80 00 20 */	blr 
