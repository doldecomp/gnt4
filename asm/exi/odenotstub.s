.include "macros.inc"

.section .text  # 0x80196854 - 0x8019685C

.global Hu_IsStub
Hu_IsStub:
/* 80196854 00193854  38 60 00 00 */	li r3, 0
/* 80196858 00193858  4E 80 00 20 */	blr 
