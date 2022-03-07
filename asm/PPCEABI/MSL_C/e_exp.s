.include "macros.inc"

.section .text  # 0x80193798 - 0x801939B4

.global __ieee754_exp
__ieee754_exp:
/* 80193798 00190798  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8019379C 0019079C  3C 60 40 86 */	lis r3, 0x40862E42@ha
/* 801937A0 001907A0  3C 80 80 20 */	lis r4, lbl_80205538@ha
/* 801937A4 001907A4  D8 21 00 08 */	stfd f1, 8(r1)
/* 801937A8 001907A8  38 03 2E 42 */	addi r0, r3, 0x40862E42@l
/* 801937AC 001907AC  38 84 55 38 */	addi r4, r4, lbl_80205538@l
/* 801937B0 001907B0  81 01 00 08 */	lwz r8, 8(r1)
/* 801937B4 001907B4  55 05 00 7E */	clrlwi r5, r8, 1
/* 801937B8 001907B8  55 07 0F FE */	srwi r7, r8, 0x1f
/* 801937BC 001907BC  7C 05 00 40 */	cmplw r5, r0
/* 801937C0 001907C0  41 80 00 64 */	blt lbl_80193824
/* 801937C4 001907C4  3C 00 7F F0 */	lis r0, 0x7ff0
/* 801937C8 001907C8  7C 05 00 40 */	cmplw r5, r0
/* 801937CC 001907CC  41 80 00 30 */	blt lbl_801937FC
/* 801937D0 001907D0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801937D4 001907D4  55 03 03 3E */	clrlwi r3, r8, 0xc
/* 801937D8 001907D8  7C 60 03 79 */	or. r0, r3, r0
/* 801937DC 001907DC  41 82 00 0C */	beq lbl_801937E8
/* 801937E0 001907E0  FC 21 08 2A */	fadd f1, f1, f1
/* 801937E4 001907E4  48 00 01 C8 */	b lbl_801939AC
lbl_801937E8:
/* 801937E8 001907E8  2C 07 00 00 */	cmpwi r7, 0
/* 801937EC 001907EC  40 82 00 08 */	bne lbl_801937F4
/* 801937F0 001907F0  48 00 01 BC */	b lbl_801939AC
lbl_801937F4:
/* 801937F4 001907F4  C8 22 BD 00 */	lfd f1, lbl_8027B9A0@sda21(r2)
/* 801937F8 001907F8  48 00 01 B4 */	b lbl_801939AC
lbl_801937FC:
/* 801937FC 001907FC  C8 02 BD 08 */	lfd f0, lbl_8027B9A8@sda21(r2)
/* 80193800 00190800  FC 01 00 40 */	.byte 0xFC, 0x01, 0x00, 0x40  /* unknown instruction */
/* 80193804 00190804  40 81 00 0C */	ble lbl_80193810
/* 80193808 00190808  C8 22 BD 10 */	lfd f1, lbl_8027B9B0@sda21(r2)
/* 8019380C 0019080C  48 00 01 A0 */	b lbl_801939AC
lbl_80193810:
/* 80193810 00190810  C8 02 BD 18 */	lfd f0, lbl_8027B9B8@sda21(r2)
/* 80193814 00190814  FC 01 00 40 */	.byte 0xFC, 0x01, 0x00, 0x40  /* unknown instruction */
/* 80193818 00190818  40 80 00 0C */	bge lbl_80193824
/* 8019381C 0019081C  C8 22 BD 00 */	lfd f1, lbl_8027B9A0@sda21(r2)
/* 80193820 00190820  48 00 01 8C */	b lbl_801939AC
lbl_80193824:
/* 80193824 00190824  3C 60 3F D6 */	lis r3, 0x3FD62E42@ha
/* 80193828 00190828  38 03 2E 42 */	addi r0, r3, 0x3FD62E42@l
/* 8019382C 0019082C  7C 05 00 40 */	cmplw r5, r0
/* 80193830 00190830  40 81 00 90 */	ble lbl_801938C0
/* 80193834 00190834  3C 60 3F F1 */	lis r3, 0x3FF0A2B2@ha
/* 80193838 00190838  38 03 A2 B2 */	addi r0, r3, 0x3FF0A2B2@l
/* 8019383C 0019083C  7C 05 00 40 */	cmplw r5, r0
/* 80193840 00190840  40 80 00 28 */	bge lbl_80193868
/* 80193844 00190844  54 E3 18 38 */	slwi r3, r7, 3
/* 80193848 00190848  20 07 00 01 */	subfic r0, r7, 1
/* 8019384C 0019084C  7C 64 1A 14 */	add r3, r4, r3
/* 80193850 00190850  C8 21 00 08 */	lfd f1, 8(r1)
/* 80193854 00190854  C8 03 00 10 */	lfd f0, 0x10(r3)
/* 80193858 00190858  7C C7 00 50 */	subf r6, r7, r0
/* 8019385C 0019085C  C9 03 00 20 */	lfd f8, 0x20(r3)
/* 80193860 00190860  FC E1 00 28 */	fsub f7, f1, f0
/* 80193864 00190864  48 00 00 50 */	b lbl_801938B4
lbl_80193868:
/* 80193868 00190868  54 E3 18 38 */	slwi r3, r7, 3
/* 8019386C 0019086C  3C 00 43 30 */	lis r0, 0x4330
/* 80193870 00190870  C8 22 BD 20 */	lfd f1, lbl_8027B9C0@sda21(r2)
/* 80193874 00190874  C8 81 00 08 */	lfd f4, 8(r1)
/* 80193878 00190878  7C 04 1C AE */	lfdx f0, r4, r3
/* 8019387C 0019087C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80193880 00190880  FC 41 01 3A */	fmadd f2, f1, f4, f0
/* 80193884 00190884  C8 62 BD 70 */	lfd f3, lbl_8027BA10@sda21(r2)
/* 80193888 00190888  C8 24 00 10 */	lfd f1, 0x10(r4)
/* 8019388C 0019088C  C8 04 00 20 */	lfd f0, 0x20(r4)
/* 80193890 00190890  FC 40 10 1E */	fctiwz f2, f2
/* 80193894 00190894  D8 41 00 18 */	stfd f2, 0x18(r1)
/* 80193898 00190898  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 8019389C 0019089C  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 801938A0 001908A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801938A4 001908A4  C8 41 00 20 */	lfd f2, 0x20(r1)
/* 801938A8 001908A8  FC 42 18 28 */	fsub f2, f2, f3
/* 801938AC 001908AC  FC E2 20 7C */	fnmsub f7, f2, f1, f4
/* 801938B0 001908B0  FD 02 00 32 */	fmul f8, f2, f0
lbl_801938B4:
/* 801938B4 001908B4  FC 07 40 28 */	fsub f0, f7, f8
/* 801938B8 001908B8  D8 01 00 08 */	stfd f0, 8(r1)
/* 801938BC 001908BC  48 00 00 34 */	b lbl_801938F0
lbl_801938C0:
/* 801938C0 001908C0  3C 00 3E 30 */	lis r0, 0x3e30
/* 801938C4 001908C4  7C 05 00 40 */	cmplw r5, r0
/* 801938C8 001908C8  40 80 00 24 */	bge lbl_801938EC
/* 801938CC 001908CC  C8 22 BD 28 */	lfd f1, lbl_8027B9C8@sda21(r2)
/* 801938D0 001908D0  C8 41 00 08 */	lfd f2, 8(r1)
/* 801938D4 001908D4  C8 02 BD 30 */	lfd f0, lbl_8027B9D0@sda21(r2)
/* 801938D8 001908D8  FC 21 10 2A */	fadd f1, f1, f2
/* 801938DC 001908DC  FC 01 00 40 */	.byte 0xFC, 0x01, 0x00, 0x40  /* unknown instruction */
/* 801938E0 001908E0  40 81 00 10 */	ble lbl_801938F0
/* 801938E4 001908E4  FC 20 10 2A */	fadd f1, f0, f2
/* 801938E8 001908E8  48 00 00 C4 */	b lbl_801939AC
lbl_801938EC:
/* 801938EC 001908EC  38 C0 00 00 */	li r6, 0
lbl_801938F0:
/* 801938F0 001908F0  C8 A1 00 08 */	lfd f5, 8(r1)
/* 801938F4 001908F4  2C 06 00 00 */	cmpwi r6, 0
/* 801938F8 001908F8  C8 82 BD 58 */	lfd f4, lbl_8027B9F8@sda21(r2)
/* 801938FC 001908FC  FC C5 01 72 */	fmul f6, f5, f5
/* 80193900 00190900  C8 62 BD 50 */	lfd f3, lbl_8027B9F0@sda21(r2)
/* 80193904 00190904  C8 42 BD 48 */	lfd f2, lbl_8027B9E8@sda21(r2)
/* 80193908 00190908  C8 22 BD 40 */	lfd f1, lbl_8027B9E0@sda21(r2)
/* 8019390C 0019090C  C8 02 BD 38 */	lfd f0, lbl_8027B9D8@sda21(r2)
/* 80193910 00190910  FC 64 19 BA */	fmadd f3, f4, f6, f3
/* 80193914 00190914  FC 46 10 FA */	fmadd f2, f6, f3, f2
/* 80193918 00190918  FC 26 08 BA */	fmadd f1, f6, f2, f1
/* 8019391C 0019091C  FC 06 00 7A */	fmadd f0, f6, f1, f0
/* 80193920 00190920  FC 66 28 3C */	fnmsub f3, f6, f0, f5
/* 80193924 00190924  40 82 00 24 */	bne lbl_80193948
/* 80193928 00190928  C8 02 BD 60 */	lfd f0, lbl_8027BA00@sda21(r2)
/* 8019392C 0019092C  FC 25 00 F2 */	fmul f1, f5, f3
/* 80193930 00190930  C8 42 BD 30 */	lfd f2, lbl_8027B9D0@sda21(r2)
/* 80193934 00190934  FC 03 00 28 */	fsub f0, f3, f0
/* 80193938 00190938  FC 01 00 24 */	fdiv f0, f1, f0
/* 8019393C 0019093C  FC 00 28 28 */	fsub f0, f0, f5
/* 80193940 00190940  FC 22 00 28 */	fsub f1, f2, f0
/* 80193944 00190944  48 00 00 68 */	b lbl_801939AC
lbl_80193948:
/* 80193948 00190948  C8 02 BD 60 */	lfd f0, lbl_8027BA00@sda21(r2)
/* 8019394C 0019094C  FC 25 00 F2 */	fmul f1, f5, f3
/* 80193950 00190950  C8 42 BD 30 */	lfd f2, lbl_8027B9D0@sda21(r2)
/* 80193954 00190954  2C 06 FC 03 */	cmpwi r6, -1021
/* 80193958 00190958  FC 00 18 28 */	fsub f0, f0, f3
/* 8019395C 0019095C  FC 01 00 24 */	fdiv f0, f1, f0
/* 80193960 00190960  FC 08 00 28 */	fsub f0, f8, f0
/* 80193964 00190964  FC 00 38 28 */	fsub f0, f0, f7
/* 80193968 00190968  FC 02 00 28 */	fsub f0, f2, f0
/* 8019396C 0019096C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80193970 00190970  41 80 00 1C */	blt lbl_8019398C
/* 80193974 00190974  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80193978 00190978  54 C0 A0 16 */	slwi r0, r6, 0x14
/* 8019397C 0019097C  7C 03 02 14 */	add r0, r3, r0
/* 80193980 00190980  90 01 00 10 */	stw r0, 0x10(r1)
/* 80193984 00190984  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 80193988 00190988  48 00 00 24 */	b lbl_801939AC
lbl_8019398C:
/* 8019398C 0019098C  38 06 03 E8 */	addi r0, r6, 0x3e8
/* 80193990 00190990  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80193994 00190994  54 00 A0 16 */	slwi r0, r0, 0x14
/* 80193998 00190998  C8 22 BD 68 */	lfd f1, lbl_8027BA08@sda21(r2)
/* 8019399C 0019099C  7C 03 02 14 */	add r0, r3, r0
/* 801939A0 001909A0  90 01 00 10 */	stw r0, 0x10(r1)
/* 801939A4 001909A4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801939A8 001909A8  FC 21 00 32 */	fmul f1, f1, f0
lbl_801939AC:
/* 801939AC 001909AC  38 21 00 30 */	addi r1, r1, 0x30
/* 801939B0 001909B0  4E 80 00 20 */	blr 
