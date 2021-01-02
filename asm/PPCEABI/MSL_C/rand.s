.include "macros.inc"

.section .text  # 0x80192AFC - 0x80192B04

.global srand
srand:
/* 80192AFC 0018FAFC  90 6D 82 58 */	stw r3, lbl_80276B78-_SDA_BASE_(r13)
/* 80192B00 0018FB00  4E 80 00 20 */	blr 
