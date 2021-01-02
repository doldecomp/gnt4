.include "macros.inc"

.section .text  # 0x80196824 - 0x80196854

.global EXI2_Init
EXI2_Init:
/* 80196824 00193824  4E 80 00 20 */	blr 

.global EXI2_EnableInterrupts
EXI2_EnableInterrupts:
/* 80196828 00193828  4E 80 00 20 */	blr 

.global EXI2_Poll
EXI2_Poll:
/* 8019682C 0019382C  38 60 00 00 */	li r3, 0
/* 80196830 00193830  4E 80 00 20 */	blr 

.global EXI2_ReadN
EXI2_ReadN:
/* 80196834 00193834  38 60 00 00 */	li r3, 0
/* 80196838 00193838  4E 80 00 20 */	blr 

.global EXI2_WriteN
EXI2_WriteN:
/* 8019683C 0019383C  38 60 00 00 */	li r3, 0
/* 80196840 00193840  4E 80 00 20 */	blr 

.global EXI2_Reserve
EXI2_Reserve:
/* 80196844 00193844  4E 80 00 20 */	blr 

.global EXI2_Unreserve
EXI2_Unreserve:
/* 80196848 00193848  4E 80 00 20 */	blr 

.global AMC_IsStub
AMC_IsStub:
/* 8019684C 0019384C  38 60 00 01 */	li r3, 1
/* 80196850 00193850  4E 80 00 20 */	blr 
