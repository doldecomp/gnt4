.include "macros.inc"

.section .text  # 0x80196428 - 0x80196524

.global func_80196428
func_80196428:
/* 80196428 00193428  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8019642C 0019342C  D8 21 00 08 */	stfd f1, 8(r1)
/* 80196430 00193430  80 A1 00 08 */	lwz r5, 8(r1)
/* 80196434 00193434  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 80196438 00193438  54 A4 65 7E */	rlwinm r4, r5, 0xc, 0x15, 0x1f
/* 8019643C 0019343C  38 E4 FC 01 */	addi r7, r4, -1023
/* 80196440 00193440  2C 07 00 14 */	cmpwi r7, 0x14
/* 80196444 00193444  40 80 00 70 */	bge lbl_801964B4
/* 80196448 00193448  2C 07 00 00 */	cmpwi r7, 0
/* 8019644C 0019344C  40 80 00 18 */	bge lbl_80196464
/* 80196450 00193450  54 A4 00 00 */	rlwinm r4, r5, 0, 0, 0
/* 80196454 00193454  38 00 00 00 */	li r0, 0
/* 80196458 00193458  90 83 00 00 */	stw r4, 0(r3)
/* 8019645C 0019345C  90 03 00 04 */	stw r0, 4(r3)
/* 80196460 00193460  48 00 00 BC */	b lbl_8019651C
lbl_80196464:
/* 80196464 00193464  3C 80 00 10 */	lis r4, 0x000FFFFF@ha
/* 80196468 00193468  38 04 FF FF */	addi r0, r4, 0x000FFFFF@l
/* 8019646C 0019346C  7C 04 3E 30 */	sraw r4, r0, r7
/* 80196470 00193470  7C A0 20 38 */	and r0, r5, r4
/* 80196474 00193474  7C C0 03 79 */	or. r0, r6, r0
/* 80196478 00193478  40 82 00 20 */	bne lbl_80196498
/* 8019647C 0019347C  54 A4 00 00 */	rlwinm r4, r5, 0, 0, 0
/* 80196480 00193480  38 00 00 00 */	li r0, 0
/* 80196484 00193484  90 81 00 08 */	stw r4, 8(r1)
/* 80196488 00193488  90 01 00 0C */	stw r0, 0xc(r1)
/* 8019648C 0019348C  D8 23 00 00 */	stfd f1, 0(r3)
/* 80196490 00193490  C8 21 00 08 */	lfd f1, 8(r1)
/* 80196494 00193494  48 00 00 88 */	b lbl_8019651C
lbl_80196498:
/* 80196498 00193498  7C A4 20 78 */	andc r4, r5, r4
/* 8019649C 0019349C  38 00 00 00 */	li r0, 0
/* 801964A0 001934A0  90 83 00 00 */	stw r4, 0(r3)
/* 801964A4 001934A4  90 03 00 04 */	stw r0, 4(r3)
/* 801964A8 001934A8  C8 03 00 00 */	lfd f0, 0(r3)
/* 801964AC 001934AC  FC 21 00 28 */	fsub f1, f1, f0
/* 801964B0 001934B0  48 00 00 6C */	b lbl_8019651C
lbl_801964B4:
/* 801964B4 001934B4  2C 07 00 33 */	cmpwi r7, 0x33
/* 801964B8 001934B8  40 81 00 20 */	ble lbl_801964D8
/* 801964BC 001934BC  54 A4 00 00 */	rlwinm r4, r5, 0, 0, 0
/* 801964C0 001934C0  38 00 00 00 */	li r0, 0
/* 801964C4 001934C4  90 81 00 08 */	stw r4, 8(r1)
/* 801964C8 001934C8  90 01 00 0C */	stw r0, 0xc(r1)
/* 801964CC 001934CC  D8 23 00 00 */	stfd f1, 0(r3)
/* 801964D0 001934D0  C8 21 00 08 */	lfd f1, 8(r1)
/* 801964D4 001934D4  48 00 00 48 */	b lbl_8019651C
lbl_801964D8:
/* 801964D8 001934D8  38 07 FF EC */	addi r0, r7, -20
/* 801964DC 001934DC  38 80 FF FF */	li r4, -1
/* 801964E0 001934E0  7C 84 04 30 */	srw r4, r4, r0
/* 801964E4 001934E4  7C C0 20 39 */	and. r0, r6, r4
/* 801964E8 001934E8  40 82 00 20 */	bne lbl_80196508
/* 801964EC 001934EC  54 A4 00 00 */	rlwinm r4, r5, 0, 0, 0
/* 801964F0 001934F0  38 00 00 00 */	li r0, 0
/* 801964F4 001934F4  90 81 00 08 */	stw r4, 8(r1)
/* 801964F8 001934F8  90 01 00 0C */	stw r0, 0xc(r1)
/* 801964FC 001934FC  D8 23 00 00 */	stfd f1, 0(r3)
/* 80196500 00193500  C8 21 00 08 */	lfd f1, 8(r1)
/* 80196504 00193504  48 00 00 18 */	b lbl_8019651C
lbl_80196508:
/* 80196508 00193508  90 A3 00 00 */	stw r5, 0(r3)
/* 8019650C 0019350C  7C C0 20 78 */	andc r0, r6, r4
/* 80196510 00193510  90 03 00 04 */	stw r0, 4(r3)
/* 80196514 00193514  C8 03 00 00 */	lfd f0, 0(r3)
/* 80196518 00193518  FC 21 00 28 */	fsub f1, f1, f0
lbl_8019651C:
/* 8019651C 0019351C  38 21 00 10 */	addi r1, r1, 0x10
/* 80196520 00193520  4E 80 00 20 */	blr 
