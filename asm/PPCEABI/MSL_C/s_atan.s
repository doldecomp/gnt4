.include "macros.inc"

.section .text  # 0x80195D94 - 0x80195F94

.global atan
atan:
/* 80195D94 00192D94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80195D98 00192D98  3C 60 80 20 */	lis r3, lbl_802057E8@ha
/* 80195D9C 00192D9C  3C 00 44 10 */	lis r0, 0x4410
/* 80195DA0 00192DA0  D8 21 00 08 */	stfd f1, 8(r1)
/* 80195DA4 00192DA4  38 83 57 E8 */	addi r4, r3, lbl_802057E8@l
/* 80195DA8 00192DA8  80 C1 00 08 */	lwz r6, 8(r1)
/* 80195DAC 00192DAC  54 C5 00 7E */	clrlwi r5, r6, 1
/* 80195DB0 00192DB0  7C 05 00 00 */	cmpw r5, r0
/* 80195DB4 00192DB4  41 80 00 60 */	blt lbl_80195E14
/* 80195DB8 00192DB8  3C 00 7F F0 */	lis r0, 0x7ff0
/* 80195DBC 00192DBC  7C 05 00 00 */	cmpw r5, r0
/* 80195DC0 00192DC0  41 81 00 1C */	bgt lbl_80195DDC
/* 80195DC4 00192DC4  3C 05 80 10 */	addis r0, r5, 0x8010
/* 80195DC8 00192DC8  28 00 00 00 */	cmplwi r0, 0
/* 80195DCC 00192DCC  40 82 00 1C */	bne lbl_80195DE8
/* 80195DD0 00192DD0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80195DD4 00192DD4  2C 00 00 00 */	cmpwi r0, 0
/* 80195DD8 00192DD8  41 82 00 10 */	beq lbl_80195DE8
lbl_80195DDC:
/* 80195DDC 00192DDC  C8 01 00 08 */	lfd f0, 8(r1)
/* 80195DE0 00192DE0  FC 20 00 2A */	fadd f1, f0, f0
/* 80195DE4 00192DE4  48 00 01 A8 */	b lbl_80195F8C
lbl_80195DE8:
/* 80195DE8 00192DE8  2C 06 00 00 */	cmpwi r6, 0
/* 80195DEC 00192DEC  40 81 00 14 */	ble lbl_80195E00
/* 80195DF0 00192DF0  C8 24 00 18 */	lfd f1, 0x18(r4)
/* 80195DF4 00192DF4  C8 04 00 38 */	lfd f0, 0x38(r4)
/* 80195DF8 00192DF8  FC 21 00 2A */	fadd f1, f1, f0
/* 80195DFC 00192DFC  48 00 01 90 */	b lbl_80195F8C
lbl_80195E00:
/* 80195E00 00192E00  C8 24 00 18 */	lfd f1, 0x18(r4)
/* 80195E04 00192E04  C8 04 00 38 */	lfd f0, 0x38(r4)
/* 80195E08 00192E08  FC 20 08 50 */	fneg f1, f1
/* 80195E0C 00192E0C  FC 21 00 28 */	fsub f1, f1, f0
/* 80195E10 00192E10  48 00 01 7C */	b lbl_80195F8C
lbl_80195E14:
/* 80195E14 00192E14  3C 00 3F DC */	lis r0, 0x3fdc
/* 80195E18 00192E18  7C 05 00 00 */	cmpw r5, r0
/* 80195E1C 00192E1C  40 80 00 30 */	bge lbl_80195E4C
/* 80195E20 00192E20  3C 00 3E 20 */	lis r0, 0x3e20
/* 80195E24 00192E24  7C 05 00 00 */	cmpw r5, r0
/* 80195E28 00192E28  40 80 00 1C */	bge lbl_80195E44
/* 80195E2C 00192E2C  C8 42 C0 58 */	lfd f2, lbl_8027BCF8-_SDA2_BASE_(r2)
/* 80195E30 00192E30  C8 02 C0 60 */	lfd f0, lbl_8027BD00-_SDA2_BASE_(r2)
/* 80195E34 00192E34  FC 42 08 2A */	fadd f2, f2, f1
/* 80195E38 00192E38  FC 02 00 40 */	.byte 0xFC, 0x02, 0x00, 0x40  /* unknown instruction */
/* 80195E3C 00192E3C  40 81 00 08 */	ble lbl_80195E44
/* 80195E40 00192E40  48 00 01 4C */	b lbl_80195F8C
lbl_80195E44:
/* 80195E44 00192E44  38 00 FF FF */	li r0, -1
/* 80195E48 00192E48  48 00 00 A0 */	b lbl_80195EE8
lbl_80195E4C:
/* 80195E4C 00192E4C  FC 60 0A 10 */	fabs f3, f1
/* 80195E50 00192E50  3C 00 3F F3 */	lis r0, 0x3ff3
/* 80195E54 00192E54  7C 05 00 00 */	cmpw r5, r0
/* 80195E58 00192E58  D8 61 00 08 */	stfd f3, 8(r1)
/* 80195E5C 00192E5C  40 80 00 4C */	bge lbl_80195EA8
/* 80195E60 00192E60  3C 00 3F E6 */	lis r0, 0x3fe6
/* 80195E64 00192E64  7C 05 00 00 */	cmpw r5, r0
/* 80195E68 00192E68  40 80 00 24 */	bge lbl_80195E8C
/* 80195E6C 00192E6C  C8 42 C0 68 */	lfd f2, lbl_8027BD08-_SDA2_BASE_(r2)
/* 80195E70 00192E70  38 00 00 00 */	li r0, 0
/* 80195E74 00192E74  C8 22 C0 60 */	lfd f1, lbl_8027BD00-_SDA2_BASE_(r2)
/* 80195E78 00192E78  FC 02 18 2A */	fadd f0, f2, f3
/* 80195E7C 00192E7C  FC 22 08 F8 */	fmsub f1, f2, f3, f1
/* 80195E80 00192E80  FC 01 00 24 */	fdiv f0, f1, f0
/* 80195E84 00192E84  D8 01 00 08 */	stfd f0, 8(r1)
/* 80195E88 00192E88  48 00 00 60 */	b lbl_80195EE8
lbl_80195E8C:
/* 80195E8C 00192E8C  C8 02 C0 60 */	lfd f0, lbl_8027BD00-_SDA2_BASE_(r2)
/* 80195E90 00192E90  38 00 00 01 */	li r0, 1
/* 80195E94 00192E94  FC 23 00 28 */	fsub f1, f3, f0
/* 80195E98 00192E98  FC 00 18 2A */	fadd f0, f0, f3
/* 80195E9C 00192E9C  FC 01 00 24 */	fdiv f0, f1, f0
/* 80195EA0 00192EA0  D8 01 00 08 */	stfd f0, 8(r1)
/* 80195EA4 00192EA4  48 00 00 44 */	b lbl_80195EE8
lbl_80195EA8:
/* 80195EA8 00192EA8  3C 60 40 04 */	lis r3, 0x40038000@ha
/* 80195EAC 00192EAC  38 03 80 00 */	addi r0, r3, 0x40038000@l
/* 80195EB0 00192EB0  7C 05 00 00 */	cmpw r5, r0
/* 80195EB4 00192EB4  40 80 00 24 */	bge lbl_80195ED8
/* 80195EB8 00192EB8  C8 42 C0 70 */	lfd f2, lbl_8027BD10-_SDA2_BASE_(r2)
/* 80195EBC 00192EBC  38 00 00 02 */	li r0, 2
/* 80195EC0 00192EC0  C8 02 C0 60 */	lfd f0, lbl_8027BD00-_SDA2_BASE_(r2)
/* 80195EC4 00192EC4  FC 23 10 28 */	fsub f1, f3, f2
/* 80195EC8 00192EC8  FC 02 00 FA */	fmadd f0, f2, f3, f0
/* 80195ECC 00192ECC  FC 01 00 24 */	fdiv f0, f1, f0
/* 80195ED0 00192ED0  D8 01 00 08 */	stfd f0, 8(r1)
/* 80195ED4 00192ED4  48 00 00 14 */	b lbl_80195EE8
lbl_80195ED8:
/* 80195ED8 00192ED8  C8 02 C0 78 */	lfd f0, lbl_8027BD18-_SDA2_BASE_(r2)
/* 80195EDC 00192EDC  38 00 00 03 */	li r0, 3
/* 80195EE0 00192EE0  FC 00 18 24 */	fdiv f0, f0, f3
/* 80195EE4 00192EE4  D8 01 00 08 */	stfd f0, 8(r1)
lbl_80195EE8:
/* 80195EE8 00192EE8  C9 21 00 08 */	lfd f9, 8(r1)
/* 80195EEC 00192EEC  2C 00 00 00 */	cmpwi r0, 0
/* 80195EF0 00192EF0  C8 84 00 90 */	lfd f4, 0x90(r4)
/* 80195EF4 00192EF4  FD 69 02 72 */	fmul f11, f9, f9
/* 80195EF8 00192EF8  C8 24 00 80 */	lfd f1, 0x80(r4)
/* 80195EFC 00192EFC  C8 E4 00 70 */	lfd f7, 0x70(r4)
/* 80195F00 00192F00  C8 64 00 88 */	lfd f3, 0x88(r4)
/* 80195F04 00192F04  C8 04 00 78 */	lfd f0, 0x78(r4)
/* 80195F08 00192F08  FD 4B 02 F2 */	fmul f10, f11, f11
/* 80195F0C 00192F0C  C8 C4 00 60 */	lfd f6, 0x60(r4)
/* 80195F10 00192F10  C8 44 00 68 */	lfd f2, 0x68(r4)
/* 80195F14 00192F14  C8 A4 00 50 */	lfd f5, 0x50(r4)
/* 80195F18 00192F18  FD 0A 09 3A */	fmadd f8, f10, f4, f1
/* 80195F1C 00192F1C  C8 24 00 58 */	lfd f1, 0x58(r4)
/* 80195F20 00192F20  C8 84 00 40 */	lfd f4, 0x40(r4)
/* 80195F24 00192F24  FC 6A 00 FA */	fmadd f3, f10, f3, f0
/* 80195F28 00192F28  C8 04 00 48 */	lfd f0, 0x48(r4)
/* 80195F2C 00192F2C  FC EA 3A 3A */	fmadd f7, f10, f8, f7
/* 80195F30 00192F30  FC 4A 10 FA */	fmadd f2, f10, f3, f2
/* 80195F34 00192F34  FC 6A 31 FA */	fmadd f3, f10, f7, f6
/* 80195F38 00192F38  FC 2A 08 BA */	fmadd f1, f10, f2, f1
/* 80195F3C 00192F3C  FC 4A 28 FA */	fmadd f2, f10, f3, f5
/* 80195F40 00192F40  FC 0A 00 7A */	fmadd f0, f10, f1, f0
/* 80195F44 00192F44  FC 2A 20 BA */	fmadd f1, f10, f2, f4
/* 80195F48 00192F48  FC 4A 00 32 */	fmul f2, f10, f0
/* 80195F4C 00192F4C  FC 0B 00 72 */	fmul f0, f11, f1
/* 80195F50 00192F50  40 80 00 10 */	bge lbl_80195F60
/* 80195F54 00192F54  FC 00 10 2A */	fadd f0, f0, f2
/* 80195F58 00192F58  FC 29 48 3C */	fnmsub f1, f9, f0, f9
/* 80195F5C 00192F5C  48 00 00 30 */	b lbl_80195F8C
lbl_80195F60:
/* 80195F60 00192F60  54 00 18 38 */	slwi r0, r0, 3
/* 80195F64 00192F64  FC 20 10 2A */	fadd f1, f0, f2
/* 80195F68 00192F68  7C 64 02 14 */	add r3, r4, r0
/* 80195F6C 00192F6C  2C 06 00 00 */	cmpwi r6, 0
/* 80195F70 00192F70  C8 03 00 20 */	lfd f0, 0x20(r3)
/* 80195F74 00192F74  C8 43 00 00 */	lfd f2, 0(r3)
/* 80195F78 00192F78  FC 09 00 78 */	fmsub f0, f9, f1, f0
/* 80195F7C 00192F7C  FC 00 48 28 */	fsub f0, f0, f9
/* 80195F80 00192F80  FC 22 00 28 */	fsub f1, f2, f0
/* 80195F84 00192F84  40 80 00 08 */	bge lbl_80195F8C
/* 80195F88 00192F88  FC 20 08 50 */	fneg f1, f1
lbl_80195F8C:
/* 80195F8C 00192F8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80195F90 00192F90  4E 80 00 20 */	blr 
