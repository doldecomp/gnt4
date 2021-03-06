.include "macros.inc"

.section .text  # 0x8016F2FC - 0x8016FCF4

.global __DVDFSInit
__DVDFSInit:
/* 8016F2FC 0016C2FC  3C 60 80 00 */	lis r3, 0x80000038@ha
/* 8016F300 0016C300  90 6D 8C 40 */	stw r3, lbl_80277560-_SDA_BASE_(r13)
/* 8016F304 0016C304  80 03 00 38 */	lwz r0, 0x80000038@l(r3)
/* 8016F308 0016C308  90 0D 8C 44 */	stw r0, lbl_80277564-_SDA_BASE_(r13)
/* 8016F30C 0016C30C  80 6D 8C 44 */	lwz r3, lbl_80277564-_SDA_BASE_(r13)
/* 8016F310 0016C310  28 03 00 00 */	cmplwi r3, 0
/* 8016F314 0016C314  4D 82 00 20 */	beqlr 
/* 8016F318 0016C318  80 03 00 08 */	lwz r0, 8(r3)
/* 8016F31C 0016C31C  90 0D 8C 4C */	stw r0, lbl_8027756C-_SDA_BASE_(r13)
/* 8016F320 0016C320  80 0D 8C 4C */	lwz r0, lbl_8027756C-_SDA_BASE_(r13)
/* 8016F324 0016C324  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8016F328 0016C328  7C 03 02 14 */	add r0, r3, r0
/* 8016F32C 0016C32C  90 0D 8C 48 */	stw r0, lbl_80277568-_SDA_BASE_(r13)
/* 8016F330 0016C330  4E 80 00 20 */	blr 

.global DVDConvertPathToEntrynum
DVDConvertPathToEntrynum:
/* 8016F334 0016C334  7C 08 02 A6 */	mflr r0
/* 8016F338 0016C338  90 01 00 04 */	stw r0, 4(r1)
/* 8016F33C 0016C33C  94 21 FF B8 */	stwu r1, -0x48(r1)
/* 8016F340 0016C340  BE 81 00 18 */	stmw r20, 0x18(r1)
/* 8016F344 0016C344  7C 77 1B 78 */	mr r23, r3
/* 8016F348 0016C348  3C 60 80 21 */	lis r3, lbl_80216178@ha
/* 8016F34C 0016C34C  3B 37 00 00 */	addi r25, r23, 0
/* 8016F350 0016C350  3B E3 61 78 */	addi r31, r3, lbl_80216178@l
/* 8016F354 0016C354  83 4D 8C 50 */	lwz r26, lbl_80277570-_SDA_BASE_(r13)
lbl_8016F358:
/* 8016F358 0016C358  88 77 00 00 */	lbz r3, 0(r23)
/* 8016F35C 0016C35C  7C 60 07 75 */	extsb. r0, r3
/* 8016F360 0016C360  40 82 00 0C */	bne lbl_8016F36C
/* 8016F364 0016C364  7F 43 D3 78 */	mr r3, r26
/* 8016F368 0016C368  48 00 02 AC */	b lbl_8016F614
lbl_8016F36C:
/* 8016F36C 0016C36C  7C 60 07 74 */	extsb r0, r3
/* 8016F370 0016C370  2C 00 00 2F */	cmpwi r0, 0x2f
/* 8016F374 0016C374  40 82 00 10 */	bne lbl_8016F384
/* 8016F378 0016C378  3B 40 00 00 */	li r26, 0
/* 8016F37C 0016C37C  3A F7 00 01 */	addi r23, r23, 1
/* 8016F380 0016C380  4B FF FF D8 */	b lbl_8016F358
lbl_8016F384:
/* 8016F384 0016C384  2C 00 00 2E */	cmpwi r0, 0x2e
/* 8016F388 0016C388  40 82 00 74 */	bne lbl_8016F3FC
/* 8016F38C 0016C38C  88 77 00 01 */	lbz r3, 1(r23)
/* 8016F390 0016C390  7C 60 07 74 */	extsb r0, r3
/* 8016F394 0016C394  2C 00 00 2E */	cmpwi r0, 0x2e
/* 8016F398 0016C398  40 82 00 44 */	bne lbl_8016F3DC
/* 8016F39C 0016C39C  88 77 00 02 */	lbz r3, 2(r23)
/* 8016F3A0 0016C3A0  2C 03 00 2F */	cmpwi r3, 0x2f
/* 8016F3A4 0016C3A4  40 82 00 1C */	bne lbl_8016F3C0
/* 8016F3A8 0016C3A8  1C 7A 00 0C */	mulli r3, r26, 0xc
/* 8016F3AC 0016C3AC  80 8D 8C 44 */	lwz r4, lbl_80277564-_SDA_BASE_(r13)
/* 8016F3B0 0016C3B0  38 03 00 04 */	addi r0, r3, 4
/* 8016F3B4 0016C3B4  7F 44 00 2E */	lwzx r26, r4, r0
/* 8016F3B8 0016C3B8  3A F7 00 03 */	addi r23, r23, 3
/* 8016F3BC 0016C3BC  4B FF FF 9C */	b lbl_8016F358
lbl_8016F3C0:
/* 8016F3C0 0016C3C0  7C 60 07 75 */	extsb. r0, r3
/* 8016F3C4 0016C3C4  40 82 00 38 */	bne lbl_8016F3FC
/* 8016F3C8 0016C3C8  1C 1A 00 0C */	mulli r0, r26, 0xc
/* 8016F3CC 0016C3CC  80 6D 8C 44 */	lwz r3, lbl_80277564-_SDA_BASE_(r13)
/* 8016F3D0 0016C3D0  7C 63 02 14 */	add r3, r3, r0
/* 8016F3D4 0016C3D4  80 63 00 04 */	lwz r3, 4(r3)
/* 8016F3D8 0016C3D8  48 00 02 3C */	b lbl_8016F614
lbl_8016F3DC:
/* 8016F3DC 0016C3DC  2C 00 00 2F */	cmpwi r0, 0x2f
/* 8016F3E0 0016C3E0  40 82 00 0C */	bne lbl_8016F3EC
/* 8016F3E4 0016C3E4  3A F7 00 02 */	addi r23, r23, 2
/* 8016F3E8 0016C3E8  4B FF FF 70 */	b lbl_8016F358
lbl_8016F3EC:
/* 8016F3EC 0016C3EC  7C 60 07 75 */	extsb. r0, r3
/* 8016F3F0 0016C3F0  40 82 00 0C */	bne lbl_8016F3FC
/* 8016F3F4 0016C3F4  7F 43 D3 78 */	mr r3, r26
/* 8016F3F8 0016C3F8  48 00 02 1C */	b lbl_8016F614
lbl_8016F3FC:
/* 8016F3FC 0016C3FC  80 0D 8C 54 */	lwz r0, lbl_80277574-_SDA_BASE_(r13)
/* 8016F400 0016C400  28 00 00 00 */	cmplwi r0, 0
/* 8016F404 0016C404  40 82 00 AC */	bne lbl_8016F4B0
/* 8016F408 0016C408  3B 97 00 00 */	addi r28, r23, 0
/* 8016F40C 0016C40C  38 A0 00 00 */	li r5, 0
/* 8016F410 0016C410  38 80 00 00 */	li r4, 0
/* 8016F414 0016C414  48 00 00 48 */	b lbl_8016F45C
lbl_8016F418:
/* 8016F418 0016C418  7C 60 07 74 */	extsb r0, r3
/* 8016F41C 0016C41C  2C 00 00 2E */	cmpwi r0, 0x2e
/* 8016F420 0016C420  40 82 00 2C */	bne lbl_8016F44C
/* 8016F424 0016C424  7C 17 E0 50 */	subf r0, r23, r28
/* 8016F428 0016C428  2C 00 00 08 */	cmpwi r0, 8
/* 8016F42C 0016C42C  41 81 00 0C */	bgt lbl_8016F438
/* 8016F430 0016C430  2C 05 00 01 */	cmpwi r5, 1
/* 8016F434 0016C434  40 82 00 0C */	bne lbl_8016F440
lbl_8016F438:
/* 8016F438 0016C438  38 80 00 01 */	li r4, 1
/* 8016F43C 0016C43C  48 00 00 38 */	b lbl_8016F474
lbl_8016F440:
/* 8016F440 0016C440  3B 1C 00 01 */	addi r24, r28, 1
/* 8016F444 0016C444  38 A0 00 01 */	li r5, 1
/* 8016F448 0016C448  48 00 00 10 */	b lbl_8016F458
lbl_8016F44C:
/* 8016F44C 0016C44C  2C 00 00 20 */	cmpwi r0, 0x20
/* 8016F450 0016C450  40 82 00 08 */	bne lbl_8016F458
/* 8016F454 0016C454  38 80 00 01 */	li r4, 1
lbl_8016F458:
/* 8016F458 0016C458  3B 9C 00 01 */	addi r28, r28, 1
lbl_8016F45C:
/* 8016F45C 0016C45C  88 7C 00 00 */	lbz r3, 0(r28)
/* 8016F460 0016C460  7C 60 07 75 */	extsb. r0, r3
/* 8016F464 0016C464  41 82 00 10 */	beq lbl_8016F474
/* 8016F468 0016C468  7C 60 07 74 */	extsb r0, r3
/* 8016F46C 0016C46C  2C 00 00 2F */	cmpwi r0, 0x2f
/* 8016F470 0016C470  40 82 FF A8 */	bne lbl_8016F418
lbl_8016F474:
/* 8016F474 0016C474  2C 05 00 01 */	cmpwi r5, 1
/* 8016F478 0016C478  40 82 00 14 */	bne lbl_8016F48C
/* 8016F47C 0016C47C  7C 18 E0 50 */	subf r0, r24, r28
/* 8016F480 0016C480  2C 00 00 03 */	cmpwi r0, 3
/* 8016F484 0016C484  40 81 00 08 */	ble lbl_8016F48C
/* 8016F488 0016C488  38 80 00 01 */	li r4, 1
lbl_8016F48C:
/* 8016F48C 0016C48C  2C 04 00 00 */	cmpwi r4, 0
/* 8016F490 0016C490  41 82 00 44 */	beq lbl_8016F4D4
/* 8016F494 0016C494  38 BF 00 00 */	addi r5, r31, 0
/* 8016F498 0016C498  4C C6 31 82 */	crclr 6
/* 8016F49C 0016C49C  38 D9 00 00 */	addi r6, r25, 0
/* 8016F4A0 0016C4A0  38 6D 81 60 */	addi r3, r13, lbl_80276A80-_SDA_BASE_
/* 8016F4A4 0016C4A4  38 80 01 83 */	li r4, 0x183
/* 8016F4A8 0016C4A8  4B FF 84 71 */	bl OSPanic
/* 8016F4AC 0016C4AC  48 00 00 28 */	b lbl_8016F4D4
lbl_8016F4B0:
/* 8016F4B0 0016C4B0  7E FC BB 78 */	mr r28, r23
/* 8016F4B4 0016C4B4  48 00 00 08 */	b lbl_8016F4BC
lbl_8016F4B8:
/* 8016F4B8 0016C4B8  3B 9C 00 01 */	addi r28, r28, 1
lbl_8016F4BC:
/* 8016F4BC 0016C4BC  88 7C 00 00 */	lbz r3, 0(r28)
/* 8016F4C0 0016C4C0  7C 60 07 75 */	extsb. r0, r3
/* 8016F4C4 0016C4C4  41 82 00 10 */	beq lbl_8016F4D4
/* 8016F4C8 0016C4C8  7C 60 07 74 */	extsb r0, r3
/* 8016F4CC 0016C4CC  2C 00 00 2F */	cmpwi r0, 0x2f
/* 8016F4D0 0016C4D0  40 82 FF E8 */	bne lbl_8016F4B8
lbl_8016F4D4:
/* 8016F4D4 0016C4D4  88 1C 00 00 */	lbz r0, 0(r28)
/* 8016F4D8 0016C4D8  7C 00 07 75 */	extsb. r0, r0
/* 8016F4DC 0016C4DC  40 82 00 0C */	bne lbl_8016F4E8
/* 8016F4E0 0016C4E0  3B C0 00 00 */	li r30, 0
/* 8016F4E4 0016C4E4  48 00 00 08 */	b lbl_8016F4EC
lbl_8016F4E8:
/* 8016F4E8 0016C4E8  3B C0 00 01 */	li r30, 1
lbl_8016F4EC:
/* 8016F4EC 0016C4EC  1F BA 00 0C */	mulli r29, r26, 0xc
/* 8016F4F0 0016C4F0  7F 77 E0 50 */	subf r27, r23, r28
/* 8016F4F4 0016C4F4  3B 5A 00 01 */	addi r26, r26, 1
/* 8016F4F8 0016C4F8  48 00 00 E4 */	b lbl_8016F5DC
lbl_8016F4FC:
/* 8016F4FC 0016C4FC  1F 9A 00 0C */	mulli r28, r26, 0xc
/* 8016F500 0016C500  7C 83 E0 2E */	lwzx r4, r3, r28
/* 8016F504 0016C504  54 80 00 0F */	rlwinm. r0, r4, 0, 0, 7
/* 8016F508 0016C508  40 82 00 0C */	bne lbl_8016F514
/* 8016F50C 0016C50C  38 00 00 00 */	li r0, 0
/* 8016F510 0016C510  48 00 00 08 */	b lbl_8016F518
lbl_8016F514:
/* 8016F514 0016C514  38 00 00 01 */	li r0, 1
lbl_8016F518:
/* 8016F518 0016C518  2C 00 00 00 */	cmpwi r0, 0
/* 8016F51C 0016C51C  40 82 00 0C */	bne lbl_8016F528
/* 8016F520 0016C520  2C 1E 00 01 */	cmpwi r30, 1
/* 8016F524 0016C524  41 82 00 80 */	beq lbl_8016F5A4
lbl_8016F528:
/* 8016F528 0016C528  80 6D 8C 48 */	lwz r3, lbl_80277568-_SDA_BASE_(r13)
/* 8016F52C 0016C52C  54 80 02 3E */	clrlwi r0, r4, 8
/* 8016F530 0016C530  3A B7 00 00 */	addi r21, r23, 0
/* 8016F534 0016C534  7E 83 02 14 */	add r20, r3, r0
/* 8016F538 0016C538  48 00 00 38 */	b lbl_8016F570
lbl_8016F53C:
/* 8016F53C 0016C53C  88 14 00 00 */	lbz r0, 0(r20)
/* 8016F540 0016C540  3A 94 00 01 */	addi r20, r20, 1
/* 8016F544 0016C544  7C 03 07 74 */	extsb r3, r0
/* 8016F548 0016C548  48 02 08 A1 */	bl tolower
/* 8016F54C 0016C54C  88 15 00 00 */	lbz r0, 0(r21)
/* 8016F550 0016C550  3A C3 00 00 */	addi r22, r3, 0
/* 8016F554 0016C554  3A B5 00 01 */	addi r21, r21, 1
/* 8016F558 0016C558  7C 03 07 74 */	extsb r3, r0
/* 8016F55C 0016C55C  48 02 08 8D */	bl tolower
/* 8016F560 0016C560  7C 03 B0 00 */	cmpw r3, r22
/* 8016F564 0016C564  41 82 00 0C */	beq lbl_8016F570
/* 8016F568 0016C568  38 00 00 00 */	li r0, 0
/* 8016F56C 0016C56C  48 00 00 30 */	b lbl_8016F59C
lbl_8016F570:
/* 8016F570 0016C570  88 14 00 00 */	lbz r0, 0(r20)
/* 8016F574 0016C574  7C 00 07 75 */	extsb. r0, r0
/* 8016F578 0016C578  40 82 FF C4 */	bne lbl_8016F53C
/* 8016F57C 0016C57C  88 75 00 00 */	lbz r3, 0(r21)
/* 8016F580 0016C580  2C 03 00 2F */	cmpwi r3, 0x2f
/* 8016F584 0016C584  41 82 00 0C */	beq lbl_8016F590
/* 8016F588 0016C588  7C 60 07 75 */	extsb. r0, r3
/* 8016F58C 0016C58C  40 82 00 0C */	bne lbl_8016F598
lbl_8016F590:
/* 8016F590 0016C590  38 00 00 01 */	li r0, 1
/* 8016F594 0016C594  48 00 00 08 */	b lbl_8016F59C
lbl_8016F598:
/* 8016F598 0016C598  38 00 00 00 */	li r0, 0
lbl_8016F59C:
/* 8016F59C 0016C59C  2C 00 00 01 */	cmpwi r0, 1
/* 8016F5A0 0016C5A0  41 82 00 58 */	beq lbl_8016F5F8
lbl_8016F5A4:
/* 8016F5A4 0016C5A4  80 0D 8C 44 */	lwz r0, lbl_80277564-_SDA_BASE_(r13)
/* 8016F5A8 0016C5A8  7C 60 E2 14 */	add r3, r0, r28
/* 8016F5AC 0016C5AC  80 03 00 00 */	lwz r0, 0(r3)
/* 8016F5B0 0016C5B0  54 00 00 0F */	rlwinm. r0, r0, 0, 0, 7
/* 8016F5B4 0016C5B4  40 82 00 0C */	bne lbl_8016F5C0
/* 8016F5B8 0016C5B8  38 00 00 00 */	li r0, 0
/* 8016F5BC 0016C5BC  48 00 00 08 */	b lbl_8016F5C4
lbl_8016F5C0:
/* 8016F5C0 0016C5C0  38 00 00 01 */	li r0, 1
lbl_8016F5C4:
/* 8016F5C4 0016C5C4  2C 00 00 00 */	cmpwi r0, 0
/* 8016F5C8 0016C5C8  41 82 00 0C */	beq lbl_8016F5D4
/* 8016F5CC 0016C5CC  80 03 00 08 */	lwz r0, 8(r3)
/* 8016F5D0 0016C5D0  48 00 00 08 */	b lbl_8016F5D8
lbl_8016F5D4:
/* 8016F5D4 0016C5D4  38 1A 00 01 */	addi r0, r26, 1
lbl_8016F5D8:
/* 8016F5D8 0016C5D8  7C 1A 03 78 */	mr r26, r0
lbl_8016F5DC:
/* 8016F5DC 0016C5DC  80 6D 8C 44 */	lwz r3, lbl_80277564-_SDA_BASE_(r13)
/* 8016F5E0 0016C5E0  38 03 00 08 */	addi r0, r3, 8
/* 8016F5E4 0016C5E4  7C 1D 00 2E */	lwzx r0, r29, r0
/* 8016F5E8 0016C5E8  7C 1A 00 40 */	cmplw r26, r0
/* 8016F5EC 0016C5EC  41 80 FF 10 */	blt lbl_8016F4FC
/* 8016F5F0 0016C5F0  38 60 FF FF */	li r3, -1
/* 8016F5F4 0016C5F4  48 00 00 20 */	b lbl_8016F614
lbl_8016F5F8:
/* 8016F5F8 0016C5F8  2C 1E 00 00 */	cmpwi r30, 0
/* 8016F5FC 0016C5FC  40 82 00 0C */	bne lbl_8016F608
/* 8016F600 0016C600  7F 43 D3 78 */	mr r3, r26
/* 8016F604 0016C604  48 00 00 10 */	b lbl_8016F614
lbl_8016F608:
/* 8016F608 0016C608  7E FB BA 14 */	add r23, r27, r23
/* 8016F60C 0016C60C  3A F7 00 01 */	addi r23, r23, 1
/* 8016F610 0016C610  4B FF FD 48 */	b lbl_8016F358
lbl_8016F614:
/* 8016F614 0016C614  BA 81 00 18 */	lmw r20, 0x18(r1)
/* 8016F618 0016C618  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8016F61C 0016C61C  38 21 00 48 */	addi r1, r1, 0x48
/* 8016F620 0016C620  7C 08 03 A6 */	mtlr r0
/* 8016F624 0016C624  4E 80 00 20 */	blr 

.global DVDFastOpen
DVDFastOpen:
/* 8016F628 0016C628  2C 03 00 00 */	cmpwi r3, 0
/* 8016F62C 0016C62C  41 80 00 38 */	blt lbl_8016F664
/* 8016F630 0016C630  80 0D 8C 4C */	lwz r0, lbl_8027756C-_SDA_BASE_(r13)
/* 8016F634 0016C634  7C 03 00 40 */	cmplw r3, r0
/* 8016F638 0016C638  40 80 00 2C */	bge lbl_8016F664
/* 8016F63C 0016C63C  1C C3 00 0C */	mulli r6, r3, 0xc
/* 8016F640 0016C640  80 6D 8C 44 */	lwz r3, lbl_80277564-_SDA_BASE_(r13)
/* 8016F644 0016C644  7C 03 30 2E */	lwzx r0, r3, r6
/* 8016F648 0016C648  54 00 00 0F */	rlwinm. r0, r0, 0, 0, 7
/* 8016F64C 0016C64C  40 82 00 0C */	bne lbl_8016F658
/* 8016F650 0016C650  38 00 00 00 */	li r0, 0
/* 8016F654 0016C654  48 00 00 08 */	b lbl_8016F65C
lbl_8016F658:
/* 8016F658 0016C658  38 00 00 01 */	li r0, 1
lbl_8016F65C:
/* 8016F65C 0016C65C  2C 00 00 00 */	cmpwi r0, 0
/* 8016F660 0016C660  41 82 00 0C */	beq lbl_8016F66C
lbl_8016F664:
/* 8016F664 0016C664  38 60 00 00 */	li r3, 0
/* 8016F668 0016C668  4E 80 00 20 */	blr 
lbl_8016F66C:
/* 8016F66C 0016C66C  7C 63 32 14 */	add r3, r3, r6
/* 8016F670 0016C670  80 A3 00 04 */	lwz r5, 4(r3)
/* 8016F674 0016C674  38 00 00 00 */	li r0, 0
/* 8016F678 0016C678  38 60 00 01 */	li r3, 1
/* 8016F67C 0016C67C  90 A4 00 30 */	stw r5, 0x30(r4)
/* 8016F680 0016C680  80 AD 8C 44 */	lwz r5, lbl_80277564-_SDA_BASE_(r13)
/* 8016F684 0016C684  7C A5 32 14 */	add r5, r5, r6
/* 8016F688 0016C688  80 A5 00 08 */	lwz r5, 8(r5)
/* 8016F68C 0016C68C  90 A4 00 34 */	stw r5, 0x34(r4)
/* 8016F690 0016C690  90 04 00 38 */	stw r0, 0x38(r4)
/* 8016F694 0016C694  90 04 00 0C */	stw r0, 0xc(r4)
/* 8016F698 0016C698  4E 80 00 20 */	blr 

.global DVDOpen
DVDOpen:
/* 8016F69C 0016C69C  7C 08 02 A6 */	mflr r0
/* 8016F6A0 0016C6A0  90 01 00 04 */	stw r0, 4(r1)
/* 8016F6A4 0016C6A4  94 21 FF 68 */	stwu r1, -0x98(r1)
/* 8016F6A8 0016C6A8  93 E1 00 94 */	stw r31, 0x94(r1)
/* 8016F6AC 0016C6AC  3B E4 00 00 */	addi r31, r4, 0
/* 8016F6B0 0016C6B0  93 C1 00 90 */	stw r30, 0x90(r1)
/* 8016F6B4 0016C6B4  3B C3 00 00 */	addi r30, r3, 0
/* 8016F6B8 0016C6B8  4B FF FC 7D */	bl DVDConvertPathToEntrynum
/* 8016F6BC 0016C6BC  2C 03 00 00 */	cmpwi r3, 0
/* 8016F6C0 0016C6C0  40 80 00 30 */	bge lbl_8016F6F0
/* 8016F6C4 0016C6C4  38 61 00 10 */	addi r3, r1, 0x10
/* 8016F6C8 0016C6C8  38 80 00 80 */	li r4, 0x80
/* 8016F6CC 0016C6CC  48 00 02 1D */	bl DVDGetCurrentDir
/* 8016F6D0 0016C6D0  3C 60 80 21 */	lis r3, lbl_80216240@ha
/* 8016F6D4 0016C6D4  4C C6 31 82 */	crclr 6
/* 8016F6D8 0016C6D8  38 63 62 40 */	addi r3, r3, lbl_80216240@l
/* 8016F6DC 0016C6DC  38 9E 00 00 */	addi r4, r30, 0
/* 8016F6E0 0016C6E0  38 A1 00 10 */	addi r5, r1, 0x10
/* 8016F6E4 0016C6E4  4B FF 81 B5 */	bl OSReport
/* 8016F6E8 0016C6E8  38 60 00 00 */	li r3, 0
/* 8016F6EC 0016C6EC  48 00 00 60 */	b lbl_8016F74C
lbl_8016F6F0:
/* 8016F6F0 0016C6F0  1C A3 00 0C */	mulli r5, r3, 0xc
/* 8016F6F4 0016C6F4  80 6D 8C 44 */	lwz r3, lbl_80277564-_SDA_BASE_(r13)
/* 8016F6F8 0016C6F8  7C 03 28 2E */	lwzx r0, r3, r5
/* 8016F6FC 0016C6FC  54 00 00 0F */	rlwinm. r0, r0, 0, 0, 7
/* 8016F700 0016C700  40 82 00 0C */	bne lbl_8016F70C
/* 8016F704 0016C704  38 00 00 00 */	li r0, 0
/* 8016F708 0016C708  48 00 00 08 */	b lbl_8016F710
lbl_8016F70C:
/* 8016F70C 0016C70C  38 00 00 01 */	li r0, 1
lbl_8016F710:
/* 8016F710 0016C710  2C 00 00 00 */	cmpwi r0, 0
/* 8016F714 0016C714  41 82 00 0C */	beq lbl_8016F720
/* 8016F718 0016C718  38 60 00 00 */	li r3, 0
/* 8016F71C 0016C71C  48 00 00 30 */	b lbl_8016F74C
lbl_8016F720:
/* 8016F720 0016C720  7C 63 2A 14 */	add r3, r3, r5
/* 8016F724 0016C724  80 83 00 04 */	lwz r4, 4(r3)
/* 8016F728 0016C728  38 00 00 00 */	li r0, 0
/* 8016F72C 0016C72C  38 60 00 01 */	li r3, 1
/* 8016F730 0016C730  90 9F 00 30 */	stw r4, 0x30(r31)
/* 8016F734 0016C734  80 8D 8C 44 */	lwz r4, lbl_80277564-_SDA_BASE_(r13)
/* 8016F738 0016C738  7C 84 2A 14 */	add r4, r4, r5
/* 8016F73C 0016C73C  80 84 00 08 */	lwz r4, 8(r4)
/* 8016F740 0016C740  90 9F 00 34 */	stw r4, 0x34(r31)
/* 8016F744 0016C744  90 1F 00 38 */	stw r0, 0x38(r31)
/* 8016F748 0016C748  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_8016F74C:
/* 8016F74C 0016C74C  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 8016F750 0016C750  83 E1 00 94 */	lwz r31, 0x94(r1)
/* 8016F754 0016C754  83 C1 00 90 */	lwz r30, 0x90(r1)
/* 8016F758 0016C758  38 21 00 98 */	addi r1, r1, 0x98
/* 8016F75C 0016C75C  7C 08 03 A6 */	mtlr r0
/* 8016F760 0016C760  4E 80 00 20 */	blr 

.global DVDClose
DVDClose:
/* 8016F764 0016C764  7C 08 02 A6 */	mflr r0
/* 8016F768 0016C768  90 01 00 04 */	stw r0, 4(r1)
/* 8016F76C 0016C76C  94 21 FF F8 */	stwu r1, -8(r1)
/* 8016F770 0016C770  48 00 2C E1 */	bl DVDCancel
/* 8016F774 0016C774  38 60 00 01 */	li r3, 1
/* 8016F778 0016C778  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8016F77C 0016C77C  38 21 00 08 */	addi r1, r1, 8
/* 8016F780 0016C780  7C 08 03 A6 */	mtlr r0
/* 8016F784 0016C784  4E 80 00 20 */	blr 

.global entryToPath
entryToPath:
/* 8016F788 0016C788  7C 08 02 A6 */	mflr r0
/* 8016F78C 0016C78C  28 03 00 00 */	cmplwi r3, 0
/* 8016F790 0016C790  90 01 00 04 */	stw r0, 4(r1)
/* 8016F794 0016C794  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8016F798 0016C798  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8016F79C 0016C79C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8016F7A0 0016C7A0  3B C5 00 00 */	addi r30, r5, 0
/* 8016F7A4 0016C7A4  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8016F7A8 0016C7A8  3B A4 00 00 */	addi r29, r4, 0
/* 8016F7AC 0016C7AC  93 81 00 20 */	stw r28, 0x20(r1)
/* 8016F7B0 0016C7B0  40 82 00 0C */	bne lbl_8016F7BC
/* 8016F7B4 0016C7B4  38 60 00 00 */	li r3, 0
/* 8016F7B8 0016C7B8  48 00 01 10 */	b lbl_8016F8C8
lbl_8016F7BC:
/* 8016F7BC 0016C7BC  80 8D 8C 44 */	lwz r4, lbl_80277564-_SDA_BASE_(r13)
/* 8016F7C0 0016C7C0  1C 63 00 0C */	mulli r3, r3, 0xc
/* 8016F7C4 0016C7C4  80 CD 8C 48 */	lwz r6, lbl_80277568-_SDA_BASE_(r13)
/* 8016F7C8 0016C7C8  38 A4 00 04 */	addi r5, r4, 4
/* 8016F7CC 0016C7CC  7C 04 18 2E */	lwzx r0, r4, r3
/* 8016F7D0 0016C7D0  7C 65 18 2E */	lwzx r3, r5, r3
/* 8016F7D4 0016C7D4  54 00 02 3E */	clrlwi r0, r0, 8
/* 8016F7D8 0016C7D8  28 03 00 00 */	cmplwi r3, 0
/* 8016F7DC 0016C7DC  7F E6 02 14 */	add r31, r6, r0
/* 8016F7E0 0016C7E0  40 82 00 0C */	bne lbl_8016F7EC
/* 8016F7E4 0016C7E4  38 60 00 00 */	li r3, 0
/* 8016F7E8 0016C7E8  48 00 00 80 */	b lbl_8016F868
lbl_8016F7EC:
/* 8016F7EC 0016C7EC  1C 63 00 0C */	mulli r3, r3, 0xc
/* 8016F7F0 0016C7F0  7C 04 18 2E */	lwzx r0, r4, r3
/* 8016F7F4 0016C7F4  7F A4 EB 78 */	mr r4, r29
/* 8016F7F8 0016C7F8  7C 65 18 2E */	lwzx r3, r5, r3
/* 8016F7FC 0016C7FC  38 BE 00 00 */	addi r5, r30, 0
/* 8016F800 0016C800  54 00 02 3E */	clrlwi r0, r0, 8
/* 8016F804 0016C804  7F 86 02 14 */	add r28, r6, r0
/* 8016F808 0016C808  4B FF FF 81 */	bl entryToPath
/* 8016F80C 0016C80C  7C 03 F0 40 */	cmplw r3, r30
/* 8016F810 0016C810  40 82 00 08 */	bne lbl_8016F818
/* 8016F814 0016C814  48 00 00 54 */	b lbl_8016F868
lbl_8016F818:
/* 8016F818 0016C818  38 03 00 00 */	addi r0, r3, 0
/* 8016F81C 0016C81C  38 63 00 01 */	addi r3, r3, 1
/* 8016F820 0016C820  38 80 00 2F */	li r4, 0x2f
/* 8016F824 0016C824  7C C3 F0 50 */	subf r6, r3, r30
/* 8016F828 0016C828  7C 9D 01 AE */	stbx r4, r29, r0
/* 8016F82C 0016C82C  38 86 00 00 */	addi r4, r6, 0
/* 8016F830 0016C830  7C BD 1A 14 */	add r5, r29, r3
/* 8016F834 0016C834  48 00 00 18 */	b lbl_8016F84C
lbl_8016F838:
/* 8016F838 0016C838  88 1C 00 00 */	lbz r0, 0(r28)
/* 8016F83C 0016C83C  3B 9C 00 01 */	addi r28, r28, 1
/* 8016F840 0016C840  38 84 FF FF */	addi r4, r4, -1
/* 8016F844 0016C844  98 05 00 00 */	stb r0, 0(r5)
/* 8016F848 0016C848  38 A5 00 01 */	addi r5, r5, 1
lbl_8016F84C:
/* 8016F84C 0016C84C  28 04 00 00 */	cmplwi r4, 0
/* 8016F850 0016C850  41 82 00 10 */	beq lbl_8016F860
/* 8016F854 0016C854  88 1C 00 00 */	lbz r0, 0(r28)
/* 8016F858 0016C858  7C 00 07 75 */	extsb. r0, r0
/* 8016F85C 0016C85C  40 82 FF DC */	bne lbl_8016F838
lbl_8016F860:
/* 8016F860 0016C860  7C 04 30 50 */	subf r0, r4, r6
/* 8016F864 0016C864  7C 63 02 14 */	add r3, r3, r0
lbl_8016F868:
/* 8016F868 0016C868  7C 03 F0 40 */	cmplw r3, r30
/* 8016F86C 0016C86C  40 82 00 08 */	bne lbl_8016F874
/* 8016F870 0016C870  48 00 00 58 */	b lbl_8016F8C8
lbl_8016F874:
/* 8016F874 0016C874  38 03 00 00 */	addi r0, r3, 0
/* 8016F878 0016C878  38 63 00 01 */	addi r3, r3, 1
/* 8016F87C 0016C87C  38 80 00 2F */	li r4, 0x2f
/* 8016F880 0016C880  7C E3 F0 50 */	subf r7, r3, r30
/* 8016F884 0016C884  7C 9D 01 AE */	stbx r4, r29, r0
/* 8016F888 0016C888  38 DF 00 00 */	addi r6, r31, 0
/* 8016F88C 0016C88C  38 87 00 00 */	addi r4, r7, 0
/* 8016F890 0016C890  7C BD 1A 14 */	add r5, r29, r3
/* 8016F894 0016C894  48 00 00 18 */	b lbl_8016F8AC
lbl_8016F898:
/* 8016F898 0016C898  88 06 00 00 */	lbz r0, 0(r6)
/* 8016F89C 0016C89C  38 C6 00 01 */	addi r6, r6, 1
/* 8016F8A0 0016C8A0  38 84 FF FF */	addi r4, r4, -1
/* 8016F8A4 0016C8A4  98 05 00 00 */	stb r0, 0(r5)
/* 8016F8A8 0016C8A8  38 A5 00 01 */	addi r5, r5, 1
lbl_8016F8AC:
/* 8016F8AC 0016C8AC  28 04 00 00 */	cmplwi r4, 0
/* 8016F8B0 0016C8B0  41 82 00 10 */	beq lbl_8016F8C0
/* 8016F8B4 0016C8B4  88 06 00 00 */	lbz r0, 0(r6)
/* 8016F8B8 0016C8B8  7C 00 07 75 */	extsb. r0, r0
/* 8016F8BC 0016C8BC  40 82 FF DC */	bne lbl_8016F898
lbl_8016F8C0:
/* 8016F8C0 0016C8C0  7C 04 38 50 */	subf r0, r4, r7
/* 8016F8C4 0016C8C4  7C 63 02 14 */	add r3, r3, r0
lbl_8016F8C8:
/* 8016F8C8 0016C8C8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8016F8CC 0016C8CC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8016F8D0 0016C8D0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8016F8D4 0016C8D4  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8016F8D8 0016C8D8  83 81 00 20 */	lwz r28, 0x20(r1)
/* 8016F8DC 0016C8DC  38 21 00 30 */	addi r1, r1, 0x30
/* 8016F8E0 0016C8E0  7C 08 03 A6 */	mtlr r0
/* 8016F8E4 0016C8E4  4E 80 00 20 */	blr 

.global DVDGetCurrentDir
DVDGetCurrentDir:
/* 8016F8E8 0016C8E8  7C 08 02 A6 */	mflr r0
/* 8016F8EC 0016C8EC  90 01 00 04 */	stw r0, 4(r1)
/* 8016F8F0 0016C8F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8016F8F4 0016C8F4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8016F8F8 0016C8F8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8016F8FC 0016C8FC  3B C4 00 00 */	addi r30, r4, 0
/* 8016F900 0016C900  38 BE 00 00 */	addi r5, r30, 0
/* 8016F904 0016C904  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8016F908 0016C908  3B A3 00 00 */	addi r29, r3, 0
/* 8016F90C 0016C90C  38 9D 00 00 */	addi r4, r29, 0
/* 8016F910 0016C910  83 ED 8C 50 */	lwz r31, lbl_80277570-_SDA_BASE_(r13)
/* 8016F914 0016C914  38 7F 00 00 */	addi r3, r31, 0
/* 8016F918 0016C918  4B FF FE 71 */	bl entryToPath
/* 8016F91C 0016C91C  7C 03 F0 40 */	cmplw r3, r30
/* 8016F920 0016C920  40 82 00 14 */	bne lbl_8016F934
/* 8016F924 0016C924  38 00 00 00 */	li r0, 0
/* 8016F928 0016C928  7C 7D F2 14 */	add r3, r29, r30
/* 8016F92C 0016C92C  98 03 FF FF */	stb r0, -1(r3)
/* 8016F930 0016C930  48 00 00 5C */	b lbl_8016F98C
lbl_8016F934:
/* 8016F934 0016C934  1C 1F 00 0C */	mulli r0, r31, 0xc
/* 8016F938 0016C938  80 8D 8C 44 */	lwz r4, lbl_80277564-_SDA_BASE_(r13)
/* 8016F93C 0016C93C  7C 04 00 2E */	lwzx r0, r4, r0
/* 8016F940 0016C940  54 00 00 0F */	rlwinm. r0, r0, 0, 0, 7
/* 8016F944 0016C944  40 82 00 0C */	bne lbl_8016F950
/* 8016F948 0016C948  38 00 00 00 */	li r0, 0
/* 8016F94C 0016C94C  48 00 00 08 */	b lbl_8016F954
lbl_8016F950:
/* 8016F950 0016C950  38 00 00 01 */	li r0, 1
lbl_8016F954:
/* 8016F954 0016C954  2C 00 00 00 */	cmpwi r0, 0
/* 8016F958 0016C958  41 82 00 28 */	beq lbl_8016F980
/* 8016F95C 0016C95C  38 1E FF FF */	addi r0, r30, -1
/* 8016F960 0016C960  7C 03 00 40 */	cmplw r3, r0
/* 8016F964 0016C964  40 82 00 10 */	bne lbl_8016F974
/* 8016F968 0016C968  38 00 00 00 */	li r0, 0
/* 8016F96C 0016C96C  7C 1D 19 AE */	stbx r0, r29, r3
/* 8016F970 0016C970  48 00 00 1C */	b lbl_8016F98C
lbl_8016F974:
/* 8016F974 0016C974  38 00 00 2F */	li r0, 0x2f
/* 8016F978 0016C978  7C 1D 19 AE */	stbx r0, r29, r3
/* 8016F97C 0016C97C  38 63 00 01 */	addi r3, r3, 1
lbl_8016F980:
/* 8016F980 0016C980  38 00 00 00 */	li r0, 0
/* 8016F984 0016C984  7C 1D 19 AE */	stbx r0, r29, r3
/* 8016F988 0016C988  38 00 00 01 */	li r0, 1
lbl_8016F98C:
/* 8016F98C 0016C98C  7C 03 03 78 */	mr r3, r0
/* 8016F990 0016C990  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8016F994 0016C994  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8016F998 0016C998  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8016F99C 0016C99C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8016F9A0 0016C9A0  38 21 00 20 */	addi r1, r1, 0x20
/* 8016F9A4 0016C9A4  7C 08 03 A6 */	mtlr r0
/* 8016F9A8 0016C9A8  4E 80 00 20 */	blr 

.global DVDReadAsyncPrio
DVDReadAsyncPrio:
/* 8016F9AC 0016C9AC  7C 08 02 A6 */	mflr r0
/* 8016F9B0 0016C9B0  90 01 00 04 */	stw r0, 4(r1)
/* 8016F9B4 0016C9B4  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 8016F9B8 0016C9B8  BF 41 00 20 */	stmw r26, 0x20(r1)
/* 8016F9BC 0016C9BC  7C DD 33 79 */	or. r29, r6, r6
/* 8016F9C0 0016C9C0  3B 43 00 00 */	addi r26, r3, 0
/* 8016F9C4 0016C9C4  3B 64 00 00 */	addi r27, r4, 0
/* 8016F9C8 0016C9C8  3B 85 00 00 */	addi r28, r5, 0
/* 8016F9CC 0016C9CC  3B C7 00 00 */	addi r30, r7, 0
/* 8016F9D0 0016C9D0  3B E8 00 00 */	addi r31, r8, 0
/* 8016F9D4 0016C9D4  41 80 00 10 */	blt lbl_8016F9E4
/* 8016F9D8 0016C9D8  80 1A 00 34 */	lwz r0, 0x34(r26)
/* 8016F9DC 0016C9DC  7C 1D 00 40 */	cmplw r29, r0
/* 8016F9E0 0016C9E0  40 81 00 1C */	ble lbl_8016F9FC
lbl_8016F9E4:
/* 8016F9E4 0016C9E4  3C 60 80 21 */	lis r3, lbl_80216278@ha
/* 8016F9E8 0016C9E8  4C C6 31 82 */	crclr 6
/* 8016F9EC 0016C9EC  38 A3 62 78 */	addi r5, r3, lbl_80216278@l
/* 8016F9F0 0016C9F0  38 6D 81 60 */	addi r3, r13, lbl_80276A80-_SDA_BASE_
/* 8016F9F4 0016C9F4  38 80 02 EE */	li r4, 0x2ee
/* 8016F9F8 0016C9F8  4B FF 7F 21 */	bl OSPanic
lbl_8016F9FC:
/* 8016F9FC 0016C9FC  7C 9D E2 15 */	add. r4, r29, r28
/* 8016FA00 0016CA00  41 80 00 14 */	blt lbl_8016FA14
/* 8016FA04 0016CA04  80 7A 00 34 */	lwz r3, 0x34(r26)
/* 8016FA08 0016CA08  38 03 00 20 */	addi r0, r3, 0x20
/* 8016FA0C 0016CA0C  7C 04 00 40 */	cmplw r4, r0
/* 8016FA10 0016CA10  41 80 00 1C */	blt lbl_8016FA2C
lbl_8016FA14:
/* 8016FA14 0016CA14  3C 60 80 21 */	lis r3, lbl_80216278@ha
/* 8016FA18 0016CA18  4C C6 31 82 */	crclr 6
/* 8016FA1C 0016CA1C  38 A3 62 78 */	addi r5, r3, lbl_80216278@l
/* 8016FA20 0016CA20  38 6D 81 60 */	addi r3, r13, lbl_80276A80-_SDA_BASE_
/* 8016FA24 0016CA24  38 80 02 F4 */	li r4, 0x2f4
/* 8016FA28 0016CA28  4B FF 7E F1 */	bl OSPanic
lbl_8016FA2C:
/* 8016FA2C 0016CA2C  93 DA 00 38 */	stw r30, 0x38(r26)
/* 8016FA30 0016CA30  3C 60 80 17 */	lis r3, cbForReadAsync@ha
/* 8016FA34 0016CA34  38 E3 FA 6C */	addi r7, r3, cbForReadAsync@l
/* 8016FA38 0016CA38  80 1A 00 30 */	lwz r0, 0x30(r26)
/* 8016FA3C 0016CA3C  38 7A 00 00 */	addi r3, r26, 0
/* 8016FA40 0016CA40  38 9B 00 00 */	addi r4, r27, 0
/* 8016FA44 0016CA44  38 BC 00 00 */	addi r5, r28, 0
/* 8016FA48 0016CA48  39 1F 00 00 */	addi r8, r31, 0
/* 8016FA4C 0016CA4C  7C C0 EA 14 */	add r6, r0, r29
/* 8016FA50 0016CA50  48 00 1E E5 */	bl DVDReadAbsAsyncPrio
/* 8016FA54 0016CA54  BB 41 00 20 */	lmw r26, 0x20(r1)
/* 8016FA58 0016CA58  38 60 00 01 */	li r3, 1
/* 8016FA5C 0016CA5C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8016FA60 0016CA60  38 21 00 38 */	addi r1, r1, 0x38
/* 8016FA64 0016CA64  7C 08 03 A6 */	mtlr r0
/* 8016FA68 0016CA68  4E 80 00 20 */	blr 

.global cbForReadAsync
cbForReadAsync:
/* 8016FA6C 0016CA6C  7C 08 02 A6 */	mflr r0
/* 8016FA70 0016CA70  90 01 00 04 */	stw r0, 4(r1)
/* 8016FA74 0016CA74  94 21 FF F8 */	stwu r1, -8(r1)
/* 8016FA78 0016CA78  81 84 00 38 */	lwz r12, 0x38(r4)
/* 8016FA7C 0016CA7C  28 0C 00 00 */	cmplwi r12, 0
/* 8016FA80 0016CA80  41 82 00 0C */	beq lbl_8016FA8C
/* 8016FA84 0016CA84  7D 88 03 A6 */	mtlr r12
/* 8016FA88 0016CA88  4E 80 00 21 */	blrl 
lbl_8016FA8C:
/* 8016FA8C 0016CA8C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8016FA90 0016CA90  38 21 00 08 */	addi r1, r1, 8
/* 8016FA94 0016CA94  7C 08 03 A6 */	mtlr r0
/* 8016FA98 0016CA98  4E 80 00 20 */	blr 

.global DVDReadPrio
DVDReadPrio:
/* 8016FA9C 0016CA9C  7C 08 02 A6 */	mflr r0
/* 8016FAA0 0016CAA0  90 01 00 04 */	stw r0, 4(r1)
/* 8016FAA4 0016CAA4  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 8016FAA8 0016CAA8  BF 61 00 24 */	stmw r27, 0x24(r1)
/* 8016FAAC 0016CAAC  7C DD 33 79 */	or. r29, r6, r6
/* 8016FAB0 0016CAB0  3B E3 00 00 */	addi r31, r3, 0
/* 8016FAB4 0016CAB4  3B 64 00 00 */	addi r27, r4, 0
/* 8016FAB8 0016CAB8  3B 85 00 00 */	addi r28, r5, 0
/* 8016FABC 0016CABC  3B C7 00 00 */	addi r30, r7, 0
/* 8016FAC0 0016CAC0  41 80 00 10 */	blt lbl_8016FAD0
/* 8016FAC4 0016CAC4  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 8016FAC8 0016CAC8  7C 1D 00 40 */	cmplw r29, r0
/* 8016FACC 0016CACC  40 81 00 1C */	ble lbl_8016FAE8
lbl_8016FAD0:
/* 8016FAD0 0016CAD0  3C 60 80 21 */	lis r3, lbl_802162AC@ha
/* 8016FAD4 0016CAD4  4C C6 31 82 */	crclr 6
/* 8016FAD8 0016CAD8  38 A3 62 AC */	addi r5, r3, lbl_802162AC@l
/* 8016FADC 0016CADC  38 6D 81 60 */	addi r3, r13, lbl_80276A80-_SDA_BASE_
/* 8016FAE0 0016CAE0  38 80 03 34 */	li r4, 0x334
/* 8016FAE4 0016CAE4  4B FF 7E 35 */	bl OSPanic
lbl_8016FAE8:
/* 8016FAE8 0016CAE8  7C 9D E2 15 */	add. r4, r29, r28
/* 8016FAEC 0016CAEC  41 80 00 14 */	blt lbl_8016FB00
/* 8016FAF0 0016CAF0  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 8016FAF4 0016CAF4  38 03 00 20 */	addi r0, r3, 0x20
/* 8016FAF8 0016CAF8  7C 04 00 40 */	cmplw r4, r0
/* 8016FAFC 0016CAFC  41 80 00 1C */	blt lbl_8016FB18
lbl_8016FB00:
/* 8016FB00 0016CB00  3C 60 80 21 */	lis r3, lbl_802162AC@ha
/* 8016FB04 0016CB04  4C C6 31 82 */	crclr 6
/* 8016FB08 0016CB08  38 A3 62 AC */	addi r5, r3, lbl_802162AC@l
/* 8016FB0C 0016CB0C  38 6D 81 60 */	addi r3, r13, lbl_80276A80-_SDA_BASE_
/* 8016FB10 0016CB10  38 80 03 3A */	li r4, 0x33a
/* 8016FB14 0016CB14  4B FF 7E 05 */	bl OSPanic
lbl_8016FB18:
/* 8016FB18 0016CB18  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8016FB1C 0016CB1C  3C 80 80 17 */	lis r4, cbForReadSync@ha
/* 8016FB20 0016CB20  38 E4 FB B4 */	addi r7, r4, cbForReadSync@l
/* 8016FB24 0016CB24  38 7F 00 00 */	addi r3, r31, 0
/* 8016FB28 0016CB28  38 9B 00 00 */	addi r4, r27, 0
/* 8016FB2C 0016CB2C  38 BC 00 00 */	addi r5, r28, 0
/* 8016FB30 0016CB30  39 1E 00 00 */	addi r8, r30, 0
/* 8016FB34 0016CB34  7C C0 EA 14 */	add r6, r0, r29
/* 8016FB38 0016CB38  48 00 1D FD */	bl DVDReadAbsAsyncPrio
/* 8016FB3C 0016CB3C  2C 03 00 00 */	cmpwi r3, 0
/* 8016FB40 0016CB40  40 82 00 0C */	bne lbl_8016FB4C
/* 8016FB44 0016CB44  38 60 FF FF */	li r3, -1
/* 8016FB48 0016CB48  48 00 00 58 */	b lbl_8016FBA0
lbl_8016FB4C:
/* 8016FB4C 0016CB4C  4B FF A0 0D */	bl OSDisableInterrupts
/* 8016FB50 0016CB50  7C 7E 1B 78 */	mr r30, r3
lbl_8016FB54:
/* 8016FB54 0016CB54  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8016FB58 0016CB58  2C 00 00 00 */	cmpwi r0, 0
/* 8016FB5C 0016CB5C  40 82 00 0C */	bne lbl_8016FB68
/* 8016FB60 0016CB60  83 FF 00 20 */	lwz r31, 0x20(r31)
/* 8016FB64 0016CB64  48 00 00 30 */	b lbl_8016FB94
lbl_8016FB68:
/* 8016FB68 0016CB68  2C 00 FF FF */	cmpwi r0, -1
/* 8016FB6C 0016CB6C  40 82 00 0C */	bne lbl_8016FB78
/* 8016FB70 0016CB70  3B E0 FF FF */	li r31, -1
/* 8016FB74 0016CB74  48 00 00 20 */	b lbl_8016FB94
lbl_8016FB78:
/* 8016FB78 0016CB78  2C 00 00 0A */	cmpwi r0, 0xa
/* 8016FB7C 0016CB7C  40 82 00 0C */	bne lbl_8016FB88
/* 8016FB80 0016CB80  3B E0 FF FD */	li r31, -3
/* 8016FB84 0016CB84  48 00 00 10 */	b lbl_8016FB94
lbl_8016FB88:
/* 8016FB88 0016CB88  38 6D 8C 58 */	addi r3, r13, lbl_80277578-_SDA_BASE_
/* 8016FB8C 0016CB8C  4B FF D2 39 */	bl OSSleepThread
/* 8016FB90 0016CB90  4B FF FF C4 */	b lbl_8016FB54
lbl_8016FB94:
/* 8016FB94 0016CB94  7F C3 F3 78 */	mr r3, r30
/* 8016FB98 0016CB98  4B FF 9F E9 */	bl OSRestoreInterrupts
/* 8016FB9C 0016CB9C  7F E3 FB 78 */	mr r3, r31
lbl_8016FBA0:
/* 8016FBA0 0016CBA0  BB 61 00 24 */	lmw r27, 0x24(r1)
/* 8016FBA4 0016CBA4  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8016FBA8 0016CBA8  38 21 00 38 */	addi r1, r1, 0x38
/* 8016FBAC 0016CBAC  7C 08 03 A6 */	mtlr r0
/* 8016FBB0 0016CBB0  4E 80 00 20 */	blr 

.global cbForReadSync
cbForReadSync:
/* 8016FBB4 0016CBB4  7C 08 02 A6 */	mflr r0
/* 8016FBB8 0016CBB8  38 6D 8C 58 */	addi r3, r13, lbl_80277578-_SDA_BASE_
/* 8016FBBC 0016CBBC  90 01 00 04 */	stw r0, 4(r1)
/* 8016FBC0 0016CBC0  94 21 FF F8 */	stwu r1, -8(r1)
/* 8016FBC4 0016CBC4  4B FF D2 ED */	bl OSWakeupThread
/* 8016FBC8 0016CBC8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8016FBCC 0016CBCC  38 21 00 08 */	addi r1, r1, 8
/* 8016FBD0 0016CBD0  7C 08 03 A6 */	mtlr r0
/* 8016FBD4 0016CBD4  4E 80 00 20 */	blr 

.global DVDPrepareStreamAsync
DVDPrepareStreamAsync:
/* 8016FBD8 0016CBD8  7C 08 02 A6 */	mflr r0
/* 8016FBDC 0016CBDC  90 01 00 04 */	stw r0, 4(r1)
/* 8016FBE0 0016CBE0  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 8016FBE4 0016CBE4  BF 61 00 24 */	stmw r27, 0x24(r1)
/* 8016FBE8 0016CBE8  3B A5 00 00 */	addi r29, r5, 0
/* 8016FBEC 0016CBEC  7C 7B 1B 78 */	mr r27, r3
/* 8016FBF0 0016CBF0  3B 84 00 00 */	addi r28, r4, 0
/* 8016FBF4 0016CBF4  3B C6 00 00 */	addi r30, r6, 0
/* 8016FBF8 0016CBF8  80 E3 00 30 */	lwz r7, 0x30(r3)
/* 8016FBFC 0016CBFC  3C 60 80 21 */	lis r3, lbl_80216178@ha
/* 8016FC00 0016CC00  3B E3 61 78 */	addi r31, r3, lbl_80216178@l
/* 8016FC04 0016CC04  7C 07 EA 14 */	add r0, r7, r29
/* 8016FC08 0016CC08  54 00 04 7F */	clrlwi. r0, r0, 0x11
/* 8016FC0C 0016CC0C  41 82 00 20 */	beq lbl_8016FC2C
/* 8016FC10 0016CC10  38 C7 00 00 */	addi r6, r7, 0
/* 8016FC14 0016CC14  4C C6 31 82 */	crclr 6
/* 8016FC18 0016CC18  38 FD 00 00 */	addi r7, r29, 0
/* 8016FC1C 0016CC1C  38 BF 01 C8 */	addi r5, r31, 0x1c8
/* 8016FC20 0016CC20  38 6D 81 60 */	addi r3, r13, lbl_80276A80-_SDA_BASE_
/* 8016FC24 0016CC24  38 80 04 BB */	li r4, 0x4bb
/* 8016FC28 0016CC28  4B FF 7C F1 */	bl OSPanic
lbl_8016FC2C:
/* 8016FC2C 0016CC2C  28 1C 00 00 */	cmplwi r28, 0
/* 8016FC30 0016CC30  40 82 00 0C */	bne lbl_8016FC3C
/* 8016FC34 0016CC34  80 1B 00 34 */	lwz r0, 0x34(r27)
/* 8016FC38 0016CC38  7F 9D 00 50 */	subf r28, r29, r0
lbl_8016FC3C:
/* 8016FC3C 0016CC3C  57 80 04 7F */	clrlwi. r0, r28, 0x11
/* 8016FC40 0016CC40  41 82 00 1C */	beq lbl_8016FC5C
/* 8016FC44 0016CC44  38 DC 00 00 */	addi r6, r28, 0
/* 8016FC48 0016CC48  4C C6 31 82 */	crclr 6
/* 8016FC4C 0016CC4C  38 BF 02 30 */	addi r5, r31, 0x230
/* 8016FC50 0016CC50  38 6D 81 60 */	addi r3, r13, lbl_80276A80-_SDA_BASE_
/* 8016FC54 0016CC54  38 80 04 C5 */	li r4, 0x4c5
/* 8016FC58 0016CC58  4B FF 7C C1 */	bl OSPanic
lbl_8016FC5C:
/* 8016FC5C 0016CC5C  80 7B 00 34 */	lwz r3, 0x34(r27)
/* 8016FC60 0016CC60  7C 1D 18 40 */	cmplw r29, r3
/* 8016FC64 0016CC64  41 81 00 10 */	bgt lbl_8016FC74
/* 8016FC68 0016CC68  7C 1D E2 14 */	add r0, r29, r28
/* 8016FC6C 0016CC6C  7C 00 18 40 */	cmplw r0, r3
/* 8016FC70 0016CC70  40 81 00 20 */	ble lbl_8016FC90
lbl_8016FC74:
/* 8016FC74 0016CC74  38 DD 00 00 */	addi r6, r29, 0
/* 8016FC78 0016CC78  4C C6 31 82 */	crclr 6
/* 8016FC7C 0016CC7C  38 FC 00 00 */	addi r7, r28, 0
/* 8016FC80 0016CC80  38 BF 02 88 */	addi r5, r31, 0x288
/* 8016FC84 0016CC84  38 6D 81 60 */	addi r3, r13, lbl_80276A80-_SDA_BASE_
/* 8016FC88 0016CC88  38 80 04 CD */	li r4, 0x4cd
/* 8016FC8C 0016CC8C  4B FF 7C 8D */	bl OSPanic
lbl_8016FC90:
/* 8016FC90 0016CC90  93 DB 00 38 */	stw r30, 0x38(r27)
/* 8016FC94 0016CC94  3C 60 80 17 */	lis r3, cbForPrepareStreamAsync@ha
/* 8016FC98 0016CC98  38 C3 FC C4 */	addi r6, r3, cbForPrepareStreamAsync@l
/* 8016FC9C 0016CC9C  80 1B 00 30 */	lwz r0, 0x30(r27)
/* 8016FCA0 0016CCA0  38 7B 00 00 */	addi r3, r27, 0
/* 8016FCA4 0016CCA4  38 9C 00 00 */	addi r4, r28, 0
/* 8016FCA8 0016CCA8  7C A0 EA 14 */	add r5, r0, r29
/* 8016FCAC 0016CCAC  48 00 1F 09 */	bl DVDPrepareStreamAbsAsync
/* 8016FCB0 0016CCB0  BB 61 00 24 */	lmw r27, 0x24(r1)
/* 8016FCB4 0016CCB4  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8016FCB8 0016CCB8  38 21 00 38 */	addi r1, r1, 0x38
/* 8016FCBC 0016CCBC  7C 08 03 A6 */	mtlr r0
/* 8016FCC0 0016CCC0  4E 80 00 20 */	blr 

.global cbForPrepareStreamAsync
cbForPrepareStreamAsync:
/* 8016FCC4 0016CCC4  7C 08 02 A6 */	mflr r0
/* 8016FCC8 0016CCC8  90 01 00 04 */	stw r0, 4(r1)
/* 8016FCCC 0016CCCC  94 21 FF F8 */	stwu r1, -8(r1)
/* 8016FCD0 0016CCD0  81 84 00 38 */	lwz r12, 0x38(r4)
/* 8016FCD4 0016CCD4  28 0C 00 00 */	cmplwi r12, 0
/* 8016FCD8 0016CCD8  41 82 00 0C */	beq lbl_8016FCE4
/* 8016FCDC 0016CCDC  7D 88 03 A6 */	mtlr r12
/* 8016FCE0 0016CCE0  4E 80 00 21 */	blrl 
lbl_8016FCE4:
/* 8016FCE4 0016CCE4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8016FCE8 0016CCE8  38 21 00 08 */	addi r1, r1, 8
/* 8016FCEC 0016CCEC  7C 08 03 A6 */	mtlr r0
/* 8016FCF0 0016CCF0  4E 80 00 20 */	blr 
