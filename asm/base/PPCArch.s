.include "macros.inc"

.section .text  # 0x80164DE8 - 0x80164EFC

.global PPCMfmsr
PPCMfmsr:
/* 80164DE8 00161DE8  7C 60 00 A6 */	mfmsr r3
/* 80164DEC 00161DEC  4E 80 00 20 */	blr 

.global PPCMtmsr
PPCMtmsr:
/* 80164DF0 00161DF0  7C 60 01 24 */	mtmsr r3
/* 80164DF4 00161DF4  4E 80 00 20 */	blr 

.global PPCMfhid0
PPCMfhid0:
/* 80164DF8 00161DF8  7C 70 FA A6 */	mfspr r3, 0x3f0
/* 80164DFC 00161DFC  4E 80 00 20 */	blr 

.global PPCMthid0
PPCMthid0:
/* 80164E00 00161E00  7C 70 FB A6 */	mtspr 0x3f0, r3
/* 80164E04 00161E04  4E 80 00 20 */	blr 

.global PPCMfl2cr
PPCMfl2cr:
/* 80164E08 00161E08  7C 79 FA A6 */	mfspr r3, 0x3f9
/* 80164E0C 00161E0C  4E 80 00 20 */	blr 

.global PPCMtl2cr
PPCMtl2cr:
/* 80164E10 00161E10  7C 79 FB A6 */	mtspr 0x3f9, r3
/* 80164E14 00161E14  4E 80 00 20 */	blr 

.global PPCMtdec
PPCMtdec:
/* 80164E18 00161E18  7C 76 03 A6 */	mtspr 0x16, r3
/* 80164E1C 00161E1C  4E 80 00 20 */	blr 

.global PPCSync
PPCSync:
/* 80164E20 00161E20  44 00 00 02 */	sc 
/* 80164E24 00161E24  4E 80 00 20 */	blr 

.global PPCHalt
PPCHalt:
/* 80164E28 00161E28  7C 00 04 AC */	sync 0
lbl_80164E2C:
/* 80164E2C 00161E2C  60 00 00 00 */	nop 
/* 80164E30 00161E30  38 60 00 00 */	li r3, 0
/* 80164E34 00161E34  60 00 00 00 */	nop 
/* 80164E38 00161E38  4B FF FF F4 */	b lbl_80164E2C

.global PPCMtmmcr0
PPCMtmmcr0:
/* 80164E3C 00161E3C  7C 78 EB A6 */	mtspr 0x3b8, r3
/* 80164E40 00161E40  4E 80 00 20 */	blr 

.global PPCMtmmcr1
PPCMtmmcr1:
/* 80164E44 00161E44  7C 7C EB A6 */	mtspr 0x3bc, r3
/* 80164E48 00161E48  4E 80 00 20 */	blr 

.global PPCMtpmc1
PPCMtpmc1:
/* 80164E4C 00161E4C  7C 79 EB A6 */	mtspr 0x3b9, r3
/* 80164E50 00161E50  4E 80 00 20 */	blr 

.global PPCMtpmc2
PPCMtpmc2:
/* 80164E54 00161E54  7C 7A EB A6 */	mtspr 0x3ba, r3
/* 80164E58 00161E58  4E 80 00 20 */	blr 

.global PPCMtpmc3
PPCMtpmc3:
/* 80164E5C 00161E5C  7C 7D EB A6 */	mtspr 0x3bd, r3
/* 80164E60 00161E60  4E 80 00 20 */	blr 

.global PPCMtpmc4
PPCMtpmc4:
/* 80164E64 00161E64  7C 7E EB A6 */	mtspr 0x3be, r3
/* 80164E68 00161E68  4E 80 00 20 */	blr 

.global PPCMffpscr
PPCMffpscr:
/* 80164E6C 00161E6C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80164E70 00161E70  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80164E74 00161E74  FF E0 04 8E */	mffs f31
/* 80164E78 00161E78  DB E1 00 08 */	stfd f31, 8(r1)
/* 80164E7C 00161E7C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80164E80 00161E80  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80164E84 00161E84  38 21 00 18 */	addi r1, r1, 0x18
/* 80164E88 00161E88  4E 80 00 20 */	blr 

.global PPCMtfpscr
PPCMtfpscr:
/* 80164E8C 00161E8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80164E90 00161E90  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 80164E94 00161E94  38 80 00 00 */	li r4, 0
/* 80164E98 00161E98  90 81 00 10 */	stw r4, 0x10(r1)
/* 80164E9C 00161E9C  90 61 00 14 */	stw r3, 0x14(r1)
/* 80164EA0 00161EA0  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80164EA4 00161EA4  FD FE FD 8E */	mtfsf 0xff, f31
/* 80164EA8 00161EA8  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 80164EAC 00161EAC  38 21 00 20 */	addi r1, r1, 0x20
/* 80164EB0 00161EB0  4E 80 00 20 */	blr 

.global PPCMfhid2
PPCMfhid2:
/* 80164EB4 00161EB4  7C 78 E2 A6 */	mfspr r3, 0x398
/* 80164EB8 00161EB8  4E 80 00 20 */	blr 

.global PPCMthid2
PPCMthid2:
/* 80164EBC 00161EBC  7C 78 E3 A6 */	mtspr 0x398, r3
/* 80164EC0 00161EC0  4E 80 00 20 */	blr 

.global PPCMtwpar
PPCMtwpar:
/* 80164EC4 00161EC4  7C 79 E3 A6 */	mtspr 0x399, r3
/* 80164EC8 00161EC8  4E 80 00 20 */	blr 

.global PPCDisableSpeculation
PPCDisableSpeculation:
/* 80164ECC 00161ECC  7C 08 02 A6 */	mflr r0
/* 80164ED0 00161ED0  90 01 00 04 */	stw r0, 4(r1)
/* 80164ED4 00161ED4  94 21 FF F8 */	stwu r1, -8(r1)
/* 80164ED8 00161ED8  4B FF FF 21 */	bl PPCMfhid0
/* 80164EDC 00161EDC  60 63 02 00 */	ori r3, r3, 0x200
/* 80164EE0 00161EE0  4B FF FF 21 */	bl PPCMthid0
/* 80164EE4 00161EE4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80164EE8 00161EE8  38 21 00 08 */	addi r1, r1, 8
/* 80164EEC 00161EEC  7C 08 03 A6 */	mtlr r0
/* 80164EF0 00161EF0  4E 80 00 20 */	blr 

.global PPCSetFpNonIEEEMode
PPCSetFpNonIEEEMode:
/* 80164EF4 00161EF4  FF A0 00 4C */	mtfsb1 0x1d
/* 80164EF8 00161EF8  4E 80 00 20 */	blr 
