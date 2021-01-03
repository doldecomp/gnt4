.include "macros.inc"

.section .text  # 0x8018DE2C - 0x8018DE48

.global GetUseSerialIO
GetUseSerialIO:
/* 8018DE2C 0018AE2C  3C 60 80 25 */	lis r3, lbl_80249F70@ha
/* 8018DE30 0018AE30  38 63 9F 70 */	addi r3, r3, lbl_80249F70@l
/* 8018DE34 0018AE34  88 63 00 00 */	lbz r3, 0(r3)
/* 8018DE38 0018AE38  4E 80 00 20 */	blr 

.global SetUseSerialIO
SetUseSerialIO:
/* 8018DE3C 0018AE3C  3C 80 80 25 */	lis r4, lbl_80249F70@ha
/* 8018DE40 0018AE40  98 64 9F 70 */	stb r3, lbl_80249F70@l(r4)
/* 8018DE44 0018AE44  4E 80 00 20 */	blr 
