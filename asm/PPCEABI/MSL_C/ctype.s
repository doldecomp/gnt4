.include "macros.inc"

.section .text  # 0x8018FDE8 - 0x8018FE0C

.global tolower
tolower:
/* 8018FDE8 0018CDE8  2C 03 FF FF */	cmpwi r3, -1
/* 8018FDEC 0018CDEC  40 82 00 0C */	bne lbl_8018FDF8
/* 8018FDF0 0018CDF0  38 60 FF FF */	li r3, -1
/* 8018FDF4 0018CDF4  4E 80 00 20 */	blr 
lbl_8018FDF8:
/* 8018FDF8 0018CDF8  3C 80 80 21 */	lis r4, lbl_80217F78@ha
/* 8018FDFC 0018CDFC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8018FE00 0018CE00  38 64 7F 78 */	addi r3, r4, lbl_80217F78@l
/* 8018FE04 0018CE04  7C 63 00 AE */	lbzx r3, r3, r0
/* 8018FE08 0018CE08  4E 80 00 20 */	blr 
