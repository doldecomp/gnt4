.include "macros.inc"

.section .text  # 0x8018E10C - 0x8018E154

.global __destroy_global_chain_
__destroy_global_chain_:
/* 8018E10C 0018B10C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018E110 0018B110  7C 08 02 A6 */	mflr r0
/* 8018E114 0018B114  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018E118 0018B118  48 00 00 20 */	b lbl_8018E138
lbl_8018E11C:
/* 8018E11C 0018B11C  80 03 00 00 */	lwz r0, 0(r3)
/* 8018E120 0018B120  38 80 FF FF */	li r4, -1
/* 8018E124 0018B124  90 0D 8E 70 */	stw r0, lbl_80277790@sda21(r13)
/* 8018E128 0018B128  81 83 00 04 */	lwz r12, 4(r3)
/* 8018E12C 0018B12C  80 63 00 08 */	lwz r3, 8(r3)
/* 8018E130 0018B130  7D 89 03 A6 */	mtctr r12
/* 8018E134 0018B134  4E 80 04 21 */	bctrl 
lbl_8018E138:
/* 8018E138 0018B138  80 6D 8E 70 */	lwz r3, lbl_80277790@sda21(r13)
/* 8018E13C 0018B13C  28 03 00 00 */	cmplwi r3, 0
/* 8018E140 0018B140  40 82 FF DC */	bne lbl_8018E11C
/* 8018E144 0018B144  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018E148 0018B148  7C 08 03 A6 */	mtlr r0
/* 8018E14C 0018B14C  38 21 00 10 */	addi r1, r1, 0x10
/* 8018E150 0018B150  4E 80 00 20 */	blr 
