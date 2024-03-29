.include "macros.inc"

.section .text  # 0x801F5BCC - 0x801F62BC

.global salCalcVolume
salCalcVolume:
/* 801F5BCC 001F2BCC  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 801F5BD0 001F2BD0  7C 08 02 A6 */	mflr r0
/* 801F5BD4 001F2BD4  90 01 01 14 */	stw r0, 0x114(r1)
/* 801F5BD8 001F2BD8  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 801F5BDC 001F2BDC  F3 E1 01 08 */	psq_st p31, 264(r1), 0, qr0
/* 801F5BE0 001F2BE0  DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 801F5BE4 001F2BE4  F3 C1 00 F8 */	psq_st p30, 248(r1), 0, qr0
/* 801F5BE8 001F2BE8  DB A1 00 E0 */	stfd f29, 0xe0(r1)
/* 801F5BEC 001F2BEC  F3 A1 00 E8 */	psq_st p29, 232(r1), 0, qr0
/* 801F5BF0 001F2BF0  DB 81 00 D0 */	stfd f28, 0xd0(r1)
/* 801F5BF4 001F2BF4  F3 81 00 D8 */	psq_st p28, 216(r1), 0, qr0
/* 801F5BF8 001F2BF8  DB 61 00 C0 */	stfd f27, 0xc0(r1)
/* 801F5BFC 001F2BFC  F3 61 00 C8 */	psq_st p27, 200(r1), 0, qr0
/* 801F5C00 001F2C00  DB 41 00 B0 */	stfd f26, 0xb0(r1)
/* 801F5C04 001F2C04  F3 41 00 B8 */	psq_st p26, 184(r1), 0, qr0
/* 801F5C08 001F2C08  DB 21 00 A0 */	stfd f25, 0xa0(r1)
/* 801F5C0C 001F2C0C  F3 21 00 A8 */	psq_st p25, 168(r1), 0, qr0
/* 801F5C10 001F2C10  DB 01 00 90 */	stfd f24, 0x90(r1)
/* 801F5C14 001F2C14  F3 01 00 98 */	psq_st p24, 152(r1), 0, qr0
/* 801F5C18 001F2C18  DA E1 00 80 */	stfd f23, 0x80(r1)
/* 801F5C1C 001F2C1C  F2 E1 00 88 */	psq_st p23, 136(r1), 0, qr0
/* 801F5C20 001F2C20  DA C1 00 70 */	stfd f22, 0x70(r1)
/* 801F5C24 001F2C24  F2 C1 00 78 */	psq_st p22, 120(r1), 0, qr0
/* 801F5C28 001F2C28  DA A1 00 60 */	stfd f21, 0x60(r1)
/* 801F5C2C 001F2C2C  F2 A1 00 68 */	psq_st p21, 104(r1), 0, qr0
/* 801F5C30 001F2C30  DA 81 00 50 */	stfd f20, 0x50(r1)
/* 801F5C34 001F2C34  F2 81 00 58 */	psq_st p20, 88(r1), 0, qr0
/* 801F5C38 001F2C38  39 61 00 50 */	addi r11, r1, 0x50
/* 801F5C3C 001F2C3C  4B F9 86 29 */	bl _savegpr_21
/* 801F5C40 001F2C40  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801F5C44 001F2C44  3C 60 80 22 */	lis r3, lbl_8021E3D4@ha
/* 801F5C48 001F2C48  3B E3 E3 D4 */	addi r31, r3, lbl_8021E3D4@l
/* 801F5C4C 001F2C4C  FE C0 08 90 */	fmr f22, f1
/* 801F5C50 001F2C50  3C 60 80 22 */	lis r3, lbl_80220038@ha
/* 801F5C54 001F2C54  FF E0 10 90 */	fmr f31, f2
/* 801F5C58 001F2C58  FE A0 18 90 */	fmr f21, f3
/* 801F5C5C 001F2C5C  7C 99 23 78 */	mr r25, r4
/* 801F5C60 001F2C60  7C FA 3B 78 */	mr r26, r7
/* 801F5C64 001F2C64  7D 1B 43 78 */	mr r27, r8
/* 801F5C68 001F2C68  3B C3 00 38 */	addi r30, r3, lbl_80220038@l
/* 801F5C6C 001F2C6C  40 82 00 08 */	bne lbl_801F5C74
/* 801F5C70 001F2C70  3B FE 00 00 */	addi r31, r30, 0
lbl_801F5C74:
/* 801F5C74 001F2C74  3C 05 FF 80 */	addis r0, r5, 0xff80
/* 801F5C78 001F2C78  28 00 00 00 */	cmplwi r0, 0
/* 801F5C7C 001F2C7C  40 82 00 0C */	bne lbl_801F5C88
/* 801F5C80 001F2C80  38 A0 00 00 */	li r5, 0
/* 801F5C84 001F2C84  3C C0 00 7F */	lis r6, 0x7f
lbl_801F5C88:
/* 801F5C88 001F2C88  3C 80 00 01 */	lis r4, 1
/* 801F5C8C 001F2C8C  3C 00 43 30 */	lis r0, 0x4330
/* 801F5C90 001F2C90  7C 65 20 10 */	subfc r3, r5, r4
/* 801F5C94 001F2C94  3C E5 FF FF */	addis r7, r5, 0xffff
/* 801F5C98 001F2C98  7D 05 01 94 */	addze r8, r5
/* 801F5C9C 001F2C9C  3C 66 FF FF */	addis r3, r6, 0xffff
/* 801F5CA0 001F2CA0  7C 86 20 10 */	subfc r4, r6, r4
/* 801F5CA4 001F2CA4  90 01 00 08 */	stw r0, 8(r1)
/* 801F5CA8 001F2CA8  7C 86 01 94 */	addze r4, r6
/* 801F5CAC 001F2CAC  7C A8 28 50 */	subf r5, r8, r5
/* 801F5CB0 001F2CB0  7C 84 30 50 */	subf r4, r4, r6
/* 801F5CB4 001F2CB4  90 01 00 10 */	stw r0, 0x10(r1)
/* 801F5CB8 001F2CB8  7C E0 28 78 */	andc r0, r7, r5
/* 801F5CBC 001F2CBC  C8 42 C7 B8 */	lfd f2, lbl_8027C458-_SDA2_BASE_(r2)
/* 801F5CC0 001F2CC0  7C 63 20 78 */	andc r3, r3, r4
/* 801F5CC4 001F2CC4  90 01 00 0C */	stw r0, 0xc(r1)
/* 801F5CC8 001F2CC8  C0 62 C7 C0 */	lfs f3, lbl_8027C460-_SDA2_BASE_(r2)
/* 801F5CCC 001F2CCC  28 1B 00 00 */	cmplwi r27, 0
/* 801F5CD0 001F2CD0  90 61 00 14 */	stw r3, 0x14(r1)
/* 801F5CD4 001F2CD4  C8 21 00 08 */	lfd f1, 8(r1)
/* 801F5CD8 001F2CD8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801F5CDC 001F2CDC  EC 21 10 28 */	fsubs f1, f1, f2
/* 801F5CE0 001F2CE0  EC 00 10 28 */	fsubs f0, f0, f2
/* 801F5CE4 001F2CE4  EF 03 00 72 */	fmuls f24, f3, f1
/* 801F5CE8 001F2CE8  EE 83 00 32 */	fmuls f20, f3, f0
/* 801F5CEC 001F2CEC  41 82 00 44 */	beq lbl_801F5D30
/* 801F5CF0 001F2CF0  FC 20 C0 90 */	fmr f1, f24
/* 801F5CF4 001F2CF4  C8 42 C7 C8 */	lfd f2, lbl_8027C468-_SDA2_BASE_(r2)
/* 801F5CF8 001F2CF8  4B FA 09 FD */	bl fmod
/* 801F5CFC 001F2CFC  FF 40 08 18 */	frsp f26, f1
/* 801F5D00 001F2D00  FC 20 C0 90 */	fmr f1, f24
/* 801F5D04 001F2D04  4B F9 84 51 */	bl __cvt_fp2unsigned
/* 801F5D08 001F2D08  C0 02 C7 D0 */	lfs f0, lbl_8027C470-_SDA2_BASE_(r2)
/* 801F5D0C 001F2D0C  7C 7D 1B 78 */	mr r29, r3
/* 801F5D10 001F2D10  C8 42 C7 C8 */	lfd f2, lbl_8027C468-_SDA2_BASE_(r2)
/* 801F5D14 001F2D14  EE E0 C0 28 */	fsubs f23, f0, f24
/* 801F5D18 001F2D18  FC 20 B8 90 */	fmr f1, f23
/* 801F5D1C 001F2D1C  4B FA 09 D9 */	bl fmod
/* 801F5D20 001F2D20  FF 20 08 18 */	frsp f25, f1
/* 801F5D24 001F2D24  FC 20 B8 90 */	fmr f1, f23
/* 801F5D28 001F2D28  4B F9 84 2D */	bl __cvt_fp2unsigned
/* 801F5D2C 001F2D2C  7C 7C 1B 78 */	mr r28, r3
lbl_801F5D30:
/* 801F5D30 001F2D30  28 1A 00 00 */	cmplwi r26, 0
/* 801F5D34 001F2D34  41 82 00 18 */	beq lbl_801F5D4C
/* 801F5D38 001F2D38  C0 42 C7 AC */	lfs f2, lbl_8027C44C-_SDA2_BASE_(r2)
/* 801F5D3C 001F2D3C  C0 22 C7 D4 */	lfs f1, lbl_8027C474-_SDA2_BASE_(r2)
/* 801F5D40 001F2D40  EC 18 10 28 */	fsubs f0, f24, f2
/* 801F5D44 001F2D44  EC 01 00 32 */	fmuls f0, f1, f0
/* 801F5D48 001F2D48  EF 02 00 2A */	fadds f24, f2, f0
lbl_801F5D4C:
/* 801F5D4C 001F2D4C  FC 20 C0 90 */	fmr f1, f24
/* 801F5D50 001F2D50  C8 42 C7 C8 */	lfd f2, lbl_8027C468-_SDA2_BASE_(r2)
/* 801F5D54 001F2D54  4B FA 09 A1 */	bl fmod
/* 801F5D58 001F2D58  FF C0 08 18 */	frsp f30, f1
/* 801F5D5C 001F2D5C  FC 20 C0 90 */	fmr f1, f24
/* 801F5D60 001F2D60  4B F9 83 F5 */	bl __cvt_fp2unsigned
/* 801F5D64 001F2D64  FC 20 A0 90 */	fmr f1, f20
/* 801F5D68 001F2D68  C8 42 C7 C8 */	lfd f2, lbl_8027C468-_SDA2_BASE_(r2)
/* 801F5D6C 001F2D6C  7C 76 1B 78 */	mr r22, r3
/* 801F5D70 001F2D70  4B FA 09 85 */	bl fmod
/* 801F5D74 001F2D74  FF A0 08 18 */	frsp f29, f1
/* 801F5D78 001F2D78  FC 20 A0 90 */	fmr f1, f20
/* 801F5D7C 001F2D7C  4B F9 83 D9 */	bl __cvt_fp2unsigned
/* 801F5D80 001F2D80  C0 02 C7 D0 */	lfs f0, lbl_8027C470-_SDA2_BASE_(r2)
/* 801F5D84 001F2D84  7C 77 1B 78 */	mr r23, r3
/* 801F5D88 001F2D88  C8 42 C7 C8 */	lfd f2, lbl_8027C468-_SDA2_BASE_(r2)
/* 801F5D8C 001F2D8C  EE E0 C0 28 */	fsubs f23, f0, f24
/* 801F5D90 001F2D90  EE 80 A0 28 */	fsubs f20, f0, f20
/* 801F5D94 001F2D94  FC 20 B8 90 */	fmr f1, f23
/* 801F5D98 001F2D98  4B FA 09 5D */	bl fmod
/* 801F5D9C 001F2D9C  FF 80 08 18 */	frsp f28, f1
/* 801F5DA0 001F2DA0  FC 20 B8 90 */	fmr f1, f23
/* 801F5DA4 001F2DA4  4B F9 83 B1 */	bl __cvt_fp2unsigned
/* 801F5DA8 001F2DA8  FC 20 A0 90 */	fmr f1, f20
/* 801F5DAC 001F2DAC  C8 42 C7 C8 */	lfd f2, lbl_8027C468-_SDA2_BASE_(r2)
/* 801F5DB0 001F2DB0  7C 78 1B 78 */	mr r24, r3
/* 801F5DB4 001F2DB4  4B FA 09 41 */	bl fmod
/* 801F5DB8 001F2DB8  FF 60 08 18 */	frsp f27, f1
/* 801F5DBC 001F2DBC  FC 20 A0 90 */	fmr f1, f20
/* 801F5DC0 001F2DC0  4B F9 83 95 */	bl __cvt_fp2unsigned
/* 801F5DC4 001F2DC4  28 1B 00 00 */	cmplwi r27, 0
/* 801F5DC8 001F2DC8  7C 7A 1B 78 */	mr r26, r3
/* 801F5DCC 001F2DCC  40 82 02 7C */	bne lbl_801F6048
/* 801F5DD0 001F2DD0  C0 02 C7 A8 */	lfs f0, lbl_8027C448-_SDA2_BASE_(r2)
/* 801F5DD4 001F2DD4  EE 80 05 B2 */	fmuls f20, f0, f22
/* 801F5DD8 001F2DD8  FC 20 A0 90 */	fmr f1, f20
/* 801F5DDC 001F2DDC  4B F9 83 79 */	bl __cvt_fp2unsigned
/* 801F5DE0 001F2DE0  3C 00 43 30 */	lis r0, 0x4330
/* 801F5DE4 001F2DE4  C0 E2 C7 AC */	lfs f7, lbl_8027C44C-_SDA2_BASE_(r2)
/* 801F5DE8 001F2DE8  90 61 00 14 */	stw r3, 0x14(r1)
/* 801F5DEC 001F2DEC  54 64 10 3A */	slwi r4, r3, 2
/* 801F5DF0 001F2DF0  3B 9E 02 04 */	addi r28, r30, 0x204
/* 801F5DF4 001F2DF4  56 F7 10 3A */	slwi r23, r23, 2
/* 801F5DF8 001F2DF8  90 01 00 10 */	stw r0, 0x10(r1)
/* 801F5DFC 001F2DFC  7C 7F 22 14 */	add r3, r31, r4
/* 801F5E00 001F2E00  C8 22 C7 B8 */	lfd f1, lbl_8027C458-_SDA2_BASE_(r2)
/* 801F5E04 001F2E04  3B 7C 00 04 */	addi r27, r28, 4
/* 801F5E08 001F2E08  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801F5E0C 001F2E0C  EF 47 E8 28 */	fsubs f26, f7, f29
/* 801F5E10 001F2E10  7C 5C BC 2E */	lfsx f2, r28, r23
/* 801F5E14 001F2E14  57 5A 10 3A */	slwi r26, r26, 2
/* 801F5E18 001F2E18  EC 60 08 28 */	fsubs f3, f0, f1
/* 801F5E1C 001F2E1C  7C 3B BC 2E */	lfsx f1, r27, r23
/* 801F5E20 001F2E20  C0 02 C7 A8 */	lfs f0, lbl_8027C448-_SDA2_BASE_(r2)
/* 801F5E24 001F2E24  7C BF 24 2E */	lfsx f5, r31, r4
/* 801F5E28 001F2E28  EC 5A 00 B2 */	fmuls f2, f26, f2
/* 801F5E2C 001F2E2C  ED 14 18 28 */	fsubs f8, f20, f3
/* 801F5E30 001F2E30  C0 83 00 04 */	lfs f4, 4(r3)
/* 801F5E34 001F2E34  EC 3D 00 72 */	fmuls f1, f29, f1
/* 801F5E38 001F2E38  EF 20 07 F2 */	fmuls f25, f0, f31
/* 801F5E3C 001F2E3C  C0 62 C7 B0 */	lfs f3, lbl_8027C450-_SDA2_BASE_(r2)
/* 801F5E40 001F2E40  EC C7 40 28 */	fsubs f6, f7, f8
/* 801F5E44 001F2E44  EC 08 01 32 */	fmuls f0, f8, f4
/* 801F5E48 001F2E48  56 D6 10 3A */	slwi r22, r22, 2
/* 801F5E4C 001F2E4C  EC 42 08 2A */	fadds f2, f2, f1
/* 801F5E50 001F2E50  EC 26 01 72 */	fmuls f1, f6, f5
/* 801F5E54 001F2E54  57 18 10 3A */	slwi r24, r24, 2
/* 801F5E58 001F2E58  EF E7 D8 28 */	fsubs f31, f7, f27
/* 801F5E5C 001F2E5C  EF 07 F0 28 */	fsubs f24, f7, f30
/* 801F5E60 001F2E60  EC 01 00 2A */	fadds f0, f1, f0
/* 801F5E64 001F2E64  EE E7 E0 28 */	fsubs f23, f7, f28
/* 801F5E68 001F2E68  FC 20 C8 90 */	fmr f1, f25
/* 801F5E6C 001F2E6C  EC 40 00 B2 */	fmuls f2, f0, f2
/* 801F5E70 001F2E70  EC 43 00 B2 */	fmuls f2, f3, f2
/* 801F5E74 001F2E74  D0 59 00 08 */	stfs f2, 8(r25)
/* 801F5E78 001F2E78  7C 9C D4 2E */	lfsx f4, r28, r26
/* 801F5E7C 001F2E7C  7C 5B D4 2E */	lfsx f2, r27, r26
/* 801F5E80 001F2E80  7C 7C B4 2E */	lfsx f3, r28, r22
/* 801F5E84 001F2E84  EC BF 01 32 */	fmuls f5, f31, f4
/* 801F5E88 001F2E88  EC 9B 00 B2 */	fmuls f4, f27, f2
/* 801F5E8C 001F2E8C  7C 5B B4 2E */	lfsx f2, r27, r22
/* 801F5E90 001F2E90  EC 78 00 F2 */	fmuls f3, f24, f3
/* 801F5E94 001F2E94  EC 5E 00 B2 */	fmuls f2, f30, f2
/* 801F5E98 001F2E98  EC 85 20 2A */	fadds f4, f5, f4
/* 801F5E9C 001F2E9C  EC 43 10 2A */	fadds f2, f3, f2
/* 801F5EA0 001F2EA0  EC 00 01 32 */	fmuls f0, f0, f4
/* 801F5EA4 001F2EA4  EC 40 00 B2 */	fmuls f2, f0, f2
/* 801F5EA8 001F2EA8  D0 59 00 04 */	stfs f2, 4(r25)
/* 801F5EAC 001F2EAC  7C 7C C4 2E */	lfsx f3, r28, r24
/* 801F5EB0 001F2EB0  7C 5B C4 2E */	lfsx f2, r27, r24
/* 801F5EB4 001F2EB4  EC 77 00 F2 */	fmuls f3, f23, f3
/* 801F5EB8 001F2EB8  EC 5C 00 B2 */	fmuls f2, f28, f2
/* 801F5EBC 001F2EBC  EC 43 10 2A */	fadds f2, f3, f2
/* 801F5EC0 001F2EC0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801F5EC4 001F2EC4  D0 19 00 00 */	stfs f0, 0(r25)
/* 801F5EC8 001F2EC8  4B F9 82 8D */	bl __cvt_fp2unsigned
/* 801F5ECC 001F2ECC  3C 00 43 30 */	lis r0, 0x4330
/* 801F5ED0 001F2ED0  54 64 10 3A */	slwi r4, r3, 2
/* 801F5ED4 001F2ED4  90 61 00 0C */	stw r3, 0xc(r1)
/* 801F5ED8 001F2ED8  7C 7F 22 14 */	add r3, r31, r4
/* 801F5EDC 001F2EDC  7C 1C BC 2E */	lfsx f0, r28, r23
/* 801F5EE0 001F2EE0  90 01 00 08 */	stw r0, 8(r1)
/* 801F5EE4 001F2EE4  C8 62 C7 B8 */	lfd f3, lbl_8027C458-_SDA2_BASE_(r2)
/* 801F5EE8 001F2EE8  EC 5A 00 32 */	fmuls f2, f26, f0
/* 801F5EEC 001F2EEC  C8 01 00 08 */	lfd f0, 8(r1)
/* 801F5EF0 001F2EF0  7C 3B BC 2E */	lfsx f1, r27, r23
/* 801F5EF4 001F2EF4  EC 60 18 28 */	fsubs f3, f0, f3
/* 801F5EF8 001F2EF8  C0 02 C7 A8 */	lfs f0, lbl_8027C448-_SDA2_BASE_(r2)
/* 801F5EFC 001F2EFC  EC 3D 00 72 */	fmuls f1, f29, f1
/* 801F5F00 001F2F00  C0 A2 C7 AC */	lfs f5, lbl_8027C44C-_SDA2_BASE_(r2)
/* 801F5F04 001F2F04  EE C0 05 72 */	fmuls f22, f0, f21
/* 801F5F08 001F2F08  7C 9F 24 2E */	lfsx f4, r31, r4
/* 801F5F0C 001F2F0C  EC D9 18 28 */	fsubs f6, f25, f3
/* 801F5F10 001F2F10  C0 63 00 04 */	lfs f3, 4(r3)
/* 801F5F14 001F2F14  EC 02 08 2A */	fadds f0, f2, f1
/* 801F5F18 001F2F18  C0 42 C7 B0 */	lfs f2, lbl_8027C450-_SDA2_BASE_(r2)
/* 801F5F1C 001F2F1C  FC 20 B0 90 */	fmr f1, f22
/* 801F5F20 001F2F20  EC A5 30 28 */	fsubs f5, f5, f6
/* 801F5F24 001F2F24  EC 66 00 F2 */	fmuls f3, f6, f3
/* 801F5F28 001F2F28  EC 85 01 32 */	fmuls f4, f5, f4
/* 801F5F2C 001F2F2C  EC A4 18 2A */	fadds f5, f4, f3
/* 801F5F30 001F2F30  EC 05 00 32 */	fmuls f0, f5, f0
/* 801F5F34 001F2F34  EC 02 00 32 */	fmuls f0, f2, f0
/* 801F5F38 001F2F38  D0 19 00 14 */	stfs f0, 0x14(r25)
/* 801F5F3C 001F2F3C  7C 7C D4 2E */	lfsx f3, r28, r26
/* 801F5F40 001F2F40  7C 1B D4 2E */	lfsx f0, r27, r26
/* 801F5F44 001F2F44  7C 5C B4 2E */	lfsx f2, r28, r22
/* 801F5F48 001F2F48  EC 9F 00 F2 */	fmuls f4, f31, f3
/* 801F5F4C 001F2F4C  EC 7B 00 32 */	fmuls f3, f27, f0
/* 801F5F50 001F2F50  7C 1B B4 2E */	lfsx f0, r27, r22
/* 801F5F54 001F2F54  EC 58 00 B2 */	fmuls f2, f24, f2
/* 801F5F58 001F2F58  EC 1E 00 32 */	fmuls f0, f30, f0
/* 801F5F5C 001F2F5C  EC 64 18 2A */	fadds f3, f4, f3
/* 801F5F60 001F2F60  EC 02 00 2A */	fadds f0, f2, f0
/* 801F5F64 001F2F64  EC A5 00 F2 */	fmuls f5, f5, f3
/* 801F5F68 001F2F68  EC 05 00 32 */	fmuls f0, f5, f0
/* 801F5F6C 001F2F6C  D0 19 00 10 */	stfs f0, 0x10(r25)
/* 801F5F70 001F2F70  7C 5C C4 2E */	lfsx f2, r28, r24
/* 801F5F74 001F2F74  7C 1B C4 2E */	lfsx f0, r27, r24
/* 801F5F78 001F2F78  EC 57 00 B2 */	fmuls f2, f23, f2
/* 801F5F7C 001F2F7C  EC 1C 00 32 */	fmuls f0, f28, f0
/* 801F5F80 001F2F80  EC 02 00 2A */	fadds f0, f2, f0
/* 801F5F84 001F2F84  EC 05 00 32 */	fmuls f0, f5, f0
/* 801F5F88 001F2F88  D0 19 00 0C */	stfs f0, 0xc(r25)
/* 801F5F8C 001F2F8C  4B F9 81 C9 */	bl __cvt_fp2unsigned
/* 801F5F90 001F2F90  3C 00 43 30 */	lis r0, 0x4330
/* 801F5F94 001F2F94  54 64 10 3A */	slwi r4, r3, 2
/* 801F5F98 001F2F98  90 61 00 1C */	stw r3, 0x1c(r1)
/* 801F5F9C 001F2F9C  7C 7F 22 14 */	add r3, r31, r4
/* 801F5FA0 001F2FA0  7C 1C BC 2E */	lfsx f0, r28, r23
/* 801F5FA4 001F2FA4  90 01 00 18 */	stw r0, 0x18(r1)
/* 801F5FA8 001F2FA8  C8 62 C7 B8 */	lfd f3, lbl_8027C458-_SDA2_BASE_(r2)
/* 801F5FAC 001F2FAC  EC 3A 00 32 */	fmuls f1, f26, f0
/* 801F5FB0 001F2FB0  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 801F5FB4 001F2FB4  7C 1B BC 2E */	lfsx f0, r27, r23
/* 801F5FB8 001F2FB8  EC A2 18 28 */	fsubs f5, f2, f3
/* 801F5FBC 001F2FBC  C0 82 C7 AC */	lfs f4, lbl_8027C44C-_SDA2_BASE_(r2)
/* 801F5FC0 001F2FC0  EC 1D 00 32 */	fmuls f0, f29, f0
/* 801F5FC4 001F2FC4  7C 7F 24 2E */	lfsx f3, r31, r4
/* 801F5FC8 001F2FC8  C0 43 00 04 */	lfs f2, 4(r3)
/* 801F5FCC 001F2FCC  EC B6 28 28 */	fsubs f5, f22, f5
/* 801F5FD0 001F2FD0  EC 01 00 2A */	fadds f0, f1, f0
/* 801F5FD4 001F2FD4  C0 22 C7 B0 */	lfs f1, lbl_8027C450-_SDA2_BASE_(r2)
/* 801F5FD8 001F2FD8  EC 84 28 28 */	fsubs f4, f4, f5
/* 801F5FDC 001F2FDC  EC 45 00 B2 */	fmuls f2, f5, f2
/* 801F5FE0 001F2FE0  EC 64 00 F2 */	fmuls f3, f4, f3
/* 801F5FE4 001F2FE4  EC 83 10 2A */	fadds f4, f3, f2
/* 801F5FE8 001F2FE8  EC 04 00 32 */	fmuls f0, f4, f0
/* 801F5FEC 001F2FEC  EC 01 00 32 */	fmuls f0, f1, f0
/* 801F5FF0 001F2FF0  D0 19 00 20 */	stfs f0, 0x20(r25)
/* 801F5FF4 001F2FF4  7C 5C D4 2E */	lfsx f2, r28, r26
/* 801F5FF8 001F2FF8  7C 1B D4 2E */	lfsx f0, r27, r26
/* 801F5FFC 001F2FFC  7C 3C B4 2E */	lfsx f1, r28, r22
/* 801F6000 001F3000  EC 7F 00 B2 */	fmuls f3, f31, f2
/* 801F6004 001F3004  EC 5B 00 32 */	fmuls f2, f27, f0
/* 801F6008 001F3008  7C 1B B4 2E */	lfsx f0, r27, r22
/* 801F600C 001F300C  EC 38 00 72 */	fmuls f1, f24, f1
/* 801F6010 001F3010  EC 1E 00 32 */	fmuls f0, f30, f0
/* 801F6014 001F3014  EC 43 10 2A */	fadds f2, f3, f2
/* 801F6018 001F3018  EC 01 00 2A */	fadds f0, f1, f0
/* 801F601C 001F301C  EC 84 00 B2 */	fmuls f4, f4, f2
/* 801F6020 001F3020  EC 04 00 32 */	fmuls f0, f4, f0
/* 801F6024 001F3024  D0 19 00 1C */	stfs f0, 0x1c(r25)
/* 801F6028 001F3028  7C 3C C4 2E */	lfsx f1, r28, r24
/* 801F602C 001F302C  7C 1B C4 2E */	lfsx f0, r27, r24
/* 801F6030 001F3030  EC 37 00 72 */	fmuls f1, f23, f1
/* 801F6034 001F3034  EC 1C 00 32 */	fmuls f0, f28, f0
/* 801F6038 001F3038  EC 01 00 2A */	fadds f0, f1, f0
/* 801F603C 001F303C  EC 04 00 32 */	fmuls f0, f4, f0
/* 801F6040 001F3040  D0 19 00 18 */	stfs f0, 0x18(r25)
/* 801F6044 001F3044  48 00 02 00 */	b lbl_801F6244
lbl_801F6048:
/* 801F6048 001F3048  C0 02 C7 A8 */	lfs f0, lbl_8027C448-_SDA2_BASE_(r2)
/* 801F604C 001F304C  EE 80 05 B2 */	fmuls f20, f0, f22
/* 801F6050 001F3050  FC 20 A0 90 */	fmr f1, f20
/* 801F6054 001F3054  4B F9 81 01 */	bl __cvt_fp2unsigned
/* 801F6058 001F3058  3C 00 43 30 */	lis r0, 0x4330
/* 801F605C 001F305C  C0 02 C7 AC */	lfs f0, lbl_8027C44C-_SDA2_BASE_(r2)
/* 801F6060 001F3060  90 61 00 1C */	stw r3, 0x1c(r1)
/* 801F6064 001F3064  54 64 10 3A */	slwi r4, r3, 2
/* 801F6068 001F3068  3B 7E 02 04 */	addi r27, r30, 0x204
/* 801F606C 001F306C  56 F7 10 3A */	slwi r23, r23, 2
/* 801F6070 001F3070  90 01 00 18 */	stw r0, 0x18(r1)
/* 801F6074 001F3074  7C 7F 22 14 */	add r3, r31, r4
/* 801F6078 001F3078  C8 62 C7 B8 */	lfd f3, lbl_8027C458-_SDA2_BASE_(r2)
/* 801F607C 001F307C  3A BB 00 04 */	addi r21, r27, 4
/* 801F6080 001F3080  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 801F6084 001F3084  57 5A 10 3A */	slwi r26, r26, 2
/* 801F6088 001F3088  56 D6 10 3A */	slwi r22, r22, 2
/* 801F608C 001F308C  7C 35 BC 2E */	lfsx f1, r21, r23
/* 801F6090 001F3090  EC A2 18 28 */	fsubs f5, f2, f3
/* 801F6094 001F3094  7C 75 D4 2E */	lfsx f3, r21, r26
/* 801F6098 001F3098  7C 55 B4 2E */	lfsx f2, r21, r22
/* 801F609C 001F309C  EE E0 E8 28 */	fsubs f23, f0, f29
/* 801F60A0 001F30A0  7C 9B BC 2E */	lfsx f4, r27, r23
/* 801F60A4 001F30A4  EF 00 D8 28 */	fsubs f24, f0, f27
/* 801F60A8 001F30A8  ED 34 28 28 */	fsubs f9, f20, f5
/* 801F60AC 001F30AC  C0 C3 00 04 */	lfs f6, 4(r3)
/* 801F60B0 001F30B0  7C BB D4 2E */	lfsx f5, r27, r26
/* 801F60B4 001F30B4  ED 17 01 32 */	fmuls f8, f23, f4
/* 801F60B8 001F30B8  7D 5F 24 2E */	lfsx f10, r31, r4
/* 801F60BC 001F30BC  EC FD 00 72 */	fmuls f7, f29, f1
/* 801F60C0 001F30C0  ED 60 48 28 */	fsubs f11, f0, f9
/* 801F60C4 001F30C4  7C 9B B4 2E */	lfsx f4, r27, r22
/* 801F60C8 001F30C8  EE A0 F0 28 */	fsubs f21, f0, f30
/* 801F60CC 001F30CC  C0 22 C7 A8 */	lfs f1, lbl_8027C448-_SDA2_BASE_(r2)
/* 801F60D0 001F30D0  ED 29 01 B2 */	fmuls f9, f9, f6
/* 801F60D4 001F30D4  57 18 10 3A */	slwi r24, r24, 2
/* 801F60D8 001F30D8  ED 4B 02 B2 */	fmuls f10, f11, f10
/* 801F60DC 001F30DC  57 A0 10 3A */	slwi r0, r29, 2
/* 801F60E0 001F30E0  EC D8 01 72 */	fmuls f6, f24, f5
/* 801F60E4 001F30E4  38 7E 02 14 */	addi r3, r30, 0x214
/* 801F60E8 001F30E8  EC BB 00 F2 */	fmuls f5, f27, f3
/* 801F60EC 001F30EC  57 84 10 3A */	slwi r4, r28, 2
/* 801F60F0 001F30F0  EC 6A 48 2A */	fadds f3, f10, f9
/* 801F60F4 001F30F4  EC E8 38 2A */	fadds f7, f8, f7
/* 801F60F8 001F30F8  EC C6 28 2A */	fadds f6, f6, f5
/* 801F60FC 001F30FC  EC B5 01 32 */	fmuls f5, f21, f4
/* 801F6100 001F3100  EC 9E 00 B2 */	fmuls f4, f30, f2
/* 801F6104 001F3104  EC 43 01 F2 */	fmuls f2, f3, f7
/* 801F6108 001F3108  EC 63 01 B2 */	fmuls f3, f3, f6
/* 801F610C 001F310C  EC 85 20 2A */	fadds f4, f5, f4
/* 801F6110 001F3110  EE 80 E0 28 */	fsubs f20, f0, f28
/* 801F6114 001F3114  EE C1 07 F2 */	fmuls f22, f1, f31
/* 801F6118 001F3118  EC 23 01 32 */	fmuls f1, f3, f4
/* 801F611C 001F311C  EC A0 D0 28 */	fsubs f5, f0, f26
/* 801F6120 001F3120  EC 80 C8 28 */	fsubs f4, f0, f25
/* 801F6124 001F3124  D0 39 00 04 */	stfs f1, 4(r25)
/* 801F6128 001F3128  FC 20 B0 90 */	fmr f1, f22
/* 801F612C 001F312C  7C DB C4 2E */	lfsx f6, r27, r24
/* 801F6130 001F3130  7C 15 C4 2E */	lfsx f0, r21, r24
/* 801F6134 001F3134  EC D4 01 B2 */	fmuls f6, f20, f6
/* 801F6138 001F3138  EC 1C 00 32 */	fmuls f0, f28, f0
/* 801F613C 001F313C  EC 06 00 2A */	fadds f0, f6, f0
/* 801F6140 001F3140  EC 03 00 32 */	fmuls f0, f3, f0
/* 801F6144 001F3144  D0 19 00 00 */	stfs f0, 0(r25)
/* 801F6148 001F3148  7C 63 04 2E */	lfsx f3, r3, r0
/* 801F614C 001F314C  7C 15 04 2E */	lfsx f0, r21, r0
/* 801F6150 001F3150  EC 65 00 F2 */	fmuls f3, f5, f3
/* 801F6154 001F3154  EC 1A 00 32 */	fmuls f0, f26, f0
/* 801F6158 001F3158  EC 03 00 2A */	fadds f0, f3, f0
/* 801F615C 001F315C  EC 02 00 32 */	fmuls f0, f2, f0
/* 801F6160 001F3160  D0 19 00 1C */	stfs f0, 0x1c(r25)
/* 801F6164 001F3164  7C 63 24 2E */	lfsx f3, r3, r4
/* 801F6168 001F3168  7C 15 24 2E */	lfsx f0, r21, r4
/* 801F616C 001F316C  EC 64 00 F2 */	fmuls f3, f4, f3
/* 801F6170 001F3170  EC 19 00 32 */	fmuls f0, f25, f0
/* 801F6174 001F3174  EC 03 00 2A */	fadds f0, f3, f0
/* 801F6178 001F3178  EC 02 00 32 */	fmuls f0, f2, f0
/* 801F617C 001F317C  D0 19 00 18 */	stfs f0, 0x18(r25)
/* 801F6180 001F3180  4B F9 7F D5 */	bl __cvt_fp2unsigned
/* 801F6184 001F3184  3C 00 43 30 */	lis r0, 0x4330
/* 801F6188 001F3188  54 64 10 3A */	slwi r4, r3, 2
/* 801F618C 001F318C  90 61 00 14 */	stw r3, 0x14(r1)
/* 801F6190 001F3190  7C 7F 22 14 */	add r3, r31, r4
/* 801F6194 001F3194  7C 1B BC 2E */	lfsx f0, r27, r23
/* 801F6198 001F3198  90 01 00 10 */	stw r0, 0x10(r1)
/* 801F619C 001F319C  C8 62 C7 B8 */	lfd f3, lbl_8027C458-_SDA2_BASE_(r2)
/* 801F61A0 001F31A0  EC 37 00 32 */	fmuls f1, f23, f0
/* 801F61A4 001F31A4  C8 41 00 10 */	lfd f2, 0x10(r1)
/* 801F61A8 001F31A8  7C 15 BC 2E */	lfsx f0, r21, r23
/* 801F61AC 001F31AC  EC 42 18 28 */	fsubs f2, f2, f3
/* 801F61B0 001F31B0  C0 A2 C7 AC */	lfs f5, lbl_8027C44C-_SDA2_BASE_(r2)
/* 801F61B4 001F31B4  EC 1D 00 32 */	fmuls f0, f29, f0
/* 801F61B8 001F31B8  7C 9F 24 2E */	lfsx f4, r31, r4
/* 801F61BC 001F31BC  C0 63 00 04 */	lfs f3, 4(r3)
/* 801F61C0 001F31C0  EC D6 10 28 */	fsubs f6, f22, f2
/* 801F61C4 001F31C4  EC 21 00 2A */	fadds f1, f1, f0
/* 801F61C8 001F31C8  C0 42 C7 B0 */	lfs f2, lbl_8027C450-_SDA2_BASE_(r2)
/* 801F61CC 001F31CC  C0 02 C7 D8 */	lfs f0, lbl_8027C478-_SDA2_BASE_(r2)
/* 801F61D0 001F31D0  EC A5 30 28 */	fsubs f5, f5, f6
/* 801F61D4 001F31D4  EC 66 00 F2 */	fmuls f3, f6, f3
/* 801F61D8 001F31D8  EC 85 01 32 */	fmuls f4, f5, f4
/* 801F61DC 001F31DC  EC A4 18 2A */	fadds f5, f4, f3
/* 801F61E0 001F31E0  EC 25 00 72 */	fmuls f1, f5, f1
/* 801F61E4 001F31E4  EC 22 00 72 */	fmuls f1, f2, f1
/* 801F61E8 001F31E8  D0 39 00 14 */	stfs f1, 0x14(r25)
/* 801F61EC 001F31EC  7C 7B D4 2E */	lfsx f3, r27, r26
/* 801F61F0 001F31F0  7C 35 D4 2E */	lfsx f1, r21, r26
/* 801F61F4 001F31F4  7C 5B B4 2E */	lfsx f2, r27, r22
/* 801F61F8 001F31F8  EC 98 00 F2 */	fmuls f4, f24, f3
/* 801F61FC 001F31FC  EC 7B 00 72 */	fmuls f3, f27, f1
/* 801F6200 001F3200  7C 35 B4 2E */	lfsx f1, r21, r22
/* 801F6204 001F3204  EC 55 00 B2 */	fmuls f2, f21, f2
/* 801F6208 001F3208  EC 3E 00 72 */	fmuls f1, f30, f1
/* 801F620C 001F320C  EC 64 18 2A */	fadds f3, f4, f3
/* 801F6210 001F3210  EC 22 08 2A */	fadds f1, f2, f1
/* 801F6214 001F3214  EC A5 00 F2 */	fmuls f5, f5, f3
/* 801F6218 001F3218  EC 25 00 72 */	fmuls f1, f5, f1
/* 801F621C 001F321C  D0 39 00 10 */	stfs f1, 0x10(r25)
/* 801F6220 001F3220  7C 5B C4 2E */	lfsx f2, r27, r24
/* 801F6224 001F3224  7C 35 C4 2E */	lfsx f1, r21, r24
/* 801F6228 001F3228  EC 54 00 B2 */	fmuls f2, f20, f2
/* 801F622C 001F322C  EC 3C 00 72 */	fmuls f1, f28, f1
/* 801F6230 001F3230  EC 22 08 2A */	fadds f1, f2, f1
/* 801F6234 001F3234  EC 25 00 72 */	fmuls f1, f5, f1
/* 801F6238 001F3238  D0 39 00 0C */	stfs f1, 0xc(r25)
/* 801F623C 001F323C  D0 19 00 08 */	stfs f0, 8(r25)
/* 801F6240 001F3240  D0 19 00 20 */	stfs f0, 0x20(r25)
lbl_801F6244:
/* 801F6244 001F3244  E3 E1 01 08 */	psq_l p31, 264(r1), 0, qr0
/* 801F6248 001F3248  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 801F624C 001F324C  E3 C1 00 F8 */	psq_l p30, 248(r1), 0, qr0
/* 801F6250 001F3250  CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 801F6254 001F3254  E3 A1 00 E8 */	psq_l p29, 232(r1), 0, qr0
/* 801F6258 001F3258  CB A1 00 E0 */	lfd f29, 0xe0(r1)
/* 801F625C 001F325C  E3 81 00 D8 */	psq_l p28, 216(r1), 0, qr0
/* 801F6260 001F3260  CB 81 00 D0 */	lfd f28, 0xd0(r1)
/* 801F6264 001F3264  E3 61 00 C8 */	psq_l p27, 200(r1), 0, qr0
/* 801F6268 001F3268  CB 61 00 C0 */	lfd f27, 0xc0(r1)
/* 801F626C 001F326C  E3 41 00 B8 */	psq_l p26, 184(r1), 0, qr0
/* 801F6270 001F3270  CB 41 00 B0 */	lfd f26, 0xb0(r1)
/* 801F6274 001F3274  E3 21 00 A8 */	psq_l p25, 168(r1), 0, qr0
/* 801F6278 001F3278  CB 21 00 A0 */	lfd f25, 0xa0(r1)
/* 801F627C 001F327C  E3 01 00 98 */	psq_l p24, 152(r1), 0, qr0
/* 801F6280 001F3280  CB 01 00 90 */	lfd f24, 0x90(r1)
/* 801F6284 001F3284  E2 E1 00 88 */	psq_l p23, 136(r1), 0, qr0
/* 801F6288 001F3288  CA E1 00 80 */	lfd f23, 0x80(r1)
/* 801F628C 001F328C  E2 C1 00 78 */	psq_l p22, 120(r1), 0, qr0
/* 801F6290 001F3290  CA C1 00 70 */	lfd f22, 0x70(r1)
/* 801F6294 001F3294  E2 A1 00 68 */	psq_l p21, 104(r1), 0, qr0
/* 801F6298 001F3298  CA A1 00 60 */	lfd f21, 0x60(r1)
/* 801F629C 001F329C  E2 81 00 58 */	psq_l p20, 88(r1), 0, qr0
/* 801F62A0 001F32A0  39 61 00 50 */	addi r11, r1, 0x50
/* 801F62A4 001F32A4  CA 81 00 50 */	lfd f20, 0x50(r1)
/* 801F62A8 001F32A8  4B F9 80 09 */	bl _restgpr_21
/* 801F62AC 001F32AC  80 01 01 14 */	lwz r0, 0x114(r1)
/* 801F62B0 001F32B0  7C 08 03 A6 */	mtlr r0
/* 801F62B4 001F32B4  38 21 01 10 */	addi r1, r1, 0x110
/* 801F62B8 001F32B8  4E 80 00 20 */	blr 
