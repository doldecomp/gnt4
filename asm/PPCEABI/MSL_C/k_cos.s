.include "macros.inc"

.section .text  # 0x80194B98 - 0x80194C8C

.global func_80194B98
func_80194B98:
/* 80194B98 00191B98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80194B9C 00191B9C  3C 00 3E 40 */	lis r0, 0x3e40
/* 80194BA0 00191BA0  D8 21 00 08 */	stfd f1, 8(r1)
/* 80194BA4 00191BA4  80 61 00 08 */	lwz r3, 8(r1)
/* 80194BA8 00191BA8  54 64 00 7E */	clrlwi r4, r3, 1
/* 80194BAC 00191BAC  7C 04 00 00 */	cmpw r4, r0
/* 80194BB0 00191BB0  40 80 00 20 */	bge lbl_80194BD0
/* 80194BB4 00191BB4  FC 00 08 1E */	fctiwz f0, f1
/* 80194BB8 00191BB8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80194BBC 00191BBC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80194BC0 00191BC0  2C 00 00 00 */	cmpwi r0, 0
/* 80194BC4 00191BC4  40 82 00 0C */	bne lbl_80194BD0
/* 80194BC8 00191BC8  C8 22 BF 60 */	lfd f1, lbl_8027BC00-_SDA2_BASE_(r2)
/* 80194BCC 00191BCC  48 00 00 B8 */	b lbl_80194C84
lbl_80194BD0:
/* 80194BD0 00191BD0  C8 C1 00 08 */	lfd f6, 8(r1)
/* 80194BD4 00191BD4  3C 60 3F D3 */	lis r3, 0x3FD33333@ha
/* 80194BD8 00191BD8  38 03 33 33 */	addi r0, r3, 0x3FD33333@l
/* 80194BDC 00191BDC  C8 A2 BF 90 */	lfd f5, lbl_8027BC30-_SDA2_BASE_(r2)
/* 80194BE0 00191BE0  FC E6 01 B2 */	fmul f7, f6, f6
/* 80194BE4 00191BE4  C8 02 BF 88 */	lfd f0, lbl_8027BC28-_SDA2_BASE_(r2)
/* 80194BE8 00191BE8  C8 82 BF 80 */	lfd f4, lbl_8027BC20-_SDA2_BASE_(r2)
/* 80194BEC 00191BEC  7C 04 00 00 */	cmpw r4, r0
/* 80194BF0 00191BF0  C8 62 BF 78 */	lfd f3, lbl_8027BC18-_SDA2_BASE_(r2)
/* 80194BF4 00191BF4  C8 22 BF 70 */	lfd f1, lbl_8027BC10-_SDA2_BASE_(r2)
/* 80194BF8 00191BF8  FC A5 01 FA */	fmadd f5, f5, f7, f0
/* 80194BFC 00191BFC  C8 02 BF 68 */	lfd f0, lbl_8027BC08-_SDA2_BASE_(r2)
/* 80194C00 00191C00  FC 87 21 7A */	fmadd f4, f7, f5, f4
/* 80194C04 00191C04  FC 67 19 3A */	fmadd f3, f7, f4, f3
/* 80194C08 00191C08  FC 27 08 FA */	fmadd f1, f7, f3, f1
/* 80194C0C 00191C0C  FC 07 00 7A */	fmadd f0, f7, f1, f0
/* 80194C10 00191C10  FC 87 00 32 */	fmul f4, f7, f0
/* 80194C14 00191C14  40 80 00 20 */	bge lbl_80194C34
/* 80194C18 00191C18  FC 06 00 B2 */	fmul f0, f6, f2
/* 80194C1C 00191C1C  C8 22 BF 98 */	lfd f1, lbl_8027BC38-_SDA2_BASE_(r2)
/* 80194C20 00191C20  C8 42 BF 60 */	lfd f2, lbl_8027BC00-_SDA2_BASE_(r2)
/* 80194C24 00191C24  FC 07 01 38 */	fmsub f0, f7, f4, f0
/* 80194C28 00191C28  FC 01 01 F8 */	fmsub f0, f1, f7, f0
/* 80194C2C 00191C2C  FC 22 00 28 */	fsub f1, f2, f0
/* 80194C30 00191C30  48 00 00 54 */	b lbl_80194C84
lbl_80194C34:
/* 80194C34 00191C34  3C 00 3F E9 */	lis r0, 0x3fe9
/* 80194C38 00191C38  7C 04 00 00 */	cmpw r4, r0
/* 80194C3C 00191C3C  40 81 00 10 */	ble lbl_80194C4C
/* 80194C40 00191C40  C8 02 BF A0 */	lfd f0, lbl_8027BC40-_SDA2_BASE_(r2)
/* 80194C44 00191C44  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80194C48 00191C48  48 00 00 14 */	b lbl_80194C5C
lbl_80194C4C:
/* 80194C4C 00191C4C  3C 64 FF E0 */	addis r3, r4, 0xffe0
/* 80194C50 00191C50  38 00 00 00 */	li r0, 0
/* 80194C54 00191C54  90 61 00 10 */	stw r3, 0x10(r1)
/* 80194C58 00191C58  90 01 00 14 */	stw r0, 0x14(r1)
lbl_80194C5C:
/* 80194C5C 00191C5C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80194C60 00191C60  C8 61 00 10 */	lfd f3, 0x10(r1)
/* 80194C64 00191C64  FC 00 00 B2 */	fmul f0, f0, f2
/* 80194C68 00191C68  C8 22 BF 98 */	lfd f1, lbl_8027BC38-_SDA2_BASE_(r2)
/* 80194C6C 00191C6C  C8 42 BF 60 */	lfd f2, lbl_8027BC00-_SDA2_BASE_(r2)
/* 80194C70 00191C70  FC 21 19 F8 */	fmsub f1, f1, f7, f3
/* 80194C74 00191C74  FC 07 01 38 */	fmsub f0, f7, f4, f0
/* 80194C78 00191C78  FC 42 18 28 */	fsub f2, f2, f3
/* 80194C7C 00191C7C  FC 01 00 28 */	fsub f0, f1, f0
/* 80194C80 00191C80  FC 22 00 28 */	fsub f1, f2, f0
lbl_80194C84:
/* 80194C84 00191C84  38 21 00 20 */	addi r1, r1, 0x20
/* 80194C88 00191C88  4E 80 00 20 */	blr 
