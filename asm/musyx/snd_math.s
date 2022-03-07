.include "macros.inc"

.section .text  # 0x801F7D14 - 0x801FA184

.global salApplyMatrix
salApplyMatrix:
/* 801F7D14 001F4D14  C0 63 00 00 */	lfs f3, 0(r3)
/* 801F7D18 001F4D18  C0 44 00 00 */	lfs f2, 0(r4)
/* 801F7D1C 001F4D1C  C0 23 00 04 */	lfs f1, 4(r3)
/* 801F7D20 001F4D20  C0 04 00 04 */	lfs f0, 4(r4)
/* 801F7D24 001F4D24  EC 43 00 B2 */	fmuls f2, f3, f2
/* 801F7D28 001F4D28  C0 63 00 08 */	lfs f3, 8(r3)
/* 801F7D2C 001F4D2C  EC 01 00 32 */	fmuls f0, f1, f0
/* 801F7D30 001F4D30  C0 24 00 08 */	lfs f1, 8(r4)
/* 801F7D34 001F4D34  C0 83 00 24 */	lfs f4, 0x24(r3)
/* 801F7D38 001F4D38  EC 23 00 72 */	fmuls f1, f3, f1
/* 801F7D3C 001F4D3C  EC 02 00 2A */	fadds f0, f2, f0
/* 801F7D40 001F4D40  EC 01 00 2A */	fadds f0, f1, f0
/* 801F7D44 001F4D44  EC 04 00 2A */	fadds f0, f4, f0
/* 801F7D48 001F4D48  D0 05 00 00 */	stfs f0, 0(r5)
/* 801F7D4C 001F4D4C  C0 63 00 0C */	lfs f3, 0xc(r3)
/* 801F7D50 001F4D50  C0 44 00 00 */	lfs f2, 0(r4)
/* 801F7D54 001F4D54  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 801F7D58 001F4D58  C0 04 00 04 */	lfs f0, 4(r4)
/* 801F7D5C 001F4D5C  EC 43 00 B2 */	fmuls f2, f3, f2
/* 801F7D60 001F4D60  C0 63 00 14 */	lfs f3, 0x14(r3)
/* 801F7D64 001F4D64  EC 01 00 32 */	fmuls f0, f1, f0
/* 801F7D68 001F4D68  C0 24 00 08 */	lfs f1, 8(r4)
/* 801F7D6C 001F4D6C  C0 83 00 28 */	lfs f4, 0x28(r3)
/* 801F7D70 001F4D70  EC 23 00 72 */	fmuls f1, f3, f1
/* 801F7D74 001F4D74  EC 02 00 2A */	fadds f0, f2, f0
/* 801F7D78 001F4D78  EC 01 00 2A */	fadds f0, f1, f0
/* 801F7D7C 001F4D7C  EC 04 00 2A */	fadds f0, f4, f0
/* 801F7D80 001F4D80  D0 05 00 04 */	stfs f0, 4(r5)
/* 801F7D84 001F4D84  C0 63 00 18 */	lfs f3, 0x18(r3)
/* 801F7D88 001F4D88  C0 44 00 00 */	lfs f2, 0(r4)
/* 801F7D8C 001F4D8C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 801F7D90 001F4D90  C0 04 00 04 */	lfs f0, 4(r4)
/* 801F7D94 001F4D94  EC 43 00 B2 */	fmuls f2, f3, f2
/* 801F7D98 001F4D98  C0 63 00 20 */	lfs f3, 0x20(r3)
/* 801F7D9C 001F4D9C  EC 01 00 32 */	fmuls f0, f1, f0
/* 801F7DA0 001F4DA0  C0 24 00 08 */	lfs f1, 8(r4)
/* 801F7DA4 001F4DA4  C0 83 00 2C */	lfs f4, 0x2c(r3)
/* 801F7DA8 001F4DA8  EC 23 00 72 */	fmuls f1, f3, f1
/* 801F7DAC 001F4DAC  EC 02 00 2A */	fadds f0, f2, f0
/* 801F7DB0 001F4DB0  EC 01 00 2A */	fadds f0, f1, f0
/* 801F7DB4 001F4DB4  EC 04 00 2A */	fadds f0, f4, f0
/* 801F7DB8 001F4DB8  D0 05 00 08 */	stfs f0, 8(r5)
/* 801F7DBC 001F4DBC  4E 80 00 20 */	blr 

.global salNormalizeVector
salNormalizeVector:
/* 801F7DC0 001F4DC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F7DC4 001F4DC4  C0 23 00 00 */	lfs f1, 0(r3)
/* 801F7DC8 001F4DC8  C0 03 00 04 */	lfs f0, 4(r3)
/* 801F7DCC 001F4DCC  EC 41 00 72 */	fmuls f2, f1, f1
/* 801F7DD0 001F4DD0  C0 63 00 08 */	lfs f3, 8(r3)
/* 801F7DD4 001F4DD4  EC 20 00 32 */	fmuls f1, f0, f0
/* 801F7DD8 001F4DD8  C0 02 C8 30 */	lfs f0, lbl_8027C4D0@sda21(r2)
/* 801F7DDC 001F4DDC  EC 63 00 F2 */	fmuls f3, f3, f3
/* 801F7DE0 001F4DE0  EC 22 08 2A */	fadds f1, f2, f1
/* 801F7DE4 001F4DE4  EC 23 08 2A */	fadds f1, f3, f1
/* 801F7DE8 001F4DE8  FC 01 00 40 */	.byte 0xFC, 0x01, 0x00, 0x40  /* unknown instruction */
/* 801F7DEC 001F4DEC  40 81 00 5C */	ble lbl_801F7E48
/* 801F7DF0 001F4DF0  FC 40 08 34 */	frsqrte f2, f1
/* 801F7DF4 001F4DF4  C8 82 C8 38 */	lfd f4, lbl_8027C4D8@sda21(r2)
/* 801F7DF8 001F4DF8  C8 62 C8 40 */	lfd f3, lbl_8027C4E0@sda21(r2)
/* 801F7DFC 001F4DFC  FC 02 00 B2 */	fmul f0, f2, f2
/* 801F7E00 001F4E00  FC 44 00 B2 */	fmul f2, f4, f2
/* 801F7E04 001F4E04  FC 01 00 32 */	fmul f0, f1, f0
/* 801F7E08 001F4E08  FC 03 00 28 */	fsub f0, f3, f0
/* 801F7E0C 001F4E0C  FC 42 00 32 */	fmul f2, f2, f0
/* 801F7E10 001F4E10  FC 02 00 B2 */	fmul f0, f2, f2
/* 801F7E14 001F4E14  FC 44 00 B2 */	fmul f2, f4, f2
/* 801F7E18 001F4E18  FC 01 00 32 */	fmul f0, f1, f0
/* 801F7E1C 001F4E1C  FC 03 00 28 */	fsub f0, f3, f0
/* 801F7E20 001F4E20  FC 42 00 32 */	fmul f2, f2, f0
/* 801F7E24 001F4E24  FC 02 00 B2 */	fmul f0, f2, f2
/* 801F7E28 001F4E28  FC 44 00 B2 */	fmul f2, f4, f2
/* 801F7E2C 001F4E2C  FC 01 00 32 */	fmul f0, f1, f0
/* 801F7E30 001F4E30  FC 03 00 28 */	fsub f0, f3, f0
/* 801F7E34 001F4E34  FC 02 00 32 */	fmul f0, f2, f0
/* 801F7E38 001F4E38  FC 01 00 32 */	fmul f0, f1, f0
/* 801F7E3C 001F4E3C  FC 00 00 18 */	frsp f0, f0
/* 801F7E40 001F4E40  D0 01 00 08 */	stfs f0, 8(r1)
/* 801F7E44 001F4E44  C0 21 00 08 */	lfs f1, 8(r1)
lbl_801F7E48:
/* 801F7E48 001F4E48  C0 03 00 00 */	lfs f0, 0(r3)
/* 801F7E4C 001F4E4C  EC 00 08 24 */	fdivs f0, f0, f1
/* 801F7E50 001F4E50  D0 03 00 00 */	stfs f0, 0(r3)
/* 801F7E54 001F4E54  C0 03 00 04 */	lfs f0, 4(r3)
/* 801F7E58 001F4E58  EC 00 08 24 */	fdivs f0, f0, f1
/* 801F7E5C 001F4E5C  D0 03 00 04 */	stfs f0, 4(r3)
/* 801F7E60 001F4E60  C0 03 00 08 */	lfs f0, 8(r3)
/* 801F7E64 001F4E64  EC 00 08 24 */	fdivs f0, f0, f1
/* 801F7E68 001F4E68  D0 03 00 08 */	stfs f0, 8(r3)
/* 801F7E6C 001F4E6C  38 21 00 10 */	addi r1, r1, 0x10
/* 801F7E70 001F4E70  4E 80 00 20 */	blr 
