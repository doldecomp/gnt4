.include "macros.inc"

.section .text  # 0x8017E1F8 - 0x8017E9DC

.global FormatCallback
FormatCallback:
/* 8017E1F8 0017B1F8  7C 08 02 A6 */	mflr r0
/* 8017E1FC 0017B1FC  90 01 00 04 */	stw r0, 4(r1)
/* 8017E200 0017B200  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8017E204 0017B204  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8017E208 0017B208  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8017E20C 0017B20C  3B C3 00 00 */	addi r30, r3, 0
/* 8017E210 0017B210  3C 60 80 24 */	lis r3, lbl_80245540@ha
/* 8017E214 0017B214  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8017E218 0017B218  1C BE 01 10 */	mulli r5, r30, 0x110
/* 8017E21C 0017B21C  93 81 00 10 */	stw r28, 0x10(r1)
/* 8017E220 0017B220  38 03 55 40 */	addi r0, r3, lbl_80245540@l
/* 8017E224 0017B224  7C 9C 23 79 */	or. r28, r4, r4
/* 8017E228 0017B228  7F E0 2A 14 */	add r31, r0, r5
/* 8017E22C 0017B22C  41 80 00 C4 */	blt lbl_8017E2F0
/* 8017E230 0017B230  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 8017E234 0017B234  38 03 00 01 */	addi r0, r3, 1
/* 8017E238 0017B238  90 1F 00 28 */	stw r0, 0x28(r31)
/* 8017E23C 0017B23C  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 8017E240 0017B240  2C 04 00 05 */	cmpwi r4, 5
/* 8017E244 0017B244  40 80 00 28 */	bge lbl_8017E26C
/* 8017E248 0017B248  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8017E24C 0017B24C  3C 60 80 18 */	lis r3, FormatCallback@ha
/* 8017E250 0017B250  38 A3 E1 F8 */	addi r5, r3, FormatCallback@l
/* 8017E254 0017B254  7C 80 21 D6 */	mullw r4, r0, r4
/* 8017E258 0017B258  38 7E 00 00 */	addi r3, r30, 0
/* 8017E25C 0017B25C  4B FF C4 E5 */	bl __CARDEraseSector
/* 8017E260 0017B260  7C 7C 1B 79 */	or. r28, r3, r3
/* 8017E264 0017B264  41 80 00 8C */	blt lbl_8017E2F0
/* 8017E268 0017B268  48 00 00 B4 */	b lbl_8017E31C
lbl_8017E26C:
/* 8017E26C 0017B26C  2C 04 00 0A */	cmpwi r4, 0xa
/* 8017E270 0017B270  40 80 00 3C */	bge lbl_8017E2AC
/* 8017E274 0017B274  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8017E278 0017B278  38 C4 FF FB */	addi r6, r4, -5
/* 8017E27C 0017B27C  3C 60 80 18 */	lis r3, FormatCallback@ha
/* 8017E280 0017B280  80 BF 00 80 */	lwz r5, 0x80(r31)
/* 8017E284 0017B284  7C 80 31 D6 */	mullw r4, r0, r6
/* 8017E288 0017B288  54 C0 68 24 */	slwi r0, r6, 0xd
/* 8017E28C 0017B28C  38 E3 E1 F8 */	addi r7, r3, FormatCallback@l
/* 8017E290 0017B290  7C C5 02 14 */	add r6, r5, r0
/* 8017E294 0017B294  38 7E 00 00 */	addi r3, r30, 0
/* 8017E298 0017B298  38 A0 20 00 */	li r5, 0x2000
/* 8017E29C 0017B29C  4B FF DF C1 */	bl __CARDWrite
/* 8017E2A0 0017B2A0  7C 7C 1B 79 */	or. r28, r3, r3
/* 8017E2A4 0017B2A4  41 80 00 4C */	blt lbl_8017E2F0
/* 8017E2A8 0017B2A8  48 00 00 74 */	b lbl_8017E31C
lbl_8017E2AC:
/* 8017E2AC 0017B2AC  80 7F 00 80 */	lwz r3, 0x80(r31)
/* 8017E2B0 0017B2B0  38 A0 20 00 */	li r5, 0x2000
/* 8017E2B4 0017B2B4  38 03 20 00 */	addi r0, r3, 0x2000
/* 8017E2B8 0017B2B8  90 1F 00 84 */	stw r0, 0x84(r31)
/* 8017E2BC 0017B2BC  80 9F 00 80 */	lwz r4, 0x80(r31)
/* 8017E2C0 0017B2C0  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 8017E2C4 0017B2C4  38 84 40 00 */	addi r4, r4, 0x4000
/* 8017E2C8 0017B2C8  4B E8 73 05 */	bl memcpy
/* 8017E2CC 0017B2CC  80 7F 00 80 */	lwz r3, 0x80(r31)
/* 8017E2D0 0017B2D0  38 A0 20 00 */	li r5, 0x2000
/* 8017E2D4 0017B2D4  38 03 60 00 */	addi r0, r3, 0x6000
/* 8017E2D8 0017B2D8  90 1F 00 88 */	stw r0, 0x88(r31)
/* 8017E2DC 0017B2DC  80 9F 00 80 */	lwz r4, 0x80(r31)
/* 8017E2E0 0017B2E0  80 7F 00 88 */	lwz r3, 0x88(r31)
/* 8017E2E4 0017B2E4  3C 84 00 01 */	addis r4, r4, 1
/* 8017E2E8 0017B2E8  38 84 80 00 */	addi r4, r4, -32768
/* 8017E2EC 0017B2EC  4B E8 72 E1 */	bl memcpy
lbl_8017E2F0:
/* 8017E2F0 0017B2F0  83 BF 00 D0 */	lwz r29, 0xd0(r31)
/* 8017E2F4 0017B2F4  38 00 00 00 */	li r0, 0
/* 8017E2F8 0017B2F8  38 7F 00 00 */	addi r3, r31, 0
/* 8017E2FC 0017B2FC  90 1F 00 D0 */	stw r0, 0xd0(r31)
/* 8017E300 0017B300  7F 84 E3 78 */	mr r4, r28
/* 8017E304 0017B304  4B FF C6 F1 */	bl __CARDPutControlBlock
/* 8017E308 0017B308  39 9D 00 00 */	addi r12, r29, 0
/* 8017E30C 0017B30C  7D 88 03 A6 */	mtlr r12
/* 8017E310 0017B310  38 7E 00 00 */	addi r3, r30, 0
/* 8017E314 0017B314  38 9C 00 00 */	addi r4, r28, 0
/* 8017E318 0017B318  4E 80 00 21 */	blrl 
lbl_8017E31C:
/* 8017E31C 0017B31C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8017E320 0017B320  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8017E324 0017B324  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8017E328 0017B328  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8017E32C 0017B32C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8017E330 0017B330  38 21 00 20 */	addi r1, r1, 0x20
/* 8017E334 0017B334  7C 08 03 A6 */	mtlr r0
/* 8017E338 0017B338  4E 80 00 20 */	blr 

.global __CARDFormatRegionAsync
__CARDFormatRegionAsync:
/* 8017E33C 0017B33C  7C 08 02 A6 */	mflr r0
/* 8017E340 0017B340  90 01 00 04 */	stw r0, 4(r1)
/* 8017E344 0017B344  94 21 FF A8 */	stwu r1, -0x58(r1)
/* 8017E348 0017B348  BE 41 00 20 */	stmw r18, 0x20(r1)
/* 8017E34C 0017B34C  3A 84 00 00 */	addi r20, r4, 0
/* 8017E350 0017B350  3A C3 00 00 */	addi r22, r3, 0
/* 8017E354 0017B354  3A 65 00 00 */	addi r19, r5, 0
/* 8017E358 0017B358  38 81 00 18 */	addi r4, r1, 0x18
/* 8017E35C 0017B35C  4B FF C5 E1 */	bl __CARDGetControlBlock
/* 8017E360 0017B360  2C 03 00 00 */	cmpwi r3, 0
/* 8017E364 0017B364  40 80 00 08 */	bge lbl_8017E36C
/* 8017E368 0017B368  48 00 06 18 */	b lbl_8017E980
lbl_8017E36C:
/* 8017E36C 0017B36C  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8017E370 0017B370  38 80 00 FF */	li r4, 0xff
/* 8017E374 0017B374  38 A0 20 00 */	li r5, 0x2000
/* 8017E378 0017B378  83 63 00 80 */	lwz r27, 0x80(r3)
/* 8017E37C 0017B37C  7F 63 DB 78 */	mr r3, r27
/* 8017E380 0017B380  4B E8 71 65 */	bl memset
/* 8017E384 0017B384  3C 60 CC 00 */	lis r3, 0xCC00206E@ha
/* 8017E388 0017B388  A2 43 20 6E */	lhz r18, 0xCC00206E@l(r3)
/* 8017E38C 0017B38C  B2 9B 00 24 */	sth r20, 0x24(r27)
/* 8017E390 0017B390  4B FE CF 09 */	bl __OSLockSram
/* 8017E394 0017B394  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8017E398 0017B398  90 1B 00 14 */	stw r0, 0x14(r27)
/* 8017E39C 0017B39C  88 03 00 12 */	lbz r0, 0x12(r3)
/* 8017E3A0 0017B3A0  38 60 00 00 */	li r3, 0
/* 8017E3A4 0017B3A4  90 1B 00 18 */	stw r0, 0x18(r27)
/* 8017E3A8 0017B3A8  4B FE D2 E5 */	bl __OSUnlockSram
/* 8017E3AC 0017B3AC  4B FE EC B5 */	bl OSGetTime
/* 8017E3B0 0017B3B0  3A A4 00 00 */	addi r21, r4, 0
/* 8017E3B4 0017B3B4  3A 83 00 00 */	addi r20, r3, 0
/* 8017E3B8 0017B3B8  3B 55 00 00 */	addi r26, r21, 0
/* 8017E3BC 0017B3BC  3B D4 00 00 */	addi r30, r20, 0
/* 8017E3C0 0017B3C0  4B FE CF 35 */	bl __OSLockSramEx
/* 8017E3C4 0017B3C4  1C 16 00 0C */	mulli r0, r22, 0xc
/* 8017E3C8 0017B3C8  7F 23 02 14 */	add r25, r3, r0
/* 8017E3CC 0017B3CC  3C 60 41 C6 */	lis r3, 0x41C64E6D@ha
/* 8017E3D0 0017B3D0  3B 19 00 00 */	addi r24, r25, 0
/* 8017E3D4 0017B3D4  3B E3 4E 6D */	addi r31, r3, 0x41C64E6D@l
/* 8017E3D8 0017B3D8  3B 80 00 00 */	li r28, 0
/* 8017E3DC 0017B3DC  3A E0 00 04 */	li r23, 4
/* 8017E3E0 0017B3E0  48 00 03 74 */	b lbl_8017E754
lbl_8017E3E4:
/* 8017E3E4 0017B3E4  7C BE F9 D6 */	mullw r5, r30, r31
/* 8017E3E8 0017B3E8  7C 7A F8 16 */	mulhwu r3, r26, r31
/* 8017E3EC 0017B3EC  3B C0 00 00 */	li r30, 0
/* 8017E3F0 0017B3F0  7C A5 1A 14 */	add r5, r5, r3
/* 8017E3F4 0017B3F4  7C 7A F1 D6 */	mullw r3, r26, r30
/* 8017E3F8 0017B3F8  7C 1A F9 D6 */	mullw r0, r26, r31
/* 8017E3FC 0017B3FC  3B A0 30 39 */	li r29, 0x3039
/* 8017E400 0017B400  7C 80 E8 14 */	addc r4, r0, r29
/* 8017E404 0017B404  7C 05 1A 14 */	add r0, r5, r3
/* 8017E408 0017B408  7C 60 F1 14 */	adde r3, r0, r30
/* 8017E40C 0017B40C  38 A0 00 10 */	li r5, 0x10
/* 8017E410 0017B410  48 01 03 2D */	bl __shr2i
/* 8017E414 0017B414  7C C3 F9 D6 */	mullw r6, r3, r31
/* 8017E418 0017B418  88 18 00 00 */	lbz r0, 0(r24)
/* 8017E41C 0017B41C  7C A4 F8 16 */	mulhwu r5, r4, r31
/* 8017E420 0017B420  7C C6 2A 14 */	add r6, r6, r5
/* 8017E424 0017B424  7D 04 00 14 */	addc r8, r4, r0
/* 8017E428 0017B428  7F 87 07 34 */	extsh r7, r28
/* 8017E42C 0017B42C  7C A4 F1 D6 */	mullw r5, r4, r30
/* 8017E430 0017B430  7D 1B 39 AE */	stbx r8, r27, r7
/* 8017E434 0017B434  7C 04 F9 D6 */	mullw r0, r4, r31
/* 8017E438 0017B438  7C 80 E8 14 */	addc r4, r0, r29
/* 8017E43C 0017B43C  7C 06 2A 14 */	add r0, r6, r5
/* 8017E440 0017B440  7C 60 F1 14 */	adde r3, r0, r30
/* 8017E444 0017B444  38 A0 00 10 */	li r5, 0x10
/* 8017E448 0017B448  48 01 02 F5 */	bl __shr2i
/* 8017E44C 0017B44C  3B 40 7F FF */	li r26, 0x7fff
/* 8017E450 0017B450  7C 60 F0 38 */	and r0, r3, r30
/* 8017E454 0017B454  7C 84 D0 38 */	and r4, r4, r26
/* 8017E458 0017B458  7C A0 F9 D6 */	mullw r5, r0, r31
/* 8017E45C 0017B45C  7C 64 F8 16 */	mulhwu r3, r4, r31
/* 8017E460 0017B460  7C A5 1A 14 */	add r5, r5, r3
/* 8017E464 0017B464  7C 64 F1 D6 */	mullw r3, r4, r30
/* 8017E468 0017B468  7C 04 F9 D6 */	mullw r0, r4, r31
/* 8017E46C 0017B46C  7C 80 E8 14 */	addc r4, r0, r29
/* 8017E470 0017B470  7C 05 1A 14 */	add r0, r5, r3
/* 8017E474 0017B474  7C 60 F1 14 */	adde r3, r0, r30
/* 8017E478 0017B478  38 A0 00 10 */	li r5, 0x10
/* 8017E47C 0017B47C  48 01 02 C1 */	bl __shr2i
/* 8017E480 0017B480  7C C3 F9 D6 */	mullw r6, r3, r31
/* 8017E484 0017B484  7C A4 F8 16 */	mulhwu r5, r4, r31
/* 8017E488 0017B488  39 3C 00 01 */	addi r9, r28, 1
/* 8017E48C 0017B48C  7D 29 07 34 */	extsh r9, r9
/* 8017E490 0017B490  7C 19 48 AE */	lbzx r0, r25, r9
/* 8017E494 0017B494  7C C6 2A 14 */	add r6, r6, r5
/* 8017E498 0017B498  7C A4 F1 D6 */	mullw r5, r4, r30
/* 8017E49C 0017B49C  7C E4 00 14 */	addc r7, r4, r0
/* 8017E4A0 0017B4A0  7C 04 F9 D6 */	mullw r0, r4, r31
/* 8017E4A4 0017B4A4  7C FB 49 AE */	stbx r7, r27, r9
/* 8017E4A8 0017B4A8  7C 80 E8 14 */	addc r4, r0, r29
/* 8017E4AC 0017B4AC  7C 06 2A 14 */	add r0, r6, r5
/* 8017E4B0 0017B4B0  7C 60 F1 14 */	adde r3, r0, r30
/* 8017E4B4 0017B4B4  38 A0 00 10 */	li r5, 0x10
/* 8017E4B8 0017B4B8  48 01 02 85 */	bl __shr2i
/* 8017E4BC 0017B4BC  7C 60 F0 38 */	and r0, r3, r30
/* 8017E4C0 0017B4C0  7C 84 D0 38 */	and r4, r4, r26
/* 8017E4C4 0017B4C4  7C A0 F9 D6 */	mullw r5, r0, r31
/* 8017E4C8 0017B4C8  7C 64 F8 16 */	mulhwu r3, r4, r31
/* 8017E4CC 0017B4CC  7C A5 1A 14 */	add r5, r5, r3
/* 8017E4D0 0017B4D0  7C 64 F1 D6 */	mullw r3, r4, r30
/* 8017E4D4 0017B4D4  7C 04 F9 D6 */	mullw r0, r4, r31
/* 8017E4D8 0017B4D8  7C 80 E8 14 */	addc r4, r0, r29
/* 8017E4DC 0017B4DC  7C 05 1A 14 */	add r0, r5, r3
/* 8017E4E0 0017B4E0  7C 60 F1 14 */	adde r3, r0, r30
/* 8017E4E4 0017B4E4  38 A0 00 10 */	li r5, 0x10
/* 8017E4E8 0017B4E8  48 01 02 55 */	bl __shr2i
/* 8017E4EC 0017B4EC  7C C3 F9 D6 */	mullw r6, r3, r31
/* 8017E4F0 0017B4F0  7C A4 F8 16 */	mulhwu r5, r4, r31
/* 8017E4F4 0017B4F4  39 3C 00 02 */	addi r9, r28, 2
/* 8017E4F8 0017B4F8  7D 29 07 34 */	extsh r9, r9
/* 8017E4FC 0017B4FC  7C 19 48 AE */	lbzx r0, r25, r9
/* 8017E500 0017B500  7C C6 2A 14 */	add r6, r6, r5
/* 8017E504 0017B504  7C A4 F1 D6 */	mullw r5, r4, r30
/* 8017E508 0017B508  7C E4 00 14 */	addc r7, r4, r0
/* 8017E50C 0017B50C  7C 04 F9 D6 */	mullw r0, r4, r31
/* 8017E510 0017B510  7C FB 49 AE */	stbx r7, r27, r9
/* 8017E514 0017B514  7C 80 E8 14 */	addc r4, r0, r29
/* 8017E518 0017B518  7C 06 2A 14 */	add r0, r6, r5
/* 8017E51C 0017B51C  7C 60 F1 14 */	adde r3, r0, r30
/* 8017E520 0017B520  38 A0 00 10 */	li r5, 0x10
/* 8017E524 0017B524  48 01 02 19 */	bl __shr2i
/* 8017E528 0017B528  7C 60 F0 38 */	and r0, r3, r30
/* 8017E52C 0017B52C  7C 84 D0 38 */	and r4, r4, r26
/* 8017E530 0017B530  7C A0 F9 D6 */	mullw r5, r0, r31
/* 8017E534 0017B534  7C 64 F8 16 */	mulhwu r3, r4, r31
/* 8017E538 0017B538  7C A5 1A 14 */	add r5, r5, r3
/* 8017E53C 0017B53C  7C 64 F1 D6 */	mullw r3, r4, r30
/* 8017E540 0017B540  7C 04 F9 D6 */	mullw r0, r4, r31
/* 8017E544 0017B544  7C 80 E8 14 */	addc r4, r0, r29
/* 8017E548 0017B548  7C 05 1A 14 */	add r0, r5, r3
/* 8017E54C 0017B54C  7C 60 F1 14 */	adde r3, r0, r30
/* 8017E550 0017B550  38 A0 00 10 */	li r5, 0x10
/* 8017E554 0017B554  48 01 01 E9 */	bl __shr2i
/* 8017E558 0017B558  7C C3 F9 D6 */	mullw r6, r3, r31
/* 8017E55C 0017B55C  7C A4 F8 16 */	mulhwu r5, r4, r31
/* 8017E560 0017B560  39 3C 00 03 */	addi r9, r28, 3
/* 8017E564 0017B564  7D 29 07 34 */	extsh r9, r9
/* 8017E568 0017B568  7C 19 48 AE */	lbzx r0, r25, r9
/* 8017E56C 0017B56C  7C C6 2A 14 */	add r6, r6, r5
/* 8017E570 0017B570  7C A4 F1 D6 */	mullw r5, r4, r30
/* 8017E574 0017B574  7C E4 00 14 */	addc r7, r4, r0
/* 8017E578 0017B578  7C 04 F9 D6 */	mullw r0, r4, r31
/* 8017E57C 0017B57C  7C FB 49 AE */	stbx r7, r27, r9
/* 8017E580 0017B580  7C 80 E8 14 */	addc r4, r0, r29
/* 8017E584 0017B584  7C 06 2A 14 */	add r0, r6, r5
/* 8017E588 0017B588  7C 60 F1 14 */	adde r3, r0, r30
/* 8017E58C 0017B58C  38 A0 00 10 */	li r5, 0x10
/* 8017E590 0017B590  48 01 01 AD */	bl __shr2i
/* 8017E594 0017B594  7C 60 F0 38 */	and r0, r3, r30
/* 8017E598 0017B598  7C 84 D0 38 */	and r4, r4, r26
/* 8017E59C 0017B59C  7C A0 F9 D6 */	mullw r5, r0, r31
/* 8017E5A0 0017B5A0  7C 64 F8 16 */	mulhwu r3, r4, r31
/* 8017E5A4 0017B5A4  7C A5 1A 14 */	add r5, r5, r3
/* 8017E5A8 0017B5A8  7C 64 F1 D6 */	mullw r3, r4, r30
/* 8017E5AC 0017B5AC  7C 04 F9 D6 */	mullw r0, r4, r31
/* 8017E5B0 0017B5B0  7C 80 E8 14 */	addc r4, r0, r29
/* 8017E5B4 0017B5B4  7C 05 1A 14 */	add r0, r5, r3
/* 8017E5B8 0017B5B8  7C 60 F1 14 */	adde r3, r0, r30
/* 8017E5BC 0017B5BC  38 A0 00 10 */	li r5, 0x10
/* 8017E5C0 0017B5C0  48 01 01 7D */	bl __shr2i
/* 8017E5C4 0017B5C4  7C C3 F9 D6 */	mullw r6, r3, r31
/* 8017E5C8 0017B5C8  7C A4 F8 16 */	mulhwu r5, r4, r31
/* 8017E5CC 0017B5CC  39 3C 00 04 */	addi r9, r28, 4
/* 8017E5D0 0017B5D0  7D 29 07 34 */	extsh r9, r9
/* 8017E5D4 0017B5D4  7C 19 48 AE */	lbzx r0, r25, r9
/* 8017E5D8 0017B5D8  7C C6 2A 14 */	add r6, r6, r5
/* 8017E5DC 0017B5DC  7C A4 F1 D6 */	mullw r5, r4, r30
/* 8017E5E0 0017B5E0  7C E4 00 14 */	addc r7, r4, r0
/* 8017E5E4 0017B5E4  7C 04 F9 D6 */	mullw r0, r4, r31
/* 8017E5E8 0017B5E8  7C FB 49 AE */	stbx r7, r27, r9
/* 8017E5EC 0017B5EC  7C 80 E8 14 */	addc r4, r0, r29
/* 8017E5F0 0017B5F0  7C 06 2A 14 */	add r0, r6, r5
/* 8017E5F4 0017B5F4  7C 60 F1 14 */	adde r3, r0, r30
/* 8017E5F8 0017B5F8  38 A0 00 10 */	li r5, 0x10
/* 8017E5FC 0017B5FC  48 01 01 41 */	bl __shr2i
/* 8017E600 0017B600  7C 60 F0 38 */	and r0, r3, r30
/* 8017E604 0017B604  7C 84 D0 38 */	and r4, r4, r26
/* 8017E608 0017B608  7C A0 F9 D6 */	mullw r5, r0, r31
/* 8017E60C 0017B60C  7C 64 F8 16 */	mulhwu r3, r4, r31
/* 8017E610 0017B610  7C A5 1A 14 */	add r5, r5, r3
/* 8017E614 0017B614  7C 64 F1 D6 */	mullw r3, r4, r30
/* 8017E618 0017B618  7C 04 F9 D6 */	mullw r0, r4, r31
/* 8017E61C 0017B61C  7C 80 E8 14 */	addc r4, r0, r29
/* 8017E620 0017B620  7C 05 1A 14 */	add r0, r5, r3
/* 8017E624 0017B624  7C 60 F1 14 */	adde r3, r0, r30
/* 8017E628 0017B628  38 A0 00 10 */	li r5, 0x10
/* 8017E62C 0017B62C  48 01 01 11 */	bl __shr2i
/* 8017E630 0017B630  7C C3 F9 D6 */	mullw r6, r3, r31
/* 8017E634 0017B634  7C A4 F8 16 */	mulhwu r5, r4, r31
/* 8017E638 0017B638  39 3C 00 05 */	addi r9, r28, 5
/* 8017E63C 0017B63C  7D 29 07 34 */	extsh r9, r9
/* 8017E640 0017B640  7C 19 48 AE */	lbzx r0, r25, r9
/* 8017E644 0017B644  7C C6 2A 14 */	add r6, r6, r5
/* 8017E648 0017B648  7C A4 F1 D6 */	mullw r5, r4, r30
/* 8017E64C 0017B64C  7C E4 00 14 */	addc r7, r4, r0
/* 8017E650 0017B650  7C 04 F9 D6 */	mullw r0, r4, r31
/* 8017E654 0017B654  7C FB 49 AE */	stbx r7, r27, r9
/* 8017E658 0017B658  7C 80 E8 14 */	addc r4, r0, r29
/* 8017E65C 0017B65C  7C 06 2A 14 */	add r0, r6, r5
/* 8017E660 0017B660  7C 60 F1 14 */	adde r3, r0, r30
/* 8017E664 0017B664  38 A0 00 10 */	li r5, 0x10
/* 8017E668 0017B668  48 01 00 D5 */	bl __shr2i
/* 8017E66C 0017B66C  7C 60 F0 38 */	and r0, r3, r30
/* 8017E670 0017B670  7C 84 D0 38 */	and r4, r4, r26
/* 8017E674 0017B674  7C A0 F9 D6 */	mullw r5, r0, r31
/* 8017E678 0017B678  7C 64 F8 16 */	mulhwu r3, r4, r31
/* 8017E67C 0017B67C  7C A5 1A 14 */	add r5, r5, r3
/* 8017E680 0017B680  7C 64 F1 D6 */	mullw r3, r4, r30
/* 8017E684 0017B684  7C 04 F9 D6 */	mullw r0, r4, r31
/* 8017E688 0017B688  7C 80 E8 14 */	addc r4, r0, r29
/* 8017E68C 0017B68C  7C 05 1A 14 */	add r0, r5, r3
/* 8017E690 0017B690  7C 60 F1 14 */	adde r3, r0, r30
/* 8017E694 0017B694  38 A0 00 10 */	li r5, 0x10
/* 8017E698 0017B698  48 01 00 A5 */	bl __shr2i
/* 8017E69C 0017B69C  7C C3 F9 D6 */	mullw r6, r3, r31
/* 8017E6A0 0017B6A0  7C A4 F8 16 */	mulhwu r5, r4, r31
/* 8017E6A4 0017B6A4  39 3C 00 06 */	addi r9, r28, 6
/* 8017E6A8 0017B6A8  7D 29 07 34 */	extsh r9, r9
/* 8017E6AC 0017B6AC  7C 19 48 AE */	lbzx r0, r25, r9
/* 8017E6B0 0017B6B0  7C C6 2A 14 */	add r6, r6, r5
/* 8017E6B4 0017B6B4  7C A4 F1 D6 */	mullw r5, r4, r30
/* 8017E6B8 0017B6B8  7C E4 00 14 */	addc r7, r4, r0
/* 8017E6BC 0017B6BC  7C 04 F9 D6 */	mullw r0, r4, r31
/* 8017E6C0 0017B6C0  7C FB 49 AE */	stbx r7, r27, r9
/* 8017E6C4 0017B6C4  7C 80 E8 14 */	addc r4, r0, r29
/* 8017E6C8 0017B6C8  7C 06 2A 14 */	add r0, r6, r5
/* 8017E6CC 0017B6CC  7C 60 F1 14 */	adde r3, r0, r30
/* 8017E6D0 0017B6D0  38 A0 00 10 */	li r5, 0x10
/* 8017E6D4 0017B6D4  48 01 00 69 */	bl __shr2i
/* 8017E6D8 0017B6D8  7C 60 F0 38 */	and r0, r3, r30
/* 8017E6DC 0017B6DC  7C 84 D0 38 */	and r4, r4, r26
/* 8017E6E0 0017B6E0  7C A0 F9 D6 */	mullw r5, r0, r31
/* 8017E6E4 0017B6E4  7C 64 F8 16 */	mulhwu r3, r4, r31
/* 8017E6E8 0017B6E8  7C A5 1A 14 */	add r5, r5, r3
/* 8017E6EC 0017B6EC  7C 64 F1 D6 */	mullw r3, r4, r30
/* 8017E6F0 0017B6F0  7C 04 F9 D6 */	mullw r0, r4, r31
/* 8017E6F4 0017B6F4  7C 80 E8 14 */	addc r4, r0, r29
/* 8017E6F8 0017B6F8  7C 05 1A 14 */	add r0, r5, r3
/* 8017E6FC 0017B6FC  7C 60 F1 14 */	adde r3, r0, r30
/* 8017E700 0017B700  38 A0 00 10 */	li r5, 0x10
/* 8017E704 0017B704  48 01 00 39 */	bl __shr2i
/* 8017E708 0017B708  7C C3 F9 D6 */	mullw r6, r3, r31
/* 8017E70C 0017B70C  7C A4 F8 16 */	mulhwu r5, r4, r31
/* 8017E710 0017B710  39 3C 00 07 */	addi r9, r28, 7
/* 8017E714 0017B714  7D 29 07 34 */	extsh r9, r9
/* 8017E718 0017B718  7C 19 48 AE */	lbzx r0, r25, r9
/* 8017E71C 0017B71C  7C C6 2A 14 */	add r6, r6, r5
/* 8017E720 0017B720  7C A4 F1 D6 */	mullw r5, r4, r30
/* 8017E724 0017B724  7C E4 00 14 */	addc r7, r4, r0
/* 8017E728 0017B728  7C 04 F9 D6 */	mullw r0, r4, r31
/* 8017E72C 0017B72C  7C FB 49 AE */	stbx r7, r27, r9
/* 8017E730 0017B730  7C 80 E8 14 */	addc r4, r0, r29
/* 8017E734 0017B734  7C 06 2A 14 */	add r0, r6, r5
/* 8017E738 0017B738  7C 60 F1 14 */	adde r3, r0, r30
/* 8017E73C 0017B73C  38 A0 00 10 */	li r5, 0x10
/* 8017E740 0017B740  48 00 FF FD */	bl __shr2i
/* 8017E744 0017B744  7C 9A D0 38 */	and r26, r4, r26
/* 8017E748 0017B748  7C 7E F0 38 */	and r30, r3, r30
/* 8017E74C 0017B74C  3B 18 00 08 */	addi r24, r24, 8
/* 8017E750 0017B750  3B 9C 00 08 */	addi r28, r28, 8
lbl_8017E754:
/* 8017E754 0017B754  7F 80 07 34 */	extsh r0, r28
/* 8017E758 0017B758  7C 00 B8 00 */	cmpw r0, r23
/* 8017E75C 0017B75C  41 80 FC 88 */	blt lbl_8017E3E4
/* 8017E760 0017B760  48 00 02 18 */	b lbl_8017E978
lbl_8017E764:
/* 8017E764 0017B764  3C 60 41 C6 */	lis r3, 0x41C64E6D@ha
/* 8017E768 0017B768  3B 23 4E 6D */	addi r25, r3, 0x41C64E6D@l
/* 8017E76C 0017B76C  48 00 00 80 */	b lbl_8017E7EC
lbl_8017E770:
/* 8017E770 0017B770  7C BE C9 D6 */	mullw r5, r30, r25
/* 8017E774 0017B774  7C 7A C8 16 */	mulhwu r3, r26, r25
/* 8017E778 0017B778  3B 00 00 00 */	li r24, 0
/* 8017E77C 0017B77C  7C A5 1A 14 */	add r5, r5, r3
/* 8017E780 0017B780  7C 7A C1 D6 */	mullw r3, r26, r24
/* 8017E784 0017B784  7C 1A C9 D6 */	mullw r0, r26, r25
/* 8017E788 0017B788  3A E0 30 39 */	li r23, 0x3039
/* 8017E78C 0017B78C  7C 80 B8 14 */	addc r4, r0, r23
/* 8017E790 0017B790  7C 05 1A 14 */	add r0, r5, r3
/* 8017E794 0017B794  7C 60 C1 14 */	adde r3, r0, r24
/* 8017E798 0017B798  38 A0 00 10 */	li r5, 0x10
/* 8017E79C 0017B79C  48 00 FF A1 */	bl __shr2i
/* 8017E7A0 0017B7A0  7C C3 C9 D6 */	mullw r6, r3, r25
/* 8017E7A4 0017B7A4  88 1D 00 00 */	lbz r0, 0(r29)
/* 8017E7A8 0017B7A8  7C A4 C8 16 */	mulhwu r5, r4, r25
/* 8017E7AC 0017B7AC  7C C6 2A 14 */	add r6, r6, r5
/* 8017E7B0 0017B7B0  7D 04 00 14 */	addc r8, r4, r0
/* 8017E7B4 0017B7B4  7F 87 07 34 */	extsh r7, r28
/* 8017E7B8 0017B7B8  7C A4 C1 D6 */	mullw r5, r4, r24
/* 8017E7BC 0017B7BC  7D 1B 39 AE */	stbx r8, r27, r7
/* 8017E7C0 0017B7C0  7C 04 C9 D6 */	mullw r0, r4, r25
/* 8017E7C4 0017B7C4  7C 80 B8 14 */	addc r4, r0, r23
/* 8017E7C8 0017B7C8  7C 06 2A 14 */	add r0, r6, r5
/* 8017E7CC 0017B7CC  7C 60 C1 14 */	adde r3, r0, r24
/* 8017E7D0 0017B7D0  38 A0 00 10 */	li r5, 0x10
/* 8017E7D4 0017B7D4  48 00 FF 69 */	bl __shr2i
/* 8017E7D8 0017B7D8  38 00 7F FF */	li r0, 0x7fff
/* 8017E7DC 0017B7DC  7C 9A 00 38 */	and r26, r4, r0
/* 8017E7E0 0017B7E0  7C 7E C0 38 */	and r30, r3, r24
/* 8017E7E4 0017B7E4  3B BD 00 01 */	addi r29, r29, 1
/* 8017E7E8 0017B7E8  3B 9C 00 01 */	addi r28, r28, 1
lbl_8017E7EC:
/* 8017E7EC 0017B7EC  7F 80 07 34 */	extsh r0, r28
/* 8017E7F0 0017B7F0  2C 00 00 0C */	cmpwi r0, 0xc
/* 8017E7F4 0017B7F4  41 80 FF 7C */	blt lbl_8017E770
/* 8017E7F8 0017B7F8  38 60 00 00 */	li r3, 0
/* 8017E7FC 0017B7FC  4B FE CE B5 */	bl __OSUnlockSramEx
/* 8017E800 0017B800  92 5B 00 1C */	stw r18, 0x1c(r27)
/* 8017E804 0017B804  3A 40 00 00 */	li r18, 0
/* 8017E808 0017B808  38 7B 00 00 */	addi r3, r27, 0
/* 8017E80C 0017B80C  92 BB 00 10 */	stw r21, 0x10(r27)
/* 8017E810 0017B810  38 BB 01 FC */	addi r5, r27, 0x1fc
/* 8017E814 0017B814  38 DB 01 FE */	addi r6, r27, 0x1fe
/* 8017E818 0017B818  92 9B 00 0C */	stw r20, 0xc(r27)
/* 8017E81C 0017B81C  38 80 01 FC */	li r4, 0x1fc
/* 8017E820 0017B820  B2 5B 00 20 */	sth r18, 0x20(r27)
/* 8017E824 0017B824  80 E1 00 18 */	lwz r7, 0x18(r1)
/* 8017E828 0017B828  A0 07 00 08 */	lhz r0, 8(r7)
/* 8017E82C 0017B82C  B0 1B 00 22 */	sth r0, 0x22(r27)
/* 8017E830 0017B830  4B FF E1 15 */	bl __CARDCheckSum
/* 8017E834 0017B834  48 00 00 4C */	b lbl_8017E880
lbl_8017E838:
/* 8017E838 0017B838  80 81 00 18 */	lwz r4, 0x18(r1)
/* 8017E83C 0017B83C  7E 43 07 34 */	extsh r3, r18
/* 8017E840 0017B840  38 03 00 01 */	addi r0, r3, 1
/* 8017E844 0017B844  80 64 00 80 */	lwz r3, 0x80(r4)
/* 8017E848 0017B848  54 00 68 24 */	slwi r0, r0, 0xd
/* 8017E84C 0017B84C  38 80 00 FF */	li r4, 0xff
/* 8017E850 0017B850  7E 83 02 14 */	add r20, r3, r0
/* 8017E854 0017B854  38 74 00 00 */	addi r3, r20, 0
/* 8017E858 0017B858  38 A0 20 00 */	li r5, 0x2000
/* 8017E85C 0017B85C  4B E8 6C 89 */	bl memset
/* 8017E860 0017B860  38 94 1F C0 */	addi r4, r20, 0x1fc0
/* 8017E864 0017B864  B2 54 1F FA */	sth r18, 0x1ffa(r20)
/* 8017E868 0017B868  38 74 00 00 */	addi r3, r20, 0
/* 8017E86C 0017B86C  38 A4 00 3C */	addi r5, r4, 0x3c
/* 8017E870 0017B870  38 C4 00 3E */	addi r6, r4, 0x3e
/* 8017E874 0017B874  38 80 1F FC */	li r4, 0x1ffc
/* 8017E878 0017B878  4B FF E0 CD */	bl __CARDCheckSum
/* 8017E87C 0017B87C  3A 52 00 01 */	addi r18, r18, 1
lbl_8017E880:
/* 8017E880 0017B880  7E 40 07 34 */	extsh r0, r18
/* 8017E884 0017B884  2C 00 00 02 */	cmpwi r0, 2
/* 8017E888 0017B888  41 80 FF B0 */	blt lbl_8017E838
/* 8017E88C 0017B88C  3A 40 00 00 */	li r18, 0
/* 8017E890 0017B890  48 00 00 60 */	b lbl_8017E8F0
lbl_8017E894:
/* 8017E894 0017B894  80 81 00 18 */	lwz r4, 0x18(r1)
/* 8017E898 0017B898  7E 43 07 34 */	extsh r3, r18
/* 8017E89C 0017B89C  38 03 00 03 */	addi r0, r3, 3
/* 8017E8A0 0017B8A0  80 64 00 80 */	lwz r3, 0x80(r4)
/* 8017E8A4 0017B8A4  54 00 68 24 */	slwi r0, r0, 0xd
/* 8017E8A8 0017B8A8  38 80 00 00 */	li r4, 0
/* 8017E8AC 0017B8AC  7E 83 02 14 */	add r20, r3, r0
/* 8017E8B0 0017B8B0  38 74 00 00 */	addi r3, r20, 0
/* 8017E8B4 0017B8B4  38 A0 20 00 */	li r5, 0x2000
/* 8017E8B8 0017B8B8  4B E8 6C 2D */	bl memset
/* 8017E8BC 0017B8BC  B2 54 00 04 */	sth r18, 4(r20)
/* 8017E8C0 0017B8C0  38 00 00 04 */	li r0, 4
/* 8017E8C4 0017B8C4  38 B4 00 00 */	addi r5, r20, 0
/* 8017E8C8 0017B8C8  80 81 00 18 */	lwz r4, 0x18(r1)
/* 8017E8CC 0017B8CC  38 74 00 04 */	addi r3, r20, 4
/* 8017E8D0 0017B8D0  38 D4 00 02 */	addi r6, r20, 2
/* 8017E8D4 0017B8D4  A0 E4 00 10 */	lhz r7, 0x10(r4)
/* 8017E8D8 0017B8D8  38 80 1F FC */	li r4, 0x1ffc
/* 8017E8DC 0017B8DC  38 E7 FF FB */	addi r7, r7, -5
/* 8017E8E0 0017B8E0  B0 F4 00 06 */	sth r7, 6(r20)
/* 8017E8E4 0017B8E4  B0 14 00 08 */	sth r0, 8(r20)
/* 8017E8E8 0017B8E8  4B FF E0 5D */	bl __CARDCheckSum
/* 8017E8EC 0017B8EC  3A 52 00 01 */	addi r18, r18, 1
lbl_8017E8F0:
/* 8017E8F0 0017B8F0  7E 40 07 34 */	extsh r0, r18
/* 8017E8F4 0017B8F4  2C 00 00 02 */	cmpwi r0, 2
/* 8017E8F8 0017B8F8  41 80 FF 9C */	blt lbl_8017E894
/* 8017E8FC 0017B8FC  28 13 00 00 */	cmplwi r19, 0
/* 8017E900 0017B900  41 82 00 0C */	beq lbl_8017E90C
/* 8017E904 0017B904  7E 60 9B 78 */	mr r0, r19
/* 8017E908 0017B908  48 00 00 0C */	b lbl_8017E914
lbl_8017E90C:
/* 8017E90C 0017B90C  3C 60 80 18 */	lis r3, __CARDDefaultApiCallback@ha
/* 8017E910 0017B910  38 03 97 EC */	addi r0, r3, __CARDDefaultApiCallback@l
lbl_8017E914:
/* 8017E914 0017B914  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 8017E918 0017B918  3C 60 00 01 */	lis r3, 0x0000A000@ha
/* 8017E91C 0017B91C  38 83 A0 00 */	addi r4, r3, 0x0000A000@l
/* 8017E920 0017B920  90 05 00 D0 */	stw r0, 0xd0(r5)
/* 8017E924 0017B924  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8017E928 0017B928  80 63 00 80 */	lwz r3, 0x80(r3)
/* 8017E92C 0017B92C  4B FE 81 DD */	bl DCStoreRange
/* 8017E930 0017B930  80 81 00 18 */	lwz r4, 0x18(r1)
/* 8017E934 0017B934  38 00 00 00 */	li r0, 0
/* 8017E938 0017B938  3C 60 80 18 */	lis r3, FormatCallback@ha
/* 8017E93C 0017B93C  90 04 00 28 */	stw r0, 0x28(r4)
/* 8017E940 0017B940  38 A3 E1 F8 */	addi r5, r3, FormatCallback@l
/* 8017E944 0017B944  38 76 00 00 */	addi r3, r22, 0
/* 8017E948 0017B948  80 C1 00 18 */	lwz r6, 0x18(r1)
/* 8017E94C 0017B94C  80 86 00 0C */	lwz r4, 0xc(r6)
/* 8017E950 0017B950  80 06 00 28 */	lwz r0, 0x28(r6)
/* 8017E954 0017B954  7C 84 01 D6 */	mullw r4, r4, r0
/* 8017E958 0017B958  4B FF BD E9 */	bl __CARDEraseSector
/* 8017E95C 0017B95C  7C 72 1B 79 */	or. r18, r3, r3
/* 8017E960 0017B960  40 80 00 10 */	bge lbl_8017E970
/* 8017E964 0017B964  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8017E968 0017B968  7E 44 93 78 */	mr r4, r18
/* 8017E96C 0017B96C  4B FF C0 89 */	bl __CARDPutControlBlock
lbl_8017E970:
/* 8017E970 0017B970  7E 43 93 78 */	mr r3, r18
/* 8017E974 0017B974  48 00 00 0C */	b lbl_8017E980
lbl_8017E978:
/* 8017E978 0017B978  7F B9 02 14 */	add r29, r25, r0
/* 8017E97C 0017B97C  4B FF FD E8 */	b lbl_8017E764
lbl_8017E980:
/* 8017E980 0017B980  BA 41 00 20 */	lmw r18, 0x20(r1)
/* 8017E984 0017B984  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 8017E988 0017B988  38 21 00 58 */	addi r1, r1, 0x58
/* 8017E98C 0017B98C  7C 08 03 A6 */	mtlr r0
/* 8017E990 0017B990  4E 80 00 20 */	blr 

.global CARDFormatAsync
CARDFormatAsync:
/* 8017E994 0017B994  7C 08 02 A6 */	mflr r0
/* 8017E998 0017B998  90 01 00 04 */	stw r0, 4(r1)
/* 8017E99C 0017B99C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8017E9A0 0017B9A0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8017E9A4 0017B9A4  3B E4 00 00 */	addi r31, r4, 0
/* 8017E9A8 0017B9A8  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8017E9AC 0017B9AC  3B C3 00 00 */	addi r30, r3, 0
/* 8017E9B0 0017B9B0  4B FF BF 4D */	bl __CARDGetFontEncode
/* 8017E9B4 0017B9B4  38 83 00 00 */	addi r4, r3, 0
/* 8017E9B8 0017B9B8  38 7E 00 00 */	addi r3, r30, 0
/* 8017E9BC 0017B9BC  38 BF 00 00 */	addi r5, r31, 0
/* 8017E9C0 0017B9C0  4B FF F9 7D */	bl __CARDFormatRegionAsync
/* 8017E9C4 0017B9C4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8017E9C8 0017B9C8  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8017E9CC 0017B9CC  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8017E9D0 0017B9D0  38 21 00 18 */	addi r1, r1, 0x18
/* 8017E9D4 0017B9D4  7C 08 03 A6 */	mtlr r0
/* 8017E9D8 0017B9D8  4E 80 00 20 */	blr 
