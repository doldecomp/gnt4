.include "macros.inc"

.section .text  # 0x8018B9B0 - 0x8018B9C8

.global TRKReleaseMutex
TRKReleaseMutex:
/* 8018B9B0 001889B0  38 60 00 00 */	li r3, 0
/* 8018B9B4 001889B4  4E 80 00 20 */	blr 

.global TRKAcquireMutex
TRKAcquireMutex:
/* 8018B9B8 001889B8  38 60 00 00 */	li r3, 0
/* 8018B9BC 001889BC  4E 80 00 20 */	blr 

.global TRKInitializeMutex
TRKInitializeMutex:
/* 8018B9C0 001889C0  38 60 00 00 */	li r3, 0
/* 8018B9C4 001889C4  4E 80 00 20 */	blr 
