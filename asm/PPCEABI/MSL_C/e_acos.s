.include "macros.inc"

.section .text  # 0x80192F94 - 0x801932A4

.global func_80192F94
func_80192F94:
/* 80192F94 0018FF94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80192F98 0018FF98  3C 00 3F F0 */	lis r0, 0x3ff0
/* 80192F9C 0018FF9C  D8 21 00 08 */	stfd f1, 8(r1)
/* 80192FA0 0018FFA0  80 81 00 08 */	lwz r4, 8(r1)
/* 80192FA4 0018FFA4  54 83 00 7E */	clrlwi r3, r4, 1
/* 80192FA8 0018FFA8  7C 03 00 00 */	cmpw r3, r0
/* 80192FAC 0018FFAC  41 80 00 38 */	blt lbl_80192FE4
/* 80192FB0 0018FFB0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80192FB4 0018FFB4  3C 63 C0 10 */	addis r3, r3, 0xc010
/* 80192FB8 0018FFB8  7C 60 03 79 */	or. r0, r3, r0
/* 80192FBC 0018FFBC  40 82 00 1C */	bne lbl_80192FD8
/* 80192FC0 0018FFC0  2C 04 00 00 */	cmpwi r4, 0
/* 80192FC4 0018FFC4  40 81 00 0C */	ble lbl_80192FD0
/* 80192FC8 0018FFC8  C8 22 BB 80 */	lfd f1, lbl_8027B820-_SDA2_BASE_(r2)
/* 80192FCC 0018FFCC  48 00 02 D0 */	b lbl_8019329C
lbl_80192FD0:
/* 80192FD0 0018FFD0  C8 22 BB 88 */	lfd f1, lbl_8027B828-_SDA2_BASE_(r2)
/* 80192FD4 0018FFD4  48 00 02 C8 */	b lbl_8019329C
lbl_80192FD8:
/* 80192FD8 0018FFD8  3C 60 80 27 */	lis r3, lbl_80276B80@ha
/* 80192FDC 0018FFDC  C0 23 6B 80 */	lfs f1, lbl_80276B80@l(r3)
/* 80192FE0 0018FFE0  48 00 02 BC */	b lbl_8019329C
lbl_80192FE4:
/* 80192FE4 0018FFE4  3C 00 3F E0 */	lis r0, 0x3fe0
/* 80192FE8 0018FFE8  7C 03 00 00 */	cmpw r3, r0
/* 80192FEC 0018FFEC  40 80 00 8C */	bge lbl_80193078
/* 80192FF0 0018FFF0  3C 00 3C 60 */	lis r0, 0x3c60
/* 80192FF4 0018FFF4  7C 03 00 00 */	cmpw r3, r0
/* 80192FF8 0018FFF8  41 81 00 0C */	bgt lbl_80193004
/* 80192FFC 0018FFFC  C8 22 BB 90 */	lfd f1, lbl_8027B830-_SDA2_BASE_(r2)
/* 80193000 00190000  48 00 02 9C */	b lbl_8019329C
lbl_80193004:
/* 80193004 00190004  FD 41 00 72 */	fmul f10, f1, f1
/* 80193008 00190008  C8 42 BB C8 */	lfd f2, lbl_8027B868-_SDA2_BASE_(r2)
/* 8019300C 0019000C  C8 02 BB C0 */	lfd f0, lbl_8027B860-_SDA2_BASE_(r2)
/* 80193010 00190010  C8 62 BB B8 */	lfd f3, lbl_8027B858-_SDA2_BASE_(r2)
/* 80193014 00190014  C9 02 BB B0 */	lfd f8, lbl_8027B850-_SDA2_BASE_(r2)
/* 80193018 00190018  FC 82 02 BA */	fmadd f4, f2, f10, f0
/* 8019301C 0019001C  C8 42 BB F0 */	lfd f2, lbl_8027B890-_SDA2_BASE_(r2)
/* 80193020 00190020  C8 02 BB E8 */	lfd f0, lbl_8027B888-_SDA2_BASE_(r2)
/* 80193024 00190024  C8 E2 BB A8 */	lfd f7, lbl_8027B848-_SDA2_BASE_(r2)
/* 80193028 00190028  FD 2A 19 3A */	fmadd f9, f10, f4, f3
/* 8019302C 0019002C  C8 82 BB E0 */	lfd f4, lbl_8027B880-_SDA2_BASE_(r2)
/* 80193030 00190030  C8 C2 BB A0 */	lfd f6, lbl_8027B840-_SDA2_BASE_(r2)
/* 80193034 00190034  FC A2 02 BA */	fmadd f5, f2, f10, f0
/* 80193038 00190038  C8 62 BB D8 */	lfd f3, lbl_8027B878-_SDA2_BASE_(r2)
/* 8019303C 0019003C  C8 42 BB D0 */	lfd f2, lbl_8027B870-_SDA2_BASE_(r2)
/* 80193040 00190040  FD 0A 42 7A */	fmadd f8, f10, f9, f8
/* 80193044 00190044  C8 02 BB 98 */	lfd f0, lbl_8027B838-_SDA2_BASE_(r2)
/* 80193048 00190048  C9 22 BB 90 */	lfd f9, lbl_8027B830-_SDA2_BASE_(r2)
/* 8019304C 0019004C  FC 8A 21 7A */	fmadd f4, f10, f5, f4
/* 80193050 00190050  FC AA 3A 3A */	fmadd f5, f10, f8, f7
/* 80193054 00190054  FC 6A 19 3A */	fmadd f3, f10, f4, f3
/* 80193058 00190058  FC 8A 31 7A */	fmadd f4, f10, f5, f6
/* 8019305C 0019005C  FC 4A 10 FA */	fmadd f2, f10, f3, f2
/* 80193060 00190060  FC 6A 01 32 */	fmul f3, f10, f4
/* 80193064 00190064  FC 43 10 24 */	fdiv f2, f3, f2
/* 80193068 00190068  FC 01 00 BC */	fnmsub f0, f1, f2, f0
/* 8019306C 0019006C  FC 01 00 28 */	fsub f0, f1, f0
/* 80193070 00190070  FC 29 00 28 */	fsub f1, f9, f0
/* 80193074 00190074  48 00 02 28 */	b lbl_8019329C
lbl_80193078:
/* 80193078 00190078  2C 04 00 00 */	cmpwi r4, 0
/* 8019307C 0019007C  40 80 01 08 */	bge lbl_80193184
/* 80193080 00190080  C9 42 BB D0 */	lfd f10, lbl_8027B870-_SDA2_BASE_(r2)
/* 80193084 00190084  C8 02 BB F8 */	lfd f0, lbl_8027B898-_SDA2_BASE_(r2)
/* 80193088 00190088  FC 2A 08 2A */	fadd f1, f10, f1
/* 8019308C 0019008C  C8 A2 BB C8 */	lfd f5, lbl_8027B868-_SDA2_BASE_(r2)
/* 80193090 00190090  C8 82 BB C0 */	lfd f4, lbl_8027B860-_SDA2_BASE_(r2)
/* 80193094 00190094  C9 02 BB B8 */	lfd f8, lbl_8027B858-_SDA2_BASE_(r2)
/* 80193098 00190098  FC 20 00 72 */	fmul f1, f0, f1
/* 8019309C 0019009C  C9 62 BB 80 */	lfd f11, lbl_8027B820-_SDA2_BASE_(r2)
/* 801930A0 001900A0  C8 E2 BB B0 */	lfd f7, lbl_8027B850-_SDA2_BASE_(r2)
/* 801930A4 001900A4  C8 62 BB F0 */	lfd f3, lbl_8027B890-_SDA2_BASE_(r2)
/* 801930A8 001900A8  C8 42 BB E8 */	lfd f2, lbl_8027B888-_SDA2_BASE_(r2)
/* 801930AC 001900AC  FD 25 20 7A */	fmadd f9, f5, f1, f4
/* 801930B0 001900B0  C8 C2 BB A8 */	lfd f6, lbl_8027B848-_SDA2_BASE_(r2)
/* 801930B4 001900B4  FC 83 10 7A */	fmadd f4, f3, f1, f2
/* 801930B8 001900B8  C8 62 BB E0 */	lfd f3, lbl_8027B880-_SDA2_BASE_(r2)
/* 801930BC 001900BC  C8 A2 BB A0 */	lfd f5, lbl_8027B840-_SDA2_BASE_(r2)
/* 801930C0 001900C0  FD 01 42 7A */	fmadd f8, f1, f9, f8
/* 801930C4 001900C4  C8 42 BB D8 */	lfd f2, lbl_8027B878-_SDA2_BASE_(r2)
/* 801930C8 001900C8  FC 61 19 3A */	fmadd f3, f1, f4, f3
/* 801930CC 001900CC  FC 81 3A 3A */	fmadd f4, f1, f8, f7
/* 801930D0 001900D0  FC 41 10 FA */	fmadd f2, f1, f3, f2
/* 801930D4 001900D4  FC 61 31 3A */	fmadd f3, f1, f4, f6
/* 801930D8 001900D8  FC C1 50 BA */	fmadd f6, f1, f2, f10
/* 801930DC 001900DC  FC 41 28 FA */	fmadd f2, f1, f3, f5
/* 801930E0 001900E0  FC 01 58 40 */	.byte 0xFC, 0x01, 0x58, 0x40  /* unknown instruction */
/* 801930E4 001900E4  FC A1 00 B2 */	fmul f5, f1, f2
/* 801930E8 001900E8  40 81 00 54 */	ble lbl_8019313C
/* 801930EC 001900EC  FC 60 08 34 */	frsqrte f3, f1
/* 801930F0 001900F0  C8 82 BC 00 */	lfd f4, lbl_8027B8A0-_SDA2_BASE_(r2)
/* 801930F4 001900F4  FC 43 00 F2 */	fmul f2, f3, f3
/* 801930F8 001900F8  FC 60 00 F2 */	fmul f3, f0, f3
/* 801930FC 001900FC  FC 41 20 BC */	fnmsub f2, f1, f2, f4
/* 80193100 00190100  FC 63 00 B2 */	fmul f3, f3, f2
/* 80193104 00190104  FC 43 00 F2 */	fmul f2, f3, f3
/* 80193108 00190108  FC 60 00 F2 */	fmul f3, f0, f3
/* 8019310C 0019010C  FC 41 20 BC */	fnmsub f2, f1, f2, f4
/* 80193110 00190110  FC 63 00 B2 */	fmul f3, f3, f2
/* 80193114 00190114  FC 43 00 F2 */	fmul f2, f3, f3
/* 80193118 00190118  FC 60 00 F2 */	fmul f3, f0, f3
/* 8019311C 0019011C  FC 41 20 BC */	fnmsub f2, f1, f2, f4
/* 80193120 00190120  FC 63 00 B2 */	fmul f3, f3, f2
/* 80193124 00190124  FC 43 00 F2 */	fmul f2, f3, f3
/* 80193128 00190128  FC 60 00 F2 */	fmul f3, f0, f3
/* 8019312C 0019012C  FC 01 20 BC */	fnmsub f0, f1, f2, f4
/* 80193130 00190130  FC 03 00 32 */	fmul f0, f3, f0
/* 80193134 00190134  FD 61 00 32 */	fmul f11, f1, f0
/* 80193138 00190138  48 00 00 2C */	b lbl_80193164
lbl_8019313C:
/* 8019313C 0019013C  FC 0B 08 00 */	fcmpu cr0, f11, f1
/* 80193140 00190140  40 82 00 08 */	bne lbl_80193148
/* 80193144 00190144  48 00 00 20 */	b lbl_80193164
lbl_80193148:
/* 80193148 00190148  FC 01 58 00 */	fcmpu cr0, f1, f11
/* 8019314C 0019014C  41 82 00 10 */	beq lbl_8019315C
/* 80193150 00190150  3C 60 80 27 */	lis r3, lbl_80276B80@ha
/* 80193154 00190154  C1 63 6B 80 */	lfs f11, lbl_80276B80@l(r3)
/* 80193158 00190158  48 00 00 0C */	b lbl_80193164
lbl_8019315C:
/* 8019315C 0019015C  3C 60 80 27 */	lis r3, lbl_80276B84@ha
/* 80193160 00190160  C1 63 6B 84 */	lfs f11, lbl_80276B84@l(r3)
lbl_80193164:
/* 80193164 00190164  FC 45 30 24 */	fdiv f2, f5, f6
/* 80193168 00190168  C8 22 BB 98 */	lfd f1, lbl_8027B838-_SDA2_BASE_(r2)
/* 8019316C 0019016C  C8 62 BC 08 */	lfd f3, lbl_8027B8A8-_SDA2_BASE_(r2)
/* 80193170 00190170  C8 02 BB 88 */	lfd f0, lbl_8027B828-_SDA2_BASE_(r2)
/* 80193174 00190174  FC 22 0A F8 */	fmsub f1, f2, f11, f1
/* 80193178 00190178  FC 2B 08 2A */	fadd f1, f11, f1
/* 8019317C 0019017C  FC 23 00 7C */	fnmsub f1, f3, f1, f0
/* 80193180 00190180  48 00 01 1C */	b lbl_8019329C
lbl_80193184:
/* 80193184 00190184  C8 02 BB D0 */	lfd f0, lbl_8027B870-_SDA2_BASE_(r2)
/* 80193188 00190188  C8 82 BB F8 */	lfd f4, lbl_8027B898-_SDA2_BASE_(r2)
/* 8019318C 0019018C  FC 00 08 28 */	fsub f0, f0, f1
/* 80193190 00190190  C9 22 BB 80 */	lfd f9, lbl_8027B820-_SDA2_BASE_(r2)
/* 80193194 00190194  FC 04 00 32 */	fmul f0, f4, f0
/* 80193198 00190198  FC 00 48 40 */	.byte 0xFC, 0x00, 0x48, 0x40  /* unknown instruction */
/* 8019319C 0019019C  40 81 00 54 */	ble lbl_801931F0
/* 801931A0 001901A0  FC 40 00 34 */	frsqrte f2, f0
/* 801931A4 001901A4  C8 62 BC 00 */	lfd f3, lbl_8027B8A0-_SDA2_BASE_(r2)
/* 801931A8 001901A8  FC 22 00 B2 */	fmul f1, f2, f2
/* 801931AC 001901AC  FC 44 00 B2 */	fmul f2, f4, f2
/* 801931B0 001901B0  FC 20 18 7C */	fnmsub f1, f0, f1, f3
/* 801931B4 001901B4  FC 42 00 72 */	fmul f2, f2, f1
/* 801931B8 001901B8  FC 22 00 B2 */	fmul f1, f2, f2
/* 801931BC 001901BC  FC 44 00 B2 */	fmul f2, f4, f2
/* 801931C0 001901C0  FC 20 18 7C */	fnmsub f1, f0, f1, f3
/* 801931C4 001901C4  FC 42 00 72 */	fmul f2, f2, f1
/* 801931C8 001901C8  FC 22 00 B2 */	fmul f1, f2, f2
/* 801931CC 001901CC  FC 44 00 B2 */	fmul f2, f4, f2
/* 801931D0 001901D0  FC 20 18 7C */	fnmsub f1, f0, f1, f3
/* 801931D4 001901D4  FC 42 00 72 */	fmul f2, f2, f1
/* 801931D8 001901D8  FC 22 00 B2 */	fmul f1, f2, f2
/* 801931DC 001901DC  FC 44 00 B2 */	fmul f2, f4, f2
/* 801931E0 001901E0  FC 20 18 7C */	fnmsub f1, f0, f1, f3
/* 801931E4 001901E4  FC 22 00 72 */	fmul f1, f2, f1
/* 801931E8 001901E8  FD 20 00 72 */	fmul f9, f0, f1
/* 801931EC 001901EC  48 00 00 2C */	b lbl_80193218
lbl_801931F0:
/* 801931F0 001901F0  FC 09 00 00 */	fcmpu cr0, f9, f0
/* 801931F4 001901F4  40 82 00 08 */	bne lbl_801931FC
/* 801931F8 001901F8  48 00 00 20 */	b lbl_80193218
lbl_801931FC:
/* 801931FC 001901FC  FC 00 48 00 */	fcmpu cr0, f0, f9
/* 80193200 00190200  41 82 00 10 */	beq lbl_80193210
/* 80193204 00190204  3C 60 80 27 */	lis r3, lbl_80276B80@ha
/* 80193208 00190208  C1 23 6B 80 */	lfs f9, lbl_80276B80@l(r3)
/* 8019320C 0019020C  48 00 00 0C */	b lbl_80193218
lbl_80193210:
/* 80193210 00190210  3C 60 80 27 */	lis r3, lbl_80276B84@ha
/* 80193214 00190214  C1 23 6B 84 */	lfs f9, lbl_80276B84@l(r3)
lbl_80193218:
/* 80193218 00190218  C8 42 BB C8 */	lfd f2, lbl_8027B868-_SDA2_BASE_(r2)
/* 8019321C 0019021C  38 00 00 00 */	li r0, 0
/* 80193220 00190220  C8 22 BB C0 */	lfd f1, lbl_8027B860-_SDA2_BASE_(r2)
/* 80193224 00190224  D9 21 00 10 */	stfd f9, 0x10(r1)
/* 80193228 00190228  FC 62 08 3A */	fmadd f3, f2, f0, f1
/* 8019322C 0019022C  C8 42 BB B8 */	lfd f2, lbl_8027B858-_SDA2_BASE_(r2)
/* 80193230 00190230  90 01 00 14 */	stw r0, 0x14(r1)
/* 80193234 00190234  C8 22 BB B0 */	lfd f1, lbl_8027B850-_SDA2_BASE_(r2)
/* 80193238 00190238  C9 41 00 10 */	lfd f10, 0x10(r1)
/* 8019323C 0019023C  FC A0 10 FA */	fmadd f5, f0, f3, f2
/* 80193240 00190240  C8 82 BB F0 */	lfd f4, lbl_8027B890-_SDA2_BASE_(r2)
/* 80193244 00190244  C8 42 BB E8 */	lfd f2, lbl_8027B888-_SDA2_BASE_(r2)
/* 80193248 00190248  FC 6A 02 BC */	fnmsub f3, f10, f10, f0
/* 8019324C 0019024C  C8 E2 BB A8 */	lfd f7, lbl_8027B848-_SDA2_BASE_(r2)
/* 80193250 00190250  FD 00 09 7A */	fmadd f8, f0, f5, f1
/* 80193254 00190254  C8 22 BB E0 */	lfd f1, lbl_8027B880-_SDA2_BASE_(r2)
/* 80193258 00190258  FC A4 10 3A */	fmadd f5, f4, f0, f2
/* 8019325C 0019025C  C8 C2 BB A0 */	lfd f6, lbl_8027B840-_SDA2_BASE_(r2)
/* 80193260 00190260  C8 42 BB D8 */	lfd f2, lbl_8027B878-_SDA2_BASE_(r2)
/* 80193264 00190264  FC E0 3A 3A */	fmadd f7, f0, f8, f7
/* 80193268 00190268  C8 82 BB D0 */	lfd f4, lbl_8027B870-_SDA2_BASE_(r2)
/* 8019326C 0019026C  FC A0 09 7A */	fmadd f5, f0, f5, f1
/* 80193270 00190270  C8 22 BC 08 */	lfd f1, lbl_8027B8A8-_SDA2_BASE_(r2)
/* 80193274 00190274  FC C0 31 FA */	fmadd f6, f0, f7, f6
/* 80193278 00190278  FC A0 11 7A */	fmadd f5, f0, f5, f2
/* 8019327C 0019027C  FC 49 50 2A */	fadd f2, f9, f10
/* 80193280 00190280  FC C0 01 B2 */	fmul f6, f0, f6
/* 80193284 00190284  FC 80 21 7A */	fmadd f4, f0, f5, f4
/* 80193288 00190288  FC 03 10 24 */	fdiv f0, f3, f2
/* 8019328C 0019028C  FC 46 20 24 */	fdiv f2, f6, f4
/* 80193290 00190290  FC 02 02 7A */	fmadd f0, f2, f9, f0
/* 80193294 00190294  FC 0A 00 2A */	fadd f0, f10, f0
/* 80193298 00190298  FC 21 00 32 */	fmul f1, f1, f0
lbl_8019329C:
/* 8019329C 0019029C  38 21 00 20 */	addi r1, r1, 0x20
/* 801932A0 001902A0  4E 80 00 20 */	blr 