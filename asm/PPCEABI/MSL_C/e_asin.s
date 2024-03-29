.include "macros.inc"

.section .text  # 0x801932A4 - 0x80193508

.global __ieee754_asin
__ieee754_asin:
/* 801932A4 001902A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801932A8 001902A8  3C 00 3F F0 */	lis r0, 0x3ff0
/* 801932AC 001902AC  D8 21 00 08 */	stfd f1, 8(r1)
/* 801932B0 001902B0  80 81 00 08 */	lwz r4, 8(r1)
/* 801932B4 001902B4  54 85 00 7E */	clrlwi r5, r4, 1
/* 801932B8 001902B8  7C 05 00 00 */	cmpw r5, r0
/* 801932BC 001902BC  41 80 00 34 */	blt lbl_801932F0
/* 801932C0 001902C0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801932C4 001902C4  3C 65 C0 10 */	addis r3, r5, 0xc010
/* 801932C8 001902C8  7C 60 03 79 */	or. r0, r3, r0
/* 801932CC 001902CC  40 82 00 18 */	bne lbl_801932E4
/* 801932D0 001902D0  C8 02 BC 18 */	lfd f0, lbl_8027B8B8-_SDA2_BASE_(r2)
/* 801932D4 001902D4  C8 42 BC 10 */	lfd f2, lbl_8027B8B0-_SDA2_BASE_(r2)
/* 801932D8 001902D8  FC 00 00 72 */	fmul f0, f0, f1
/* 801932DC 001902DC  FC 22 00 7A */	fmadd f1, f2, f1, f0
/* 801932E0 001902E0  48 00 02 20 */	b lbl_80193500
lbl_801932E4:
/* 801932E4 001902E4  3C 60 80 27 */	lis r3, lbl_80276B80@ha
/* 801932E8 001902E8  C0 23 6B 80 */	lfs f1, lbl_80276B80@l(r3)
/* 801932EC 001902EC  48 00 02 14 */	b lbl_80193500
lbl_801932F0:
/* 801932F0 001902F0  3C 00 3F E0 */	lis r0, 0x3fe0
/* 801932F4 001902F4  7C 05 00 00 */	cmpw r5, r0
/* 801932F8 001902F8  40 80 00 94 */	bge lbl_8019338C
/* 801932FC 001902FC  3C 00 3E 40 */	lis r0, 0x3e40
/* 80193300 00190300  7C 05 00 00 */	cmpw r5, r0
/* 80193304 00190304  40 80 00 1C */	bge lbl_80193320
/* 80193308 00190308  C8 62 BC 20 */	lfd f3, lbl_8027B8C0-_SDA2_BASE_(r2)
/* 8019330C 0019030C  C8 02 BC 28 */	lfd f0, lbl_8027B8C8-_SDA2_BASE_(r2)
/* 80193310 00190310  FC 63 08 2A */	fadd f3, f3, f1
/* 80193314 00190314  FC 03 00 40 */	.byte 0xFC, 0x03, 0x00, 0x40  /* unknown instruction */
/* 80193318 00190318  40 81 00 0C */	ble lbl_80193324
/* 8019331C 0019031C  48 00 01 E4 */	b lbl_80193500
lbl_80193320:
/* 80193320 00190320  FC 41 00 72 */	fmul f2, f1, f1
lbl_80193324:
/* 80193324 00190324  C8 22 BC 58 */	lfd f1, lbl_8027B8F8-_SDA2_BASE_(r2)
/* 80193328 00190328  C8 02 BC 50 */	lfd f0, lbl_8027B8F0-_SDA2_BASE_(r2)
/* 8019332C 0019032C  C8 62 BC 48 */	lfd f3, lbl_8027B8E8-_SDA2_BASE_(r2)
/* 80193330 00190330  FC 81 00 BA */	fmadd f4, f1, f2, f0
/* 80193334 00190334  C8 E2 BC 40 */	lfd f7, lbl_8027B8E0-_SDA2_BASE_(r2)
/* 80193338 00190338  C8 22 BC 78 */	lfd f1, lbl_8027B918-_SDA2_BASE_(r2)
/* 8019333C 0019033C  C8 02 BC 70 */	lfd f0, lbl_8027B910-_SDA2_BASE_(r2)
/* 80193340 00190340  C8 C2 BC 38 */	lfd f6, lbl_8027B8D8-_SDA2_BASE_(r2)
/* 80193344 00190344  FD 02 19 3A */	fmadd f8, f2, f4, f3
/* 80193348 00190348  C8 62 BC 68 */	lfd f3, lbl_8027B908-_SDA2_BASE_(r2)
/* 8019334C 0019034C  FC 81 00 BA */	fmadd f4, f1, f2, f0
/* 80193350 00190350  C8 A2 BC 30 */	lfd f5, lbl_8027B8D0-_SDA2_BASE_(r2)
/* 80193354 00190354  C8 22 BC 60 */	lfd f1, lbl_8027B900-_SDA2_BASE_(r2)
/* 80193358 00190358  FC E2 3A 3A */	fmadd f7, f2, f8, f7
/* 8019335C 0019035C  C8 02 BC 28 */	lfd f0, lbl_8027B8C8-_SDA2_BASE_(r2)
/* 80193360 00190360  FC 62 19 3A */	fmadd f3, f2, f4, f3
/* 80193364 00190364  C9 01 00 08 */	lfd f8, 8(r1)
/* 80193368 00190368  FC 82 31 FA */	fmadd f4, f2, f7, f6
/* 8019336C 0019036C  FC 22 08 FA */	fmadd f1, f2, f3, f1
/* 80193370 00190370  FC 62 29 3A */	fmadd f3, f2, f4, f5
/* 80193374 00190374  FC 02 00 7A */	fmadd f0, f2, f1, f0
/* 80193378 00190378  FC 22 00 F2 */	fmul f1, f2, f3
/* 8019337C 0019037C  FC 01 00 24 */	fdiv f0, f1, f0
/* 80193380 00190380  FC 28 40 3A */	fmadd f1, f8, f0, f8
/* 80193384 00190384  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80193388 00190388  48 00 01 78 */	b lbl_80193500
lbl_8019338C:
/* 8019338C 0019038C  FC 20 0A 10 */	fabs f1, f1
/* 80193390 00190390  C9 82 BC 28 */	lfd f12, lbl_8027B8C8-_SDA2_BASE_(r2)
/* 80193394 00190394  C8 02 BC 80 */	lfd f0, lbl_8027B920-_SDA2_BASE_(r2)
/* 80193398 00190398  C8 C2 BC 58 */	lfd f6, lbl_8027B8F8-_SDA2_BASE_(r2)
/* 8019339C 0019039C  FD 6C 08 28 */	fsub f11, f12, f1
/* 801933A0 001903A0  C8 82 BC 50 */	lfd f4, lbl_8027B8F0-_SDA2_BASE_(r2)
/* 801933A4 001903A4  C9 22 BC 48 */	lfd f9, lbl_8027B8E8-_SDA2_BASE_(r2)
/* 801933A8 001903A8  C9 02 BC 40 */	lfd f8, lbl_8027B8E0-_SDA2_BASE_(r2)
/* 801933AC 001903AC  FC 40 02 F2 */	fmul f2, f0, f11
/* 801933B0 001903B0  C8 22 BC 88 */	lfd f1, lbl_8027B928-_SDA2_BASE_(r2)
/* 801933B4 001903B4  C8 A2 BC 78 */	lfd f5, lbl_8027B918-_SDA2_BASE_(r2)
/* 801933B8 001903B8  C8 62 BC 70 */	lfd f3, lbl_8027B910-_SDA2_BASE_(r2)
/* 801933BC 001903BC  C8 E2 BC 38 */	lfd f7, lbl_8027B8D8-_SDA2_BASE_(r2)
/* 801933C0 001903C0  FD 46 20 BA */	fmadd f10, f6, f2, f4
/* 801933C4 001903C4  C8 82 BC 68 */	lfd f4, lbl_8027B908-_SDA2_BASE_(r2)
/* 801933C8 001903C8  FC A5 18 BA */	fmadd f5, f5, f2, f3
/* 801933CC 001903CC  C8 C2 BC 30 */	lfd f6, lbl_8027B8D0-_SDA2_BASE_(r2)
/* 801933D0 001903D0  C8 62 BC 60 */	lfd f3, lbl_8027B900-_SDA2_BASE_(r2)
/* 801933D4 001903D4  FD 22 4A BA */	fmadd f9, f2, f10, f9
/* 801933D8 001903D8  D9 61 00 10 */	stfd f11, 0x10(r1)
/* 801933DC 001903DC  FC 82 21 7A */	fmadd f4, f2, f5, f4
/* 801933E0 001903E0  FC A2 42 7A */	fmadd f5, f2, f9, f8
/* 801933E4 001903E4  FC 62 19 3A */	fmadd f3, f2, f4, f3
/* 801933E8 001903E8  FC 82 39 7A */	fmadd f4, f2, f5, f7
/* 801933EC 001903EC  FD 02 60 FA */	fmadd f8, f2, f3, f12
/* 801933F0 001903F0  FC 62 31 3A */	fmadd f3, f2, f4, f6
/* 801933F4 001903F4  FC 02 08 40 */	.byte 0xFC, 0x02, 0x08, 0x40  /* unknown instruction */
/* 801933F8 001903F8  FC A2 00 F2 */	fmul f5, f2, f3
/* 801933FC 001903FC  40 81 00 54 */	ble lbl_80193450
/* 80193400 00190400  FC 60 10 34 */	frsqrte f3, f2
/* 80193404 00190404  C8 82 BC 90 */	lfd f4, lbl_8027B930-_SDA2_BASE_(r2)
/* 80193408 00190408  FC 23 00 F2 */	fmul f1, f3, f3
/* 8019340C 0019040C  FC 60 00 F2 */	fmul f3, f0, f3
/* 80193410 00190410  FC 22 20 7C */	fnmsub f1, f2, f1, f4
/* 80193414 00190414  FC 63 00 72 */	fmul f3, f3, f1
/* 80193418 00190418  FC 23 00 F2 */	fmul f1, f3, f3
/* 8019341C 0019041C  FC 60 00 F2 */	fmul f3, f0, f3
/* 80193420 00190420  FC 22 20 7C */	fnmsub f1, f2, f1, f4
/* 80193424 00190424  FC 63 00 72 */	fmul f3, f3, f1
/* 80193428 00190428  FC 23 00 F2 */	fmul f1, f3, f3
/* 8019342C 0019042C  FC 60 00 F2 */	fmul f3, f0, f3
/* 80193430 00190430  FC 22 20 7C */	fnmsub f1, f2, f1, f4
/* 80193434 00190434  FC 63 00 72 */	fmul f3, f3, f1
/* 80193438 00190438  FC 23 00 F2 */	fmul f1, f3, f3
/* 8019343C 0019043C  FC 60 00 F2 */	fmul f3, f0, f3
/* 80193440 00190440  FC 02 20 7C */	fnmsub f0, f2, f1, f4
/* 80193444 00190444  FC 03 00 32 */	fmul f0, f3, f0
/* 80193448 00190448  FC 22 00 32 */	fmul f1, f2, f0
/* 8019344C 0019044C  48 00 00 2C */	b lbl_80193478
lbl_80193450:
/* 80193450 00190450  FC 01 10 00 */	fcmpu cr0, f1, f2
/* 80193454 00190454  40 82 00 08 */	bne lbl_8019345C
/* 80193458 00190458  48 00 00 20 */	b lbl_80193478
lbl_8019345C:
/* 8019345C 0019045C  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 80193460 00190460  41 82 00 10 */	beq lbl_80193470
/* 80193464 00190464  3C 60 80 27 */	lis r3, lbl_80276B80@ha
/* 80193468 00190468  C0 23 6B 80 */	lfs f1, lbl_80276B80@l(r3)
/* 8019346C 0019046C  48 00 00 0C */	b lbl_80193478
lbl_80193470:
/* 80193470 00190470  3C 60 80 27 */	lis r3, lbl_80276B84@ha
/* 80193474 00190474  C0 23 6B 84 */	lfs f1, lbl_80276B84@l(r3)
lbl_80193478:
/* 80193478 00190478  3C 60 3F EF */	lis r3, 0x3FEF3333@ha
/* 8019347C 0019047C  38 03 33 33 */	addi r0, r3, 0x3FEF3333@l
/* 80193480 00190480  7C 05 00 00 */	cmpw r5, r0
/* 80193484 00190484  41 80 00 28 */	blt lbl_801934AC
/* 80193488 00190488  FC 85 40 24 */	fdiv f4, f5, f8
/* 8019348C 0019048C  C8 42 BC 98 */	lfd f2, lbl_8027B938-_SDA2_BASE_(r2)
/* 80193490 00190490  C8 02 BC 18 */	lfd f0, lbl_8027B8B8-_SDA2_BASE_(r2)
/* 80193494 00190494  C8 62 BC 10 */	lfd f3, lbl_8027B8B0-_SDA2_BASE_(r2)
/* 80193498 00190498  FC 21 09 3A */	fmadd f1, f1, f4, f1
/* 8019349C 0019049C  D8 81 00 10 */	stfd f4, 0x10(r1)
/* 801934A0 001904A0  FC 02 00 78 */	fmsub f0, f2, f1, f0
/* 801934A4 001904A4  FC 23 00 28 */	fsub f1, f3, f0
/* 801934A8 001904A8  48 00 00 48 */	b lbl_801934F0
lbl_801934AC:
/* 801934AC 001904AC  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 801934B0 001904B0  38 00 00 00 */	li r0, 0
/* 801934B4 001904B4  C8 E2 BC 98 */	lfd f7, lbl_8027B938-_SDA2_BASE_(r2)
/* 801934B8 001904B8  FC A5 40 24 */	fdiv f5, f5, f8
/* 801934BC 001904BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801934C0 001904C0  C8 02 BC 18 */	lfd f0, lbl_8027B8B8-_SDA2_BASE_(r2)
/* 801934C4 001904C4  C9 01 00 10 */	lfd f8, 0x10(r1)
/* 801934C8 001904C8  C8 62 BC A0 */	lfd f3, lbl_8027B940-_SDA2_BASE_(r2)
/* 801934CC 001904CC  FC 88 12 3C */	fnmsub f4, f8, f8, f2
/* 801934D0 001904D0  FC 41 40 2A */	fadd f2, f1, f8
/* 801934D4 001904D4  FC C7 00 72 */	fmul f6, f7, f1
/* 801934D8 001904D8  FC 24 10 24 */	fdiv f1, f4, f2
/* 801934DC 001904DC  FC 27 00 7C */	fnmsub f1, f7, f1, f0
/* 801934E0 001904E0  FC 07 1A 3C */	fnmsub f0, f7, f8, f3
/* 801934E4 001904E4  FC 26 09 78 */	fmsub f1, f6, f5, f1
/* 801934E8 001904E8  FC 01 00 28 */	fsub f0, f1, f0
/* 801934EC 001904EC  FC 23 00 28 */	fsub f1, f3, f0
lbl_801934F0:
/* 801934F0 001904F0  2C 04 00 00 */	cmpwi r4, 0
/* 801934F4 001904F4  40 81 00 08 */	ble lbl_801934FC
/* 801934F8 001904F8  48 00 00 08 */	b lbl_80193500
lbl_801934FC:
/* 801934FC 001904FC  FC 20 08 50 */	fneg f1, f1
lbl_80193500:
/* 80193500 00190500  38 21 00 20 */	addi r1, r1, 0x20
/* 80193504 00190504  4E 80 00 20 */	blr 
