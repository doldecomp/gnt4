.include "macros.inc"

.section .text  # 0x80196090 - 0x801961D8

.global floor
floor:
/* 80196090 00193090  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80196094 00193094  D8 21 00 08 */	stfd f1, 8(r1)
/* 80196098 00193098  80 A1 00 08 */	lwz r5, 8(r1)
/* 8019609C 0019309C  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 801960A0 001930A0  54 A3 65 7E */	rlwinm r3, r5, 0xc, 0x15, 0x1f
/* 801960A4 001930A4  38 E3 FC 01 */	addi r7, r3, -1023
/* 801960A8 001930A8  2C 07 00 14 */	cmpwi r7, 0x14
/* 801960AC 001930AC  40 80 00 98 */	bge lbl_80196144
/* 801960B0 001930B0  2C 07 00 00 */	cmpwi r7, 0
/* 801960B4 001930B4  40 80 00 44 */	bge lbl_801960F8
/* 801960B8 001930B8  C8 42 C0 88 */	lfd f2, lbl_8027BD28-_SDA2_BASE_(r2)
/* 801960BC 001930BC  C8 02 C0 90 */	lfd f0, lbl_8027BD30-_SDA2_BASE_(r2)
/* 801960C0 001930C0  FC 22 08 2A */	fadd f1, f2, f1
/* 801960C4 001930C4  FC 01 00 40 */	.byte 0xFC, 0x01, 0x00, 0x40  /* unknown instruction */
/* 801960C8 001930C8  40 81 00 FC */	ble lbl_801961C4
/* 801960CC 001930CC  2C 05 00 00 */	cmpwi r5, 0
/* 801960D0 001930D0  41 80 00 10 */	blt lbl_801960E0
/* 801960D4 001930D4  38 C0 00 00 */	li r6, 0
/* 801960D8 001930D8  38 A0 00 00 */	li r5, 0
/* 801960DC 001930DC  48 00 00 E8 */	b lbl_801961C4
lbl_801960E0:
/* 801960E0 001930E0  54 A0 00 7E */	clrlwi r0, r5, 1
/* 801960E4 001930E4  7C 00 33 79 */	or. r0, r0, r6
/* 801960E8 001930E8  41 82 00 DC */	beq lbl_801961C4
/* 801960EC 001930EC  3C A0 BF F0 */	lis r5, 0xbff0
/* 801960F0 001930F0  38 C0 00 00 */	li r6, 0
/* 801960F4 001930F4  48 00 00 D0 */	b lbl_801961C4
lbl_801960F8:
/* 801960F8 001930F8  3C 60 00 10 */	lis r3, 0x000FFFFF@ha
/* 801960FC 001930FC  38 03 FF FF */	addi r0, r3, 0x000FFFFF@l
/* 80196100 00193100  7C 04 3E 30 */	sraw r4, r0, r7
/* 80196104 00193104  7C A0 20 38 */	and r0, r5, r4
/* 80196108 00193108  7C C0 03 79 */	or. r0, r6, r0
/* 8019610C 0019310C  40 82 00 08 */	bne lbl_80196114
/* 80196110 00193110  48 00 00 C0 */	b lbl_801961D0
lbl_80196114:
/* 80196114 00193114  C8 42 C0 88 */	lfd f2, lbl_8027BD28-_SDA2_BASE_(r2)
/* 80196118 00193118  C8 02 C0 90 */	lfd f0, lbl_8027BD30-_SDA2_BASE_(r2)
/* 8019611C 0019311C  FC 22 08 2A */	fadd f1, f2, f1
/* 80196120 00193120  FC 01 00 40 */	.byte 0xFC, 0x01, 0x00, 0x40  /* unknown instruction */
/* 80196124 00193124  40 81 00 A0 */	ble lbl_801961C4
/* 80196128 00193128  2C 05 00 00 */	cmpwi r5, 0
/* 8019612C 0019312C  40 80 00 0C */	bge lbl_80196138
/* 80196130 00193130  7C 60 3E 30 */	sraw r0, r3, r7
/* 80196134 00193134  7C A5 02 14 */	add r5, r5, r0
lbl_80196138:
/* 80196138 00193138  7C A5 20 78 */	andc r5, r5, r4
/* 8019613C 0019313C  38 C0 00 00 */	li r6, 0
/* 80196140 00193140  48 00 00 84 */	b lbl_801961C4
lbl_80196144:
/* 80196144 00193144  2C 07 00 33 */	cmpwi r7, 0x33
/* 80196148 00193148  40 81 00 14 */	ble lbl_8019615C
/* 8019614C 0019314C  2C 07 04 00 */	cmpwi r7, 0x400
/* 80196150 00193150  40 82 00 80 */	bne lbl_801961D0
/* 80196154 00193154  FC 21 08 2A */	fadd f1, f1, f1
/* 80196158 00193158  48 00 00 78 */	b lbl_801961D0
lbl_8019615C:
/* 8019615C 0019315C  38 07 FF EC */	addi r0, r7, -20
/* 80196160 00193160  38 60 FF FF */	li r3, -1
/* 80196164 00193164  7C 64 04 30 */	srw r4, r3, r0
/* 80196168 00193168  7C C0 20 39 */	and. r0, r6, r4
/* 8019616C 0019316C  40 82 00 08 */	bne lbl_80196174
/* 80196170 00193170  48 00 00 60 */	b lbl_801961D0
lbl_80196174:
/* 80196174 00193174  C8 42 C0 88 */	lfd f2, lbl_8027BD28-_SDA2_BASE_(r2)
/* 80196178 00193178  C8 02 C0 90 */	lfd f0, lbl_8027BD30-_SDA2_BASE_(r2)
/* 8019617C 0019317C  FC 22 08 2A */	fadd f1, f2, f1
/* 80196180 00193180  FC 01 00 40 */	.byte 0xFC, 0x01, 0x00, 0x40  /* unknown instruction */
/* 80196184 00193184  40 81 00 40 */	ble lbl_801961C4
/* 80196188 00193188  2C 05 00 00 */	cmpwi r5, 0
/* 8019618C 0019318C  40 80 00 34 */	bge lbl_801961C0
/* 80196190 00193190  2C 07 00 14 */	cmpwi r7, 0x14
/* 80196194 00193194  40 82 00 0C */	bne lbl_801961A0
/* 80196198 00193198  38 A5 00 01 */	addi r5, r5, 1
/* 8019619C 0019319C  48 00 00 24 */	b lbl_801961C0
lbl_801961A0:
/* 801961A0 001931A0  20 07 00 34 */	subfic r0, r7, 0x34
/* 801961A4 001931A4  38 60 00 01 */	li r3, 1
/* 801961A8 001931A8  7C 60 00 30 */	slw r0, r3, r0
/* 801961AC 001931AC  7C 06 02 14 */	add r0, r6, r0
/* 801961B0 001931B0  7C 00 30 40 */	cmplw r0, r6
/* 801961B4 001931B4  40 80 00 08 */	bge lbl_801961BC
/* 801961B8 001931B8  38 A5 00 01 */	addi r5, r5, 1
lbl_801961BC:
/* 801961BC 001931BC  7C 06 03 78 */	mr r6, r0
lbl_801961C0:
/* 801961C0 001931C0  7C C6 20 78 */	andc r6, r6, r4
lbl_801961C4:
/* 801961C4 001931C4  90 A1 00 08 */	stw r5, 8(r1)
/* 801961C8 001931C8  90 C1 00 0C */	stw r6, 0xc(r1)
/* 801961CC 001931CC  C8 21 00 08 */	lfd f1, 8(r1)
lbl_801961D0:
/* 801961D0 001931D0  38 21 00 10 */	addi r1, r1, 0x10
/* 801961D4 001931D4  4E 80 00 20 */	blr 
