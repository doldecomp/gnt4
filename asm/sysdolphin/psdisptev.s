.include "macros.inc"

.section .text  # 0x801A61A0 - 0x801A69B4

.global psSetupTevCommon
psSetupTevCommon:
/* 801A61A0 001A31A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A61A4 001A31A4  7C 08 02 A6 */	mflr r0
/* 801A61A8 001A31A8  38 60 00 00 */	li r3, 0
/* 801A61AC 001A31AC  38 80 00 00 */	li r4, 0
/* 801A61B0 001A31B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A61B4 001A31B4  38 A0 00 00 */	li r5, 0
/* 801A61B8 001A31B8  38 C0 00 04 */	li r6, 4
/* 801A61BC 001A31BC  4B FD F7 51 */	bl func_8018590C
/* 801A61C0 001A31C0  38 60 00 00 */	li r3, 0
/* 801A61C4 001A31C4  38 80 00 00 */	li r4, 0
/* 801A61C8 001A31C8  38 A0 00 00 */	li r5, 0
/* 801A61CC 001A31CC  38 C0 00 00 */	li r6, 0
/* 801A61D0 001A31D0  38 E0 00 01 */	li r7, 1
/* 801A61D4 001A31D4  39 00 00 00 */	li r8, 0
/* 801A61D8 001A31D8  4B FD F2 ED */	bl func_801854C4
/* 801A61DC 001A31DC  38 60 00 00 */	li r3, 0
/* 801A61E0 001A31E0  38 80 00 00 */	li r4, 0
/* 801A61E4 001A31E4  38 A0 00 00 */	li r5, 0
/* 801A61E8 001A31E8  38 C0 00 00 */	li r6, 0
/* 801A61EC 001A31EC  38 E0 00 01 */	li r7, 1
/* 801A61F0 001A31F0  39 00 00 00 */	li r8, 0
/* 801A61F4 001A31F4  4B FD F3 39 */	bl func_8018552C
/* 801A61F8 001A31F8  38 60 00 01 */	li r3, 1
/* 801A61FC 001A31FC  38 80 00 00 */	li r4, 0
/* 801A6200 001A3200  38 A0 00 00 */	li r5, 0
/* 801A6204 001A3204  38 C0 00 04 */	li r6, 4
/* 801A6208 001A3208  4B FD F7 05 */	bl func_8018590C
/* 801A620C 001A320C  38 60 00 01 */	li r3, 1
/* 801A6210 001A3210  38 80 00 00 */	li r4, 0
/* 801A6214 001A3214  38 A0 00 00 */	li r5, 0
/* 801A6218 001A3218  38 C0 00 00 */	li r6, 0
/* 801A621C 001A321C  38 E0 00 01 */	li r7, 1
/* 801A6220 001A3220  39 00 00 00 */	li r8, 0
/* 801A6224 001A3224  4B FD F2 A1 */	bl func_801854C4
/* 801A6228 001A3228  38 60 00 01 */	li r3, 1
/* 801A622C 001A322C  38 80 00 00 */	li r4, 0
/* 801A6230 001A3230  38 A0 00 00 */	li r5, 0
/* 801A6234 001A3234  38 C0 00 00 */	li r6, 0
/* 801A6238 001A3238  38 E0 00 01 */	li r7, 1
/* 801A623C 001A323C  39 00 00 00 */	li r8, 0
/* 801A6240 001A3240  4B FD F2 ED */	bl func_8018552C
/* 801A6244 001A3244  38 60 00 02 */	li r3, 2
/* 801A6248 001A3248  38 80 00 00 */	li r4, 0
/* 801A624C 001A324C  38 A0 00 00 */	li r5, 0
/* 801A6250 001A3250  38 C0 00 04 */	li r6, 4
/* 801A6254 001A3254  4B FD F6 B9 */	bl func_8018590C
/* 801A6258 001A3258  38 60 00 02 */	li r3, 2
/* 801A625C 001A325C  38 80 00 00 */	li r4, 0
/* 801A6260 001A3260  38 A0 00 00 */	li r5, 0
/* 801A6264 001A3264  38 C0 00 00 */	li r6, 0
/* 801A6268 001A3268  38 E0 00 01 */	li r7, 1
/* 801A626C 001A326C  39 00 00 00 */	li r8, 0
/* 801A6270 001A3270  4B FD F2 55 */	bl func_801854C4
/* 801A6274 001A3274  38 60 00 02 */	li r3, 2
/* 801A6278 001A3278  38 80 00 00 */	li r4, 0
/* 801A627C 001A327C  38 A0 00 00 */	li r5, 0
/* 801A6280 001A3280  38 C0 00 00 */	li r6, 0
/* 801A6284 001A3284  38 E0 00 01 */	li r7, 1
/* 801A6288 001A3288  39 00 00 00 */	li r8, 0
/* 801A628C 001A328C  4B FD F2 A1 */	bl func_8018552C
/* 801A6290 001A3290  38 60 00 00 */	li r3, 0
/* 801A6294 001A3294  38 80 00 00 */	li r4, 0
/* 801A6298 001A3298  38 A0 00 00 */	li r5, 0
/* 801A629C 001A329C  4B FD F4 D9 */	bl func_80185774
/* 801A62A0 001A32A0  38 60 00 01 */	li r3, 1
/* 801A62A4 001A32A4  38 80 00 00 */	li r4, 0
/* 801A62A8 001A32A8  38 A0 00 00 */	li r5, 0
/* 801A62AC 001A32AC  4B FD F4 C9 */	bl func_80185774
/* 801A62B0 001A32B0  38 60 00 02 */	li r3, 2
/* 801A62B4 001A32B4  38 80 00 00 */	li r4, 0
/* 801A62B8 001A32B8  38 A0 00 00 */	li r5, 0
/* 801A62BC 001A32BC  4B FD F4 B9 */	bl func_80185774
/* 801A62C0 001A32C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A62C4 001A32C4  7C 08 03 A6 */	mtlr r0
/* 801A62C8 001A32C8  38 21 00 10 */	addi r1, r1, 0x10
/* 801A62CC 001A32CC  4E 80 00 20 */	blr 

.global psSetupTevInvalidState
psSetupTevInvalidState:
/* 801A62D0 001A32D0  38 00 FF FF */	li r0, -1
/* 801A62D4 001A32D4  90 0D 8F 70 */	stw r0, lbl_80277890-_SDA_BASE_(r13)
/* 801A62D8 001A32D8  4E 80 00 20 */	blr 

.global psSetupTev
psSetupTev:
/* 801A62DC 001A32DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A62E0 001A32E0  7C 08 02 A6 */	mflr r0
/* 801A62E4 001A32E4  3C 80 80 10 */	lis r4, lbl_80100480@ha
/* 801A62E8 001A32E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A62EC 001A32EC  38 A4 04 80 */	addi r5, r4, lbl_80100480@l
/* 801A62F0 001A32F0  80 C3 00 04 */	lwz r6, 4(r3)
/* 801A62F4 001A32F4  80 0D 8F 70 */	lwz r0, lbl_80277890-_SDA_BASE_(r13)
/* 801A62F8 001A32F8  7C C6 28 38 */	and r6, r6, r5
/* 801A62FC 001A32FC  7C 06 00 40 */	cmplw r6, r0
/* 801A6300 001A3300  41 82 06 A4 */	beq lbl_801A69A4
/* 801A6304 001A3304  2C 06 00 00 */	cmpwi r6, 0
/* 801A6308 001A3308  90 CD 8F 70 */	stw r6, lbl_80277890-_SDA_BASE_(r13)
/* 801A630C 001A330C  41 82 01 A0 */	beq lbl_801A64AC
/* 801A6310 001A3310  40 80 00 80 */	bge lbl_801A6390
/* 801A6314 001A3314  7C 06 20 00 */	cmpw r6, r4
/* 801A6318 001A3318  41 82 06 08 */	beq lbl_801A6920
/* 801A631C 001A331C  40 80 00 48 */	bge lbl_801A6364
/* 801A6320 001A3320  3C 80 80 00 */	lis r4, 0x80000400@ha
/* 801A6324 001A3324  38 04 04 00 */	addi r0, r4, 0x80000400@l
/* 801A6328 001A3328  7C 06 00 00 */	cmpw r6, r0
/* 801A632C 001A332C  41 82 02 90 */	beq lbl_801A65BC
/* 801A6330 001A3330  40 80 00 24 */	bge lbl_801A6354
/* 801A6334 001A3334  38 04 00 80 */	addi r0, r4, 0x80
/* 801A6338 001A3338  7C 06 00 00 */	cmpw r6, r0
/* 801A633C 001A333C  41 82 00 B8 */	beq lbl_801A63F4
/* 801A6340 001A3340  40 80 06 64 */	bge lbl_801A69A4
/* 801A6344 001A3344  38 04 00 01 */	addi r0, r4, 1
/* 801A6348 001A3348  7C 06 00 00 */	cmpw r6, r0
/* 801A634C 001A334C  40 80 06 58 */	bge lbl_801A69A4
/* 801A6350 001A3350  48 00 00 BC */	b lbl_801A640C
lbl_801A6354:
/* 801A6354 001A3354  38 04 04 80 */	addi r0, r4, 0x480
/* 801A6358 001A3358  7C 06 00 00 */	cmpw r6, r0
/* 801A635C 001A335C  41 82 01 A8 */	beq lbl_801A6504
/* 801A6360 001A3360  48 00 06 44 */	b lbl_801A69A4
lbl_801A6364:
/* 801A6364 001A3364  38 04 04 00 */	addi r0, r4, 0x400
/* 801A6368 001A3368  7C 06 00 00 */	cmpw r6, r0
/* 801A636C 001A336C  41 82 03 EC */	beq lbl_801A6758
/* 801A6370 001A3370  40 80 00 14 */	bge lbl_801A6384
/* 801A6374 001A3374  38 04 00 80 */	addi r0, r4, 0x80
/* 801A6378 001A3378  7C 06 00 00 */	cmpw r6, r0
/* 801A637C 001A337C  41 82 05 8C */	beq lbl_801A6908
/* 801A6380 001A3380  48 00 06 24 */	b lbl_801A69A4
lbl_801A6384:
/* 801A6384 001A3384  7C 06 28 00 */	cmpw r6, r5
/* 801A6388 001A3388  41 82 04 58 */	beq lbl_801A67E0
/* 801A638C 001A338C  48 00 06 18 */	b lbl_801A69A4
lbl_801A6390:
/* 801A6390 001A3390  3C 80 00 10 */	lis r4, 0x10
/* 801A6394 001A3394  7C 06 20 00 */	cmpw r6, r4
/* 801A6398 001A3398  41 82 05 18 */	beq lbl_801A68B0
/* 801A639C 001A339C  40 80 00 28 */	bge lbl_801A63C4
/* 801A63A0 001A33A0  2C 06 04 00 */	cmpwi r6, 0x400
/* 801A63A4 001A33A4  41 82 02 A0 */	beq lbl_801A6644
/* 801A63A8 001A33A8  40 80 00 10 */	bge lbl_801A63B8
/* 801A63AC 001A33AC  2C 06 00 80 */	cmpwi r6, 0x80
/* 801A63B0 001A33B0  41 82 00 E4 */	beq lbl_801A6494
/* 801A63B4 001A33B4  48 00 05 F0 */	b lbl_801A69A4
lbl_801A63B8:
/* 801A63B8 001A33B8  2C 06 04 80 */	cmpwi r6, 0x480
/* 801A63BC 001A33BC  41 82 02 88 */	beq lbl_801A6644
/* 801A63C0 001A33C0  48 00 05 E4 */	b lbl_801A69A4
lbl_801A63C4:
/* 801A63C4 001A33C4  38 04 04 00 */	addi r0, r4, 0x400
/* 801A63C8 001A33C8  7C 06 00 00 */	cmpw r6, r0
/* 801A63CC 001A33CC  41 82 02 D0 */	beq lbl_801A669C
/* 801A63D0 001A33D0  40 80 00 14 */	bge lbl_801A63E4
/* 801A63D4 001A33D4  38 04 00 80 */	addi r0, r4, 0x80
/* 801A63D8 001A33D8  7C 06 00 00 */	cmpw r6, r0
/* 801A63DC 001A33DC  41 82 04 BC */	beq lbl_801A6898
/* 801A63E0 001A33E0  48 00 05 C4 */	b lbl_801A69A4
lbl_801A63E4:
/* 801A63E4 001A33E4  38 04 04 80 */	addi r0, r4, 0x480
/* 801A63E8 001A33E8  7C 06 00 00 */	cmpw r6, r0
/* 801A63EC 001A33EC  41 82 02 E4 */	beq lbl_801A66D0
/* 801A63F0 001A33F0  48 00 05 B4 */	b lbl_801A69A4
lbl_801A63F4:
/* 801A63F4 001A33F4  80 03 00 04 */	lwz r0, 4(r3)
/* 801A63F8 001A33F8  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 801A63FC 001A33FC  90 03 00 04 */	stw r0, 4(r3)
/* 801A6400 001A3400  80 0D 8F 70 */	lwz r0, lbl_80277890-_SDA_BASE_(r13)
/* 801A6404 001A3404  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 801A6408 001A3408  90 0D 8F 70 */	stw r0, lbl_80277890-_SDA_BASE_(r13)
lbl_801A640C:
/* 801A640C 001A340C  38 60 00 02 */	li r3, 2
/* 801A6410 001A3410  4B FD F6 99 */	bl func_80185AA8
/* 801A6414 001A3414  38 60 00 00 */	li r3, 0
/* 801A6418 001A3418  4B FD C3 F9 */	bl func_80182810
/* 801A641C 001A341C  38 60 00 00 */	li r3, 0
/* 801A6420 001A3420  38 80 00 FF */	li r4, 0xff
/* 801A6424 001A3424  38 A0 00 FF */	li r5, 0xff
/* 801A6428 001A3428  38 C0 00 04 */	li r6, 4
/* 801A642C 001A342C  4B FD F4 E1 */	bl func_8018590C
/* 801A6430 001A3430  38 60 00 00 */	li r3, 0
/* 801A6434 001A3434  38 80 00 0F */	li r4, 0xf
/* 801A6438 001A3438  38 A0 00 06 */	li r5, 6
/* 801A643C 001A343C  38 C0 00 0A */	li r6, 0xa
/* 801A6440 001A3440  38 E0 00 0F */	li r7, 0xf
/* 801A6444 001A3444  4B FD EF F9 */	bl func_8018543C
/* 801A6448 001A3448  38 60 00 00 */	li r3, 0
/* 801A644C 001A344C  38 80 00 03 */	li r4, 3
/* 801A6450 001A3450  38 A0 00 07 */	li r5, 7
/* 801A6454 001A3454  38 C0 00 07 */	li r6, 7
/* 801A6458 001A3458  38 E0 00 07 */	li r7, 7
/* 801A645C 001A345C  4B FD F0 25 */	bl func_80185480
/* 801A6460 001A3460  38 60 00 01 */	li r3, 1
/* 801A6464 001A3464  38 80 00 0F */	li r4, 0xf
/* 801A6468 001A3468  38 A0 00 02 */	li r5, 2
/* 801A646C 001A346C  38 C0 00 00 */	li r6, 0
/* 801A6470 001A3470  38 E0 00 0F */	li r7, 0xf
/* 801A6474 001A3474  4B FD EF C9 */	bl func_8018543C
/* 801A6478 001A3478  38 60 00 01 */	li r3, 1
/* 801A647C 001A347C  38 80 00 07 */	li r4, 7
/* 801A6480 001A3480  38 A0 00 01 */	li r5, 1
/* 801A6484 001A3484  38 C0 00 00 */	li r6, 0
/* 801A6488 001A3488  38 E0 00 07 */	li r7, 7
/* 801A648C 001A348C  4B FD EF F5 */	bl func_80185480
/* 801A6490 001A3490  48 00 05 14 */	b lbl_801A69A4
lbl_801A6494:
/* 801A6494 001A3494  80 03 00 04 */	lwz r0, 4(r3)
/* 801A6498 001A3498  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 801A649C 001A349C  90 03 00 04 */	stw r0, 4(r3)
/* 801A64A0 001A34A0  80 0D 8F 70 */	lwz r0, lbl_80277890-_SDA_BASE_(r13)
/* 801A64A4 001A34A4  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 801A64A8 001A34A8  90 0D 8F 70 */	stw r0, lbl_80277890-_SDA_BASE_(r13)
lbl_801A64AC:
/* 801A64AC 001A34AC  38 60 00 01 */	li r3, 1
/* 801A64B0 001A34B0  4B FD F5 F9 */	bl func_80185AA8
/* 801A64B4 001A34B4  38 60 00 00 */	li r3, 0
/* 801A64B8 001A34B8  4B FD C3 59 */	bl func_80182810
/* 801A64BC 001A34BC  38 60 00 00 */	li r3, 0
/* 801A64C0 001A34C0  38 80 00 FF */	li r4, 0xff
/* 801A64C4 001A34C4  38 A0 00 FF */	li r5, 0xff
/* 801A64C8 001A34C8  38 C0 00 04 */	li r6, 4
/* 801A64CC 001A34CC  4B FD F4 41 */	bl func_8018590C
/* 801A64D0 001A34D0  38 60 00 00 */	li r3, 0
/* 801A64D4 001A34D4  38 80 00 02 */	li r4, 2
/* 801A64D8 001A34D8  38 A0 00 0F */	li r5, 0xf
/* 801A64DC 001A34DC  38 C0 00 0F */	li r6, 0xf
/* 801A64E0 001A34E0  38 E0 00 0F */	li r7, 0xf
/* 801A64E4 001A34E4  4B FD EF 59 */	bl func_8018543C
/* 801A64E8 001A34E8  38 60 00 00 */	li r3, 0
/* 801A64EC 001A34EC  38 80 00 01 */	li r4, 1
/* 801A64F0 001A34F0  38 A0 00 07 */	li r5, 7
/* 801A64F4 001A34F4  38 C0 00 07 */	li r6, 7
/* 801A64F8 001A34F8  38 E0 00 07 */	li r7, 7
/* 801A64FC 001A34FC  4B FD EF 85 */	bl func_80185480
/* 801A6500 001A3500  48 00 04 A4 */	b lbl_801A69A4
lbl_801A6504:
/* 801A6504 001A3504  38 60 00 03 */	li r3, 3
/* 801A6508 001A3508  4B FD F5 A1 */	bl func_80185AA8
/* 801A650C 001A350C  38 60 00 01 */	li r3, 1
/* 801A6510 001A3510  4B FD C3 01 */	bl func_80182810
/* 801A6514 001A3514  38 60 00 00 */	li r3, 0
/* 801A6518 001A3518  38 80 00 00 */	li r4, 0
/* 801A651C 001A351C  38 A0 00 00 */	li r5, 0
/* 801A6520 001A3520  38 C0 00 04 */	li r6, 4
/* 801A6524 001A3524  4B FD F3 E9 */	bl func_8018590C
/* 801A6528 001A3528  38 60 00 00 */	li r3, 0
/* 801A652C 001A352C  38 80 00 04 */	li r4, 4
/* 801A6530 001A3530  38 A0 00 02 */	li r5, 2
/* 801A6534 001A3534  38 C0 00 08 */	li r6, 8
/* 801A6538 001A3538  38 E0 00 0F */	li r7, 0xf
/* 801A653C 001A353C  4B FD EF 01 */	bl func_8018543C
/* 801A6540 001A3540  38 60 00 00 */	li r3, 0
/* 801A6544 001A3544  38 80 00 02 */	li r4, 2
/* 801A6548 001A3548  38 A0 00 01 */	li r5, 1
/* 801A654C 001A354C  38 C0 00 04 */	li r6, 4
/* 801A6550 001A3550  38 E0 00 07 */	li r7, 7
/* 801A6554 001A3554  4B FD EF 2D */	bl func_80185480
/* 801A6558 001A3558  38 60 00 01 */	li r3, 1
/* 801A655C 001A355C  38 80 00 0F */	li r4, 0xf
/* 801A6560 001A3560  38 A0 00 06 */	li r5, 6
/* 801A6564 001A3564  38 C0 00 00 */	li r6, 0
/* 801A6568 001A3568  38 E0 00 0F */	li r7, 0xf
/* 801A656C 001A356C  4B FD EE D1 */	bl func_8018543C
/* 801A6570 001A3570  38 60 00 01 */	li r3, 1
/* 801A6574 001A3574  38 80 00 07 */	li r4, 7
/* 801A6578 001A3578  38 A0 00 03 */	li r5, 3
/* 801A657C 001A357C  38 C0 00 00 */	li r6, 0
/* 801A6580 001A3580  38 E0 00 07 */	li r7, 7
/* 801A6584 001A3584  4B FD EE FD */	bl func_80185480
/* 801A6588 001A3588  38 60 00 02 */	li r3, 2
/* 801A658C 001A358C  38 80 00 0F */	li r4, 0xf
/* 801A6590 001A3590  38 A0 00 0A */	li r5, 0xa
/* 801A6594 001A3594  38 C0 00 00 */	li r6, 0
/* 801A6598 001A3598  38 E0 00 0F */	li r7, 0xf
/* 801A659C 001A359C  4B FD EE A1 */	bl func_8018543C
/* 801A65A0 001A35A0  38 60 00 02 */	li r3, 2
/* 801A65A4 001A35A4  38 80 00 00 */	li r4, 0
/* 801A65A8 001A35A8  38 A0 00 07 */	li r5, 7
/* 801A65AC 001A35AC  38 C0 00 07 */	li r6, 7
/* 801A65B0 001A35B0  38 E0 00 07 */	li r7, 7
/* 801A65B4 001A35B4  4B FD EE CD */	bl func_80185480
/* 801A65B8 001A35B8  48 00 03 EC */	b lbl_801A69A4
lbl_801A65BC:
/* 801A65BC 001A35BC  38 60 00 02 */	li r3, 2
/* 801A65C0 001A35C0  4B FD F4 E9 */	bl func_80185AA8
/* 801A65C4 001A35C4  38 60 00 01 */	li r3, 1
/* 801A65C8 001A35C8  4B FD C2 49 */	bl func_80182810
/* 801A65CC 001A35CC  38 60 00 00 */	li r3, 0
/* 801A65D0 001A35D0  38 80 00 00 */	li r4, 0
/* 801A65D4 001A35D4  38 A0 00 00 */	li r5, 0
/* 801A65D8 001A35D8  38 C0 00 04 */	li r6, 4
/* 801A65DC 001A35DC  4B FD F3 31 */	bl func_8018590C
/* 801A65E0 001A35E0  38 60 00 00 */	li r3, 0
/* 801A65E4 001A35E4  38 80 00 0F */	li r4, 0xf
/* 801A65E8 001A35E8  38 A0 00 06 */	li r5, 6
/* 801A65EC 001A35EC  38 C0 00 0A */	li r6, 0xa
/* 801A65F0 001A35F0  38 E0 00 0F */	li r7, 0xf
/* 801A65F4 001A35F4  4B FD EE 49 */	bl func_8018543C
/* 801A65F8 001A35F8  38 60 00 00 */	li r3, 0
/* 801A65FC 001A35FC  38 80 00 03 */	li r4, 3
/* 801A6600 001A3600  38 A0 00 07 */	li r5, 7
/* 801A6604 001A3604  38 C0 00 07 */	li r6, 7
/* 801A6608 001A3608  38 E0 00 07 */	li r7, 7
/* 801A660C 001A360C  4B FD EE 75 */	bl func_80185480
/* 801A6610 001A3610  38 60 00 01 */	li r3, 1
/* 801A6614 001A3614  38 80 00 0F */	li r4, 0xf
/* 801A6618 001A3618  38 A0 00 08 */	li r5, 8
/* 801A661C 001A361C  38 C0 00 00 */	li r6, 0
/* 801A6620 001A3620  38 E0 00 0F */	li r7, 0xf
/* 801A6624 001A3624  4B FD EE 19 */	bl func_8018543C
/* 801A6628 001A3628  38 60 00 01 */	li r3, 1
/* 801A662C 001A362C  38 80 00 07 */	li r4, 7
/* 801A6630 001A3630  38 A0 00 04 */	li r5, 4
/* 801A6634 001A3634  38 C0 00 00 */	li r6, 0
/* 801A6638 001A3638  38 E0 00 07 */	li r7, 7
/* 801A663C 001A363C  4B FD EE 45 */	bl func_80185480
/* 801A6640 001A3640  48 00 03 64 */	b lbl_801A69A4
lbl_801A6644:
/* 801A6644 001A3644  38 60 00 01 */	li r3, 1
/* 801A6648 001A3648  4B FD F4 61 */	bl func_80185AA8
/* 801A664C 001A364C  38 60 00 01 */	li r3, 1
/* 801A6650 001A3650  4B FD C1 C1 */	bl func_80182810
/* 801A6654 001A3654  38 60 00 00 */	li r3, 0
/* 801A6658 001A3658  38 80 00 00 */	li r4, 0
/* 801A665C 001A365C  38 A0 00 00 */	li r5, 0
/* 801A6660 001A3660  38 C0 00 04 */	li r6, 4
/* 801A6664 001A3664  4B FD F2 A9 */	bl func_8018590C
/* 801A6668 001A3668  38 60 00 00 */	li r3, 0
/* 801A666C 001A366C  38 80 00 04 */	li r4, 4
/* 801A6670 001A3670  38 A0 00 02 */	li r5, 2
/* 801A6674 001A3674  38 C0 00 08 */	li r6, 8
/* 801A6678 001A3678  38 E0 00 0F */	li r7, 0xf
/* 801A667C 001A367C  4B FD ED C1 */	bl func_8018543C
/* 801A6680 001A3680  38 60 00 00 */	li r3, 0
/* 801A6684 001A3684  38 80 00 02 */	li r4, 2
/* 801A6688 001A3688  38 A0 00 01 */	li r5, 1
/* 801A668C 001A368C  38 C0 00 04 */	li r6, 4
/* 801A6690 001A3690  38 E0 00 07 */	li r7, 7
/* 801A6694 001A3694  4B FD ED ED */	bl func_80185480
/* 801A6698 001A3698  48 00 03 0C */	b lbl_801A69A4
lbl_801A669C:
/* 801A669C 001A369C  38 60 00 01 */	li r3, 1
/* 801A66A0 001A36A0  4B FD F4 09 */	bl func_80185AA8
/* 801A66A4 001A36A4  38 60 00 01 */	li r3, 1
/* 801A66A8 001A36A8  4B FD C1 69 */	bl func_80182810
/* 801A66AC 001A36AC  38 60 00 00 */	li r3, 0
/* 801A66B0 001A36B0  38 80 00 00 */	li r4, 0
/* 801A66B4 001A36B4  38 A0 00 00 */	li r5, 0
/* 801A66B8 001A36B8  38 C0 00 04 */	li r6, 4
/* 801A66BC 001A36BC  4B FD F2 51 */	bl func_8018590C
/* 801A66C0 001A36C0  38 60 00 00 */	li r3, 0
/* 801A66C4 001A36C4  38 80 00 00 */	li r4, 0
/* 801A66C8 001A36C8  4B FD EC E9 */	bl func_801853B0
/* 801A66CC 001A36CC  48 00 02 D8 */	b lbl_801A69A4
lbl_801A66D0:
/* 801A66D0 001A36D0  38 60 00 02 */	li r3, 2
/* 801A66D4 001A36D4  4B FD F3 D5 */	bl func_80185AA8
/* 801A66D8 001A36D8  38 60 00 01 */	li r3, 1
/* 801A66DC 001A36DC  4B FD C1 35 */	bl func_80182810
/* 801A66E0 001A36E0  38 60 00 00 */	li r3, 0
/* 801A66E4 001A36E4  38 80 00 00 */	li r4, 0
/* 801A66E8 001A36E8  38 A0 00 00 */	li r5, 0
/* 801A66EC 001A36EC  38 C0 00 04 */	li r6, 4
/* 801A66F0 001A36F0  4B FD F2 1D */	bl func_8018590C
/* 801A66F4 001A36F4  38 60 00 00 */	li r3, 0
/* 801A66F8 001A36F8  38 80 00 04 */	li r4, 4
/* 801A66FC 001A36FC  38 A0 00 02 */	li r5, 2
/* 801A6700 001A3700  38 C0 00 08 */	li r6, 8
/* 801A6704 001A3704  38 E0 00 0F */	li r7, 0xf
/* 801A6708 001A3708  4B FD ED 35 */	bl func_8018543C
/* 801A670C 001A370C  38 60 00 00 */	li r3, 0
/* 801A6710 001A3710  38 80 00 02 */	li r4, 2
/* 801A6714 001A3714  38 A0 00 01 */	li r5, 1
/* 801A6718 001A3718  38 C0 00 04 */	li r6, 4
/* 801A671C 001A371C  38 E0 00 07 */	li r7, 7
/* 801A6720 001A3720  4B FD ED 61 */	bl func_80185480
/* 801A6724 001A3724  38 60 00 01 */	li r3, 1
/* 801A6728 001A3728  38 80 00 00 */	li r4, 0
/* 801A672C 001A372C  38 A0 00 0F */	li r5, 0xf
/* 801A6730 001A3730  38 C0 00 0F */	li r6, 0xf
/* 801A6734 001A3734  38 E0 00 0F */	li r7, 0xf
/* 801A6738 001A3738  4B FD ED 05 */	bl func_8018543C
/* 801A673C 001A373C  38 60 00 01 */	li r3, 1
/* 801A6740 001A3740  38 80 00 07 */	li r4, 7
/* 801A6744 001A3744  38 A0 00 05 */	li r5, 5
/* 801A6748 001A3748  38 C0 00 00 */	li r6, 0
/* 801A674C 001A374C  38 E0 00 07 */	li r7, 7
/* 801A6750 001A3750  4B FD ED 31 */	bl func_80185480
/* 801A6754 001A3754  48 00 02 50 */	b lbl_801A69A4
lbl_801A6758:
/* 801A6758 001A3758  38 60 00 02 */	li r3, 2
/* 801A675C 001A375C  4B FD F3 4D */	bl func_80185AA8
/* 801A6760 001A3760  38 60 00 01 */	li r3, 1
/* 801A6764 001A3764  4B FD C0 AD */	bl func_80182810
/* 801A6768 001A3768  38 60 00 00 */	li r3, 0
/* 801A676C 001A376C  38 80 00 00 */	li r4, 0
/* 801A6770 001A3770  38 A0 00 00 */	li r5, 0
/* 801A6774 001A3774  38 C0 00 04 */	li r6, 4
/* 801A6778 001A3778  4B FD F1 95 */	bl func_8018590C
/* 801A677C 001A377C  38 60 00 00 */	li r3, 0
/* 801A6780 001A3780  38 80 00 0F */	li r4, 0xf
/* 801A6784 001A3784  38 A0 00 06 */	li r5, 6
/* 801A6788 001A3788  38 C0 00 0A */	li r6, 0xa
/* 801A678C 001A378C  38 E0 00 0F */	li r7, 0xf
/* 801A6790 001A3790  4B FD EC AD */	bl func_8018543C
/* 801A6794 001A3794  38 60 00 00 */	li r3, 0
/* 801A6798 001A3798  38 80 00 07 */	li r4, 7
/* 801A679C 001A379C  38 A0 00 03 */	li r5, 3
/* 801A67A0 001A37A0  38 C0 00 05 */	li r6, 5
/* 801A67A4 001A37A4  38 E0 00 07 */	li r7, 7
/* 801A67A8 001A37A8  4B FD EC D9 */	bl func_80185480
/* 801A67AC 001A37AC  38 60 00 01 */	li r3, 1
/* 801A67B0 001A37B0  38 80 00 0F */	li r4, 0xf
/* 801A67B4 001A37B4  38 A0 00 08 */	li r5, 8
/* 801A67B8 001A37B8  38 C0 00 00 */	li r6, 0
/* 801A67BC 001A37BC  38 E0 00 0F */	li r7, 0xf
/* 801A67C0 001A37C0  4B FD EC 7D */	bl func_8018543C
/* 801A67C4 001A37C4  38 60 00 01 */	li r3, 1
/* 801A67C8 001A37C8  38 80 00 07 */	li r4, 7
/* 801A67CC 001A37CC  38 A0 00 04 */	li r5, 4
/* 801A67D0 001A37D0  38 C0 00 00 */	li r6, 0
/* 801A67D4 001A37D4  38 E0 00 07 */	li r7, 7
/* 801A67D8 001A37D8  4B FD EC A9 */	bl func_80185480
/* 801A67DC 001A37DC  48 00 01 C8 */	b lbl_801A69A4
lbl_801A67E0:
/* 801A67E0 001A37E0  38 60 00 03 */	li r3, 3
/* 801A67E4 001A37E4  4B FD F2 C5 */	bl func_80185AA8
/* 801A67E8 001A37E8  38 60 00 01 */	li r3, 1
/* 801A67EC 001A37EC  4B FD C0 25 */	bl func_80182810
/* 801A67F0 001A37F0  38 60 00 00 */	li r3, 0
/* 801A67F4 001A37F4  38 80 00 00 */	li r4, 0
/* 801A67F8 001A37F8  38 A0 00 00 */	li r5, 0
/* 801A67FC 001A37FC  38 C0 00 04 */	li r6, 4
/* 801A6800 001A3800  4B FD F1 0D */	bl func_8018590C
/* 801A6804 001A3804  38 60 00 00 */	li r3, 0
/* 801A6808 001A3808  38 80 00 04 */	li r4, 4
/* 801A680C 001A380C  38 A0 00 02 */	li r5, 2
/* 801A6810 001A3810  38 C0 00 08 */	li r6, 8
/* 801A6814 001A3814  38 E0 00 0F */	li r7, 0xf
/* 801A6818 001A3818  4B FD EC 25 */	bl func_8018543C
/* 801A681C 001A381C  38 60 00 00 */	li r3, 0
/* 801A6820 001A3820  38 80 00 02 */	li r4, 2
/* 801A6824 001A3824  38 A0 00 01 */	li r5, 1
/* 801A6828 001A3828  38 C0 00 04 */	li r6, 4
/* 801A682C 001A382C  38 E0 00 07 */	li r7, 7
/* 801A6830 001A3830  4B FD EC 51 */	bl func_80185480
/* 801A6834 001A3834  38 60 00 01 */	li r3, 1
/* 801A6838 001A3838  38 80 00 0F */	li r4, 0xf
/* 801A683C 001A383C  38 A0 00 06 */	li r5, 6
/* 801A6840 001A3840  38 C0 00 00 */	li r6, 0
/* 801A6844 001A3844  38 E0 00 0F */	li r7, 0xf
/* 801A6848 001A3848  4B FD EB F5 */	bl func_8018543C
/* 801A684C 001A384C  38 60 00 01 */	li r3, 1
/* 801A6850 001A3850  38 80 00 07 */	li r4, 7
/* 801A6854 001A3854  38 A0 00 03 */	li r5, 3
/* 801A6858 001A3858  38 C0 00 00 */	li r6, 0
/* 801A685C 001A385C  38 E0 00 07 */	li r7, 7
/* 801A6860 001A3860  4B FD EC 21 */	bl func_80185480
/* 801A6864 001A3864  38 60 00 02 */	li r3, 2
/* 801A6868 001A3868  38 80 00 0F */	li r4, 0xf
/* 801A686C 001A386C  38 A0 00 0A */	li r5, 0xa
/* 801A6870 001A3870  38 C0 00 00 */	li r6, 0
/* 801A6874 001A3874  38 E0 00 0F */	li r7, 0xf
/* 801A6878 001A3878  4B FD EB C5 */	bl func_8018543C
/* 801A687C 001A387C  38 60 00 02 */	li r3, 2
/* 801A6880 001A3880  38 80 00 07 */	li r4, 7
/* 801A6884 001A3884  38 A0 00 05 */	li r5, 5
/* 801A6888 001A3888  38 C0 00 00 */	li r6, 0
/* 801A688C 001A388C  38 E0 00 07 */	li r7, 7
/* 801A6890 001A3890  4B FD EB F1 */	bl func_80185480
/* 801A6894 001A3894  48 00 01 10 */	b lbl_801A69A4
lbl_801A6898:
/* 801A6898 001A3898  80 03 00 04 */	lwz r0, 4(r3)
/* 801A689C 001A389C  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 801A68A0 001A38A0  90 03 00 04 */	stw r0, 4(r3)
/* 801A68A4 001A38A4  80 0D 8F 70 */	lwz r0, lbl_80277890-_SDA_BASE_(r13)
/* 801A68A8 001A38A8  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 801A68AC 001A38AC  90 0D 8F 70 */	stw r0, lbl_80277890-_SDA_BASE_(r13)
lbl_801A68B0:
/* 801A68B0 001A38B0  38 60 00 01 */	li r3, 1
/* 801A68B4 001A38B4  4B FD F1 F5 */	bl func_80185AA8
/* 801A68B8 001A38B8  38 60 00 00 */	li r3, 0
/* 801A68BC 001A38BC  4B FD BF 55 */	bl func_80182810
/* 801A68C0 001A38C0  38 60 00 00 */	li r3, 0
/* 801A68C4 001A38C4  38 80 00 FF */	li r4, 0xff
/* 801A68C8 001A38C8  38 A0 00 FF */	li r5, 0xff
/* 801A68CC 001A38CC  38 C0 00 04 */	li r6, 4
/* 801A68D0 001A38D0  4B FD F0 3D */	bl func_8018590C
/* 801A68D4 001A38D4  38 60 00 00 */	li r3, 0
/* 801A68D8 001A38D8  38 80 00 0A */	li r4, 0xa
/* 801A68DC 001A38DC  38 A0 00 0F */	li r5, 0xf
/* 801A68E0 001A38E0  38 C0 00 0F */	li r6, 0xf
/* 801A68E4 001A38E4  38 E0 00 0F */	li r7, 0xf
/* 801A68E8 001A38E8  4B FD EB 55 */	bl func_8018543C
/* 801A68EC 001A38EC  38 60 00 00 */	li r3, 0
/* 801A68F0 001A38F0  38 80 00 05 */	li r4, 5
/* 801A68F4 001A38F4  38 A0 00 07 */	li r5, 7
/* 801A68F8 001A38F8  38 C0 00 07 */	li r6, 7
/* 801A68FC 001A38FC  38 E0 00 07 */	li r7, 7
/* 801A6900 001A3900  4B FD EB 81 */	bl func_80185480
/* 801A6904 001A3904  48 00 00 A0 */	b lbl_801A69A4
lbl_801A6908:
/* 801A6908 001A3908  80 03 00 04 */	lwz r0, 4(r3)
/* 801A690C 001A390C  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 801A6910 001A3910  90 03 00 04 */	stw r0, 4(r3)
/* 801A6914 001A3914  80 0D 8F 70 */	lwz r0, lbl_80277890-_SDA_BASE_(r13)
/* 801A6918 001A3918  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 801A691C 001A391C  90 0D 8F 70 */	stw r0, lbl_80277890-_SDA_BASE_(r13)
lbl_801A6920:
/* 801A6920 001A3920  38 60 00 02 */	li r3, 2
/* 801A6924 001A3924  4B FD F1 85 */	bl func_80185AA8
/* 801A6928 001A3928  38 60 00 00 */	li r3, 0
/* 801A692C 001A392C  4B FD BE E5 */	bl func_80182810
/* 801A6930 001A3930  38 60 00 00 */	li r3, 0
/* 801A6934 001A3934  38 80 00 FF */	li r4, 0xff
/* 801A6938 001A3938  38 A0 00 FF */	li r5, 0xff
/* 801A693C 001A393C  38 C0 00 04 */	li r6, 4
/* 801A6940 001A3940  4B FD EF CD */	bl func_8018590C
/* 801A6944 001A3944  38 60 00 00 */	li r3, 0
/* 801A6948 001A3948  38 80 00 0F */	li r4, 0xf
/* 801A694C 001A394C  38 A0 00 06 */	li r5, 6
/* 801A6950 001A3950  38 C0 00 0A */	li r6, 0xa
/* 801A6954 001A3954  38 E0 00 0F */	li r7, 0xf
/* 801A6958 001A3958  4B FD EA E5 */	bl func_8018543C
/* 801A695C 001A395C  38 60 00 00 */	li r3, 0
/* 801A6960 001A3960  38 80 00 07 */	li r4, 7
/* 801A6964 001A3964  38 A0 00 03 */	li r5, 3
/* 801A6968 001A3968  38 C0 00 05 */	li r6, 5
/* 801A696C 001A396C  38 E0 00 07 */	li r7, 7
/* 801A6970 001A3970  4B FD EB 11 */	bl func_80185480
/* 801A6974 001A3974  38 60 00 01 */	li r3, 1
/* 801A6978 001A3978  38 80 00 0F */	li r4, 0xf
/* 801A697C 001A397C  38 A0 00 02 */	li r5, 2
/* 801A6980 001A3980  38 C0 00 00 */	li r6, 0
/* 801A6984 001A3984  38 E0 00 0F */	li r7, 0xf
/* 801A6988 001A3988  4B FD EA B5 */	bl func_8018543C
/* 801A698C 001A398C  38 60 00 01 */	li r3, 1
/* 801A6990 001A3990  38 80 00 07 */	li r4, 7
/* 801A6994 001A3994  38 A0 00 01 */	li r5, 1
/* 801A6998 001A3998  38 C0 00 00 */	li r6, 0
/* 801A699C 001A399C  38 E0 00 07 */	li r7, 7
/* 801A69A0 001A39A0  4B FD EA E1 */	bl func_80185480
lbl_801A69A4:
/* 801A69A4 001A39A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A69A8 001A39A8  7C 08 03 A6 */	mtlr r0
/* 801A69AC 001A39AC  38 21 00 10 */	addi r1, r1, 0x10
/* 801A69B0 001A39B0  4E 80 00 20 */	blr 
