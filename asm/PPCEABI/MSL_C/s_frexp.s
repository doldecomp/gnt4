.include "macros.inc"

.section .text  # 0x801961D8 - 0x80196264

.global func_801961D8
func_801961D8:
/* 801961D8 001931D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801961DC 001931DC  38 80 00 00 */	li r4, 0
/* 801961E0 001931E0  3C 00 7F F0 */	lis r0, 0x7ff0
/* 801961E4 001931E4  D8 21 00 08 */	stfd f1, 8(r1)
/* 801961E8 001931E8  80 A1 00 08 */	lwz r5, 8(r1)
/* 801961EC 001931EC  90 83 00 00 */	stw r4, 0(r3)
/* 801961F0 001931F0  54 A4 00 7E */	clrlwi r4, r5, 1
/* 801961F4 001931F4  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 801961F8 001931F8  7C 04 00 00 */	cmpw r4, r0
/* 801961FC 001931FC  40 80 00 0C */	bge lbl_80196208
/* 80196200 00193200  7C 80 33 79 */	or. r0, r4, r6
/* 80196204 00193204  40 82 00 0C */	bne lbl_80196210
lbl_80196208:
/* 80196208 00193208  C8 21 00 08 */	lfd f1, 8(r1)
/* 8019620C 0019320C  48 00 00 50 */	b lbl_8019625C
lbl_80196210:
/* 80196210 00193210  3C 00 00 10 */	lis r0, 0x10
/* 80196214 00193214  7C 04 00 00 */	cmpw r4, r0
/* 80196218 00193218  40 80 00 20 */	bge lbl_80196238
/* 8019621C 0019321C  C8 02 C0 98 */	lfd f0, lbl_8027BD38-_SDA2_BASE_(r2)
/* 80196220 00193220  38 00 FF CA */	li r0, -54
/* 80196224 00193224  90 03 00 00 */	stw r0, 0(r3)
/* 80196228 00193228  FC 01 00 32 */	fmul f0, f1, f0
/* 8019622C 0019322C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80196230 00193230  80 A1 00 08 */	lwz r5, 8(r1)
/* 80196234 00193234  54 A4 00 7E */	clrlwi r4, r5, 1
lbl_80196238:
/* 80196238 00193238  54 A0 03 00 */	rlwinm r0, r5, 0, 0xc, 0
/* 8019623C 0019323C  80 A3 00 00 */	lwz r5, 0(r3)
/* 80196240 00193240  7C 84 A6 70 */	srawi r4, r4, 0x14
/* 80196244 00193244  64 00 3F E0 */	oris r0, r0, 0x3fe0
/* 80196248 00193248  90 01 00 08 */	stw r0, 8(r1)
/* 8019624C 0019324C  7C 84 2A 14 */	add r4, r4, r5
/* 80196250 00193250  38 04 FC 02 */	addi r0, r4, -1022
/* 80196254 00193254  90 03 00 00 */	stw r0, 0(r3)
/* 80196258 00193258  C8 21 00 08 */	lfd f1, 8(r1)
lbl_8019625C:
/* 8019625C 0019325C  38 21 00 10 */	addi r1, r1, 0x10
/* 80196260 00193260  4E 80 00 20 */	blr 
