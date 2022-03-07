.include "macros.inc"

.section .text  # 0x8016D608 - 0x8016DFF8

.global PSMTXIdentity
PSMTXIdentity:
/* 8016D608 0016A608  C0 02 BA 34 */	lfs f0, lbl_8027B6D4@sda21(r2)
/* 8016D60C 0016A60C  C0 22 BA 30 */	lfs f1, lbl_8027B6D0@sda21(r2)
/* 8016D610 0016A610  F0 03 00 08 */	psq_st p0, 8(r3), 0, qr0
/* 8016D614 0016A614  10 40 0C 60 */	ps_merge01 p2, p0, p1
/* 8016D618 0016A618  F0 03 00 18 */	psq_st p0, 24(r3), 0, qr0
/* 8016D61C 0016A61C  10 21 04 A0 */	ps_merge10 p1, p1, p0
/* 8016D620 0016A620  F0 03 00 20 */	psq_st p0, 32(r3), 0, qr0
/* 8016D624 0016A624  F0 43 00 10 */	psq_st p2, 16(r3), 0, qr0
/* 8016D628 0016A628  F0 23 00 00 */	psq_st p1, 0(r3), 0, qr0
/* 8016D62C 0016A62C  F0 23 00 28 */	psq_st p1, 40(r3), 0, qr0
/* 8016D630 0016A630  4E 80 00 20 */	blr 

.global PSMTXCopy
PSMTXCopy:
/* 8016D634 0016A634  E0 03 00 00 */	psq_l p0, 0(r3), 0, qr0
/* 8016D638 0016A638  F0 04 00 00 */	psq_st p0, 0(r4), 0, qr0
/* 8016D63C 0016A63C  E0 23 00 08 */	psq_l p1, 8(r3), 0, qr0
/* 8016D640 0016A640  F0 24 00 08 */	psq_st p1, 8(r4), 0, qr0
/* 8016D644 0016A644  E0 43 00 10 */	psq_l p2, 16(r3), 0, qr0
/* 8016D648 0016A648  F0 44 00 10 */	psq_st p2, 16(r4), 0, qr0
/* 8016D64C 0016A64C  E0 63 00 18 */	psq_l p3, 24(r3), 0, qr0
/* 8016D650 0016A650  F0 64 00 18 */	psq_st p3, 24(r4), 0, qr0
/* 8016D654 0016A654  E0 83 00 20 */	psq_l p4, 32(r3), 0, qr0
/* 8016D658 0016A658  F0 84 00 20 */	psq_st p4, 32(r4), 0, qr0
/* 8016D65C 0016A65C  E0 A3 00 28 */	psq_l p5, 40(r3), 0, qr0
/* 8016D660 0016A660  F0 A4 00 28 */	psq_st p5, 40(r4), 0, qr0
/* 8016D664 0016A664  4E 80 00 20 */	blr 

.global PSMTXConcat
PSMTXConcat:
/* 8016D668 0016A668  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8016D66C 0016A66C  E0 03 00 00 */	psq_l p0, 0(r3), 0, qr0
/* 8016D670 0016A670  D9 C1 00 08 */	stfd f14, 8(r1)
/* 8016D674 0016A674  E0 C4 00 00 */	psq_l p6, 0(r4), 0, qr0
/* 8016D678 0016A678  3C C0 80 27 */	lis r6, lbl_80276A70@ha
/* 8016D67C 0016A67C  E0 E4 00 08 */	psq_l p7, 8(r4), 0, qr0
/* 8016D680 0016A680  D9 E1 00 10 */	stfd f15, 0x10(r1)
/* 8016D684 0016A684  38 C6 6A 70 */	addi r6, r6, lbl_80276A70@l
/* 8016D688 0016A688  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 8016D68C 0016A68C  E1 04 00 10 */	psq_l p8, 16(r4), 0, qr0
/* 8016D690 0016A690  11 86 00 18 */	ps_muls0 p12, p6, p0
/* 8016D694 0016A694  E0 43 00 10 */	psq_l p2, 16(r3), 0, qr0
/* 8016D698 0016A698  11 A7 00 18 */	ps_muls0 p13, p7, p0
/* 8016D69C 0016A69C  E3 E6 00 00 */	psq_l p31, 0(r6), 0, qr0
/* 8016D6A0 0016A6A0  11 C6 00 98 */	ps_muls0 p14, p6, p2
/* 8016D6A4 0016A6A4  E1 24 00 18 */	psq_l p9, 24(r4), 0, qr0
/* 8016D6A8 0016A6A8  11 E7 00 98 */	ps_muls0 p15, p7, p2
/* 8016D6AC 0016A6AC  E0 23 00 08 */	psq_l p1, 8(r3), 0, qr0
/* 8016D6B0 0016A6B0  11 88 60 1E */	ps_madds1 p12, p8, p0, p12
/* 8016D6B4 0016A6B4  E0 63 00 18 */	psq_l p3, 24(r3), 0, qr0
/* 8016D6B8 0016A6B8  11 C8 70 9E */	ps_madds1 p14, p8, p2, p14
/* 8016D6BC 0016A6BC  E1 44 00 20 */	psq_l p10, 32(r4), 0, qr0
/* 8016D6C0 0016A6C0  11 A9 68 1E */	ps_madds1 p13, p9, p0, p13
/* 8016D6C4 0016A6C4  E1 64 00 28 */	psq_l p11, 40(r4), 0, qr0
/* 8016D6C8 0016A6C8  11 E9 78 9E */	ps_madds1 p15, p9, p2, p15
/* 8016D6CC 0016A6CC  E0 83 00 20 */	psq_l p4, 32(r3), 0, qr0
/* 8016D6D0 0016A6D0  E0 A3 00 28 */	psq_l p5, 40(r3), 0, qr0
/* 8016D6D4 0016A6D4  11 8A 60 5C */	ps_madds0 p12, p10, p1, p12
/* 8016D6D8 0016A6D8  11 AB 68 5C */	ps_madds0 p13, p11, p1, p13
/* 8016D6DC 0016A6DC  11 CA 70 DC */	ps_madds0 p14, p10, p3, p14
/* 8016D6E0 0016A6E0  11 EB 78 DC */	ps_madds0 p15, p11, p3, p15
/* 8016D6E4 0016A6E4  F1 85 00 00 */	psq_st p12, 0(r5), 0, qr0
/* 8016D6E8 0016A6E8  10 46 01 18 */	ps_muls0 p2, p6, p4
/* 8016D6EC 0016A6EC  11 BF 68 5E */	ps_madds1 p13, p31, p1, p13
/* 8016D6F0 0016A6F0  10 07 01 18 */	ps_muls0 p0, p7, p4
/* 8016D6F4 0016A6F4  F1 C5 00 10 */	psq_st p14, 16(r5), 0, qr0
/* 8016D6F8 0016A6F8  11 FF 78 DE */	ps_madds1 p15, p31, p3, p15
/* 8016D6FC 0016A6FC  F1 A5 00 08 */	psq_st p13, 8(r5), 0, qr0
/* 8016D700 0016A700  10 48 11 1E */	ps_madds1 p2, p8, p4, p2
/* 8016D704 0016A704  10 09 01 1E */	ps_madds1 p0, p9, p4, p0
/* 8016D708 0016A708  10 4A 11 5C */	ps_madds0 p2, p10, p5, p2
/* 8016D70C 0016A70C  C9 C1 00 08 */	lfd f14, 8(r1)
/* 8016D710 0016A710  F1 E5 00 18 */	psq_st p15, 24(r5), 0, qr0
/* 8016D714 0016A714  10 0B 01 5C */	ps_madds0 p0, p11, p5, p0
/* 8016D718 0016A718  F0 45 00 20 */	psq_st p2, 32(r5), 0, qr0
/* 8016D71C 0016A71C  10 1F 01 5E */	ps_madds1 p0, p31, p5, p0
/* 8016D720 0016A720  C9 E1 00 10 */	lfd f15, 0x10(r1)
/* 8016D724 0016A724  F0 05 00 28 */	psq_st p0, 40(r5), 0, qr0
/* 8016D728 0016A728  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 8016D72C 0016A72C  38 21 00 40 */	addi r1, r1, 0x40
/* 8016D730 0016A730  4E 80 00 20 */	blr 

.global PSMTXTranspose
PSMTXTranspose:
/* 8016D734 0016A734  C0 02 BA 34 */	lfs f0, lbl_8027B6D4@sda21(r2)
/* 8016D738 0016A738  E0 23 00 00 */	psq_l p1, 0(r3), 0, qr0
/* 8016D73C 0016A73C  D0 04 00 2C */	stfs f0, 0x2c(r4)
/* 8016D740 0016A740  E0 43 00 10 */	psq_l p2, 16(r3), 0, qr0
/* 8016D744 0016A744  10 81 14 20 */	ps_merge00 p4, p1, p2
/* 8016D748 0016A748  E0 63 80 08 */	psq_l p3, 8(r3), 1, qr0
/* 8016D74C 0016A74C  10 A1 14 E0 */	ps_merge11 p5, p1, p2
/* 8016D750 0016A750  E0 43 80 18 */	psq_l p2, 24(r3), 1, qr0
/* 8016D754 0016A754  F0 84 00 00 */	psq_st p4, 0(r4), 0, qr0
/* 8016D758 0016A758  E0 23 00 20 */	psq_l p1, 32(r3), 0, qr0
/* 8016D75C 0016A75C  10 43 14 20 */	ps_merge00 p2, p3, p2
/* 8016D760 0016A760  F0 A4 00 10 */	psq_st p5, 16(r4), 0, qr0
/* 8016D764 0016A764  10 81 04 20 */	ps_merge00 p4, p1, p0
/* 8016D768 0016A768  F0 44 00 20 */	psq_st p2, 32(r4), 0, qr0
/* 8016D76C 0016A76C  10 A1 04 A0 */	ps_merge10 p5, p1, p0
/* 8016D770 0016A770  F0 84 00 08 */	psq_st p4, 8(r4), 0, qr0
/* 8016D774 0016A774  C0 63 00 28 */	lfs f3, 0x28(r3)
/* 8016D778 0016A778  F0 A4 00 18 */	psq_st p5, 24(r4), 0, qr0
/* 8016D77C 0016A77C  D0 64 00 28 */	stfs f3, 0x28(r4)
/* 8016D780 0016A780  4E 80 00 20 */	blr 

.global PSMTXInverse
PSMTXInverse:
/* 8016D784 0016A784  E0 03 80 00 */	psq_l p0, 0(r3), 1, qr0
/* 8016D788 0016A788  E0 23 00 04 */	psq_l p1, 4(r3), 0, qr0
/* 8016D78C 0016A78C  E0 43 80 10 */	psq_l p2, 16(r3), 1, qr0
/* 8016D790 0016A790  10 C1 04 A0 */	ps_merge10 p6, p1, p0
/* 8016D794 0016A794  E0 63 00 14 */	psq_l p3, 20(r3), 0, qr0
/* 8016D798 0016A798  E0 83 80 20 */	psq_l p4, 32(r3), 1, qr0
/* 8016D79C 0016A79C  10 E3 14 A0 */	ps_merge10 p7, p3, p2
/* 8016D7A0 0016A7A0  E0 A3 00 24 */	psq_l p5, 36(r3), 0, qr0
/* 8016D7A4 0016A7A4  11 63 01 B2 */	ps_mul p11, p3, p6
/* 8016D7A8 0016A7A8  11 A5 01 F2 */	ps_mul p13, p5, p7
/* 8016D7AC 0016A7AC  11 05 24 A0 */	ps_merge10 p8, p5, p4
/* 8016D7B0 0016A7B0  11 61 59 F8 */	ps_msub p11, p1, p7, p11
/* 8016D7B4 0016A7B4  11 81 02 32 */	ps_mul p12, p1, p8
/* 8016D7B8 0016A7B8  11 A3 6A 38 */	ps_msub p13, p3, p8, p13
/* 8016D7BC 0016A7BC  11 43 01 32 */	ps_mul p10, p3, p4
/* 8016D7C0 0016A7C0  11 85 61 B8 */	ps_msub p12, p5, p6, p12
/* 8016D7C4 0016A7C4  11 20 01 72 */	ps_mul p9, p0, p5
/* 8016D7C8 0016A7C8  11 01 00 B2 */	ps_mul p8, p1, p2
/* 8016D7CC 0016A7CC  10 C6 30 28 */	ps_sub p6, p6, p6
/* 8016D7D0 0016A7D0  11 42 51 78 */	ps_msub p10, p2, p5, p10
/* 8016D7D4 0016A7D4  10 E0 03 72 */	ps_mul p7, p0, p13
/* 8016D7D8 0016A7D8  11 21 49 38 */	ps_msub p9, p1, p4, p9
/* 8016D7DC 0016A7DC  10 E2 3B 3A */	ps_madd p7, p2, p12, p7
/* 8016D7E0 0016A7E0  11 00 40 F8 */	ps_msub p8, p0, p3, p8
/* 8016D7E4 0016A7E4  10 E4 3A FA */	ps_madd p7, p4, p11, p7
/* 8016D7E8 0016A7E8  10 07 30 40 */	ps_cmpo0 cr0, p7, p6
/* 8016D7EC 0016A7EC  40 82 00 0C */	bne lbl_8016D7F8
/* 8016D7F0 0016A7F0  38 60 00 00 */	li r3, 0
/* 8016D7F4 0016A7F4  4E 80 00 20 */	blr 
lbl_8016D7F8:
/* 8016D7F8 0016A7F8  EC 00 38 30 */	fres f0, f7
/* 8016D7FC 0016A7FC  10 C0 00 2A */	ps_add p6, p0, p0
/* 8016D800 0016A800  10 A0 00 32 */	ps_mul p5, p0, p0
/* 8016D804 0016A804  10 07 31 7C */	ps_nmsub p0, p7, p5, p6
/* 8016D808 0016A808  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8016D80C 0016A80C  11 AD 00 18 */	ps_muls0 p13, p13, p0
/* 8016D810 0016A810  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 8016D814 0016A814  11 8C 00 18 */	ps_muls0 p12, p12, p0
/* 8016D818 0016A818  C0 63 00 2C */	lfs f3, 0x2c(r3)
/* 8016D81C 0016A81C  11 6B 00 18 */	ps_muls0 p11, p11, p0
/* 8016D820 0016A820  10 AD 64 20 */	ps_merge00 p5, p13, p12
/* 8016D824 0016A824  11 4A 00 18 */	ps_muls0 p10, p10, p0
/* 8016D828 0016A828  10 8D 64 E0 */	ps_merge11 p4, p13, p12
/* 8016D82C 0016A82C  11 29 00 18 */	ps_muls0 p9, p9, p0
/* 8016D830 0016A830  F0 A4 00 00 */	psq_st p5, 0(r4), 0, qr0
/* 8016D834 0016A834  10 CD 00 72 */	ps_mul p6, p13, p1
/* 8016D838 0016A838  F0 84 00 10 */	psq_st p4, 16(r4), 0, qr0
/* 8016D83C 0016A83C  11 08 00 18 */	ps_muls0 p8, p8, p0
/* 8016D840 0016A840  10 CC 30 BA */	ps_madd p6, p12, p2, p6
/* 8016D844 0016A844  F1 44 80 20 */	psq_st p10, 32(r4), 1, qr0
/* 8016D848 0016A848  10 CB 30 FE */	ps_nmadd p6, p11, p3, p6
/* 8016D84C 0016A84C  F1 24 80 24 */	psq_st p9, 36(r4), 1, qr0
/* 8016D850 0016A850  10 EA 00 72 */	ps_mul p7, p10, p1
/* 8016D854 0016A854  10 AB 34 20 */	ps_merge00 p5, p11, p6
/* 8016D858 0016A858  F1 04 80 28 */	psq_st p8, 40(r4), 1, qr0
/* 8016D85C 0016A85C  10 8B 34 E0 */	ps_merge11 p4, p11, p6
/* 8016D860 0016A860  F0 A4 00 08 */	psq_st p5, 8(r4), 0, qr0
/* 8016D864 0016A864  10 E9 38 BA */	ps_madd p7, p9, p2, p7
/* 8016D868 0016A868  F0 84 00 18 */	psq_st p4, 24(r4), 0, qr0
/* 8016D86C 0016A86C  10 E8 38 FE */	ps_nmadd p7, p8, p3, p7
/* 8016D870 0016A870  38 60 00 01 */	li r3, 1
/* 8016D874 0016A874  F0 E4 80 2C */	psq_st p7, 44(r4), 1, qr0
/* 8016D878 0016A878  4E 80 00 20 */	blr 

.global PSMTXInvXpose
PSMTXInvXpose:
/* 8016D87C 0016A87C  E0 03 80 00 */	psq_l p0, 0(r3), 1, qr0
/* 8016D880 0016A880  E0 23 00 04 */	psq_l p1, 4(r3), 0, qr0
/* 8016D884 0016A884  E0 43 80 10 */	psq_l p2, 16(r3), 1, qr0
/* 8016D888 0016A888  10 C1 04 A0 */	ps_merge10 p6, p1, p0
/* 8016D88C 0016A88C  E0 63 00 14 */	psq_l p3, 20(r3), 0, qr0
/* 8016D890 0016A890  E0 83 80 20 */	psq_l p4, 32(r3), 1, qr0
/* 8016D894 0016A894  10 E3 14 A0 */	ps_merge10 p7, p3, p2
/* 8016D898 0016A898  E0 A3 00 24 */	psq_l p5, 36(r3), 0, qr0
/* 8016D89C 0016A89C  11 63 01 B2 */	ps_mul p11, p3, p6
/* 8016D8A0 0016A8A0  11 05 24 A0 */	ps_merge10 p8, p5, p4
/* 8016D8A4 0016A8A4  11 A5 01 F2 */	ps_mul p13, p5, p7
/* 8016D8A8 0016A8A8  11 61 59 F8 */	ps_msub p11, p1, p7, p11
/* 8016D8AC 0016A8AC  11 81 02 32 */	ps_mul p12, p1, p8
/* 8016D8B0 0016A8B0  11 A3 6A 38 */	ps_msub p13, p3, p8, p13
/* 8016D8B4 0016A8B4  11 85 61 B8 */	ps_msub p12, p5, p6, p12
/* 8016D8B8 0016A8B8  11 43 01 32 */	ps_mul p10, p3, p4
/* 8016D8BC 0016A8BC  11 20 01 72 */	ps_mul p9, p0, p5
/* 8016D8C0 0016A8C0  11 01 00 B2 */	ps_mul p8, p1, p2
/* 8016D8C4 0016A8C4  11 42 51 78 */	ps_msub p10, p2, p5, p10
/* 8016D8C8 0016A8C8  11 21 49 38 */	ps_msub p9, p1, p4, p9
/* 8016D8CC 0016A8CC  11 00 40 F8 */	ps_msub p8, p0, p3, p8
/* 8016D8D0 0016A8D0  10 E0 03 72 */	ps_mul p7, p0, p13
/* 8016D8D4 0016A8D4  10 21 08 28 */	ps_sub p1, p1, p1
/* 8016D8D8 0016A8D8  10 E2 3B 3A */	ps_madd p7, p2, p12, p7
/* 8016D8DC 0016A8DC  10 E4 3A FA */	ps_madd p7, p4, p11, p7
/* 8016D8E0 0016A8E0  10 07 08 40 */	ps_cmpo0 cr0, p7, p1
/* 8016D8E4 0016A8E4  40 82 00 0C */	bne lbl_8016D8F0
/* 8016D8E8 0016A8E8  38 60 00 00 */	li r3, 0
/* 8016D8EC 0016A8EC  4E 80 00 20 */	blr 
lbl_8016D8F0:
/* 8016D8F0 0016A8F0  EC 00 38 30 */	fres f0, f7
/* 8016D8F4 0016A8F4  F0 24 80 0C */	psq_st p1, 12(r4), 1, qr0
/* 8016D8F8 0016A8F8  10 C0 00 2A */	ps_add p6, p0, p0
/* 8016D8FC 0016A8FC  10 A0 00 32 */	ps_mul p5, p0, p0
/* 8016D900 0016A900  F0 24 80 1C */	psq_st p1, 28(r4), 1, qr0
/* 8016D904 0016A904  10 07 31 7C */	ps_nmsub p0, p7, p5, p6
/* 8016D908 0016A908  F0 24 80 2C */	psq_st p1, 44(r4), 1, qr0
/* 8016D90C 0016A90C  11 AD 00 18 */	ps_muls0 p13, p13, p0
/* 8016D910 0016A910  11 8C 00 18 */	ps_muls0 p12, p12, p0
/* 8016D914 0016A914  11 6B 00 18 */	ps_muls0 p11, p11, p0
/* 8016D918 0016A918  F1 A4 00 00 */	psq_st p13, 0(r4), 0, qr0
/* 8016D91C 0016A91C  F1 84 00 10 */	psq_st p12, 16(r4), 0, qr0
/* 8016D920 0016A920  11 4A 00 18 */	ps_muls0 p10, p10, p0
/* 8016D924 0016A924  11 29 00 18 */	ps_muls0 p9, p9, p0
/* 8016D928 0016A928  F1 64 00 20 */	psq_st p11, 32(r4), 0, qr0
/* 8016D92C 0016A92C  F1 44 80 08 */	psq_st p10, 8(r4), 1, qr0
/* 8016D930 0016A930  11 08 00 18 */	ps_muls0 p8, p8, p0
/* 8016D934 0016A934  38 60 00 01 */	li r3, 1
/* 8016D938 0016A938  F1 24 80 18 */	psq_st p9, 24(r4), 1, qr0
/* 8016D93C 0016A93C  F1 04 80 28 */	psq_st p8, 40(r4), 1, qr0
/* 8016D940 0016A940  4E 80 00 20 */	blr 

.global PSMTXRotRad
PSMTXRotRad:
/* 8016D944 0016A944  7C 08 02 A6 */	mflr r0
/* 8016D948 0016A948  90 01 00 04 */	stw r0, 4(r1)
/* 8016D94C 0016A94C  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8016D950 0016A950  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8016D954 0016A954  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8016D958 0016A958  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8016D95C 0016A95C  FF E0 08 90 */	fmr f31, f1
/* 8016D960 0016A960  7C 7E 1B 78 */	mr r30, r3
/* 8016D964 0016A964  7C 9F 23 78 */	mr r31, r4
/* 8016D968 0016A968  FC 20 F8 90 */	fmr f1, f31
/* 8016D96C 0016A96C  48 02 8E 71 */	bl sinf
/* 8016D970 0016A970  FC 00 08 90 */	fmr f0, f1
/* 8016D974 0016A974  FC 20 F8 90 */	fmr f1, f31
/* 8016D978 0016A978  FF E0 00 90 */	fmr f31, f0
/* 8016D97C 0016A97C  48 02 8E 85 */	bl cosf
/* 8016D980 0016A980  FC 00 08 90 */	fmr f0, f1
/* 8016D984 0016A984  7F C3 F3 78 */	mr r3, r30
/* 8016D988 0016A988  FC 20 F8 90 */	fmr f1, f31
/* 8016D98C 0016A98C  7F E4 FB 78 */	mr r4, r31
/* 8016D990 0016A990  FC 40 00 90 */	fmr f2, f0
/* 8016D994 0016A994  48 00 00 21 */	bl PSMTXRotTrig
/* 8016D998 0016A998  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8016D99C 0016A99C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8016D9A0 0016A9A0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8016D9A4 0016A9A4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8016D9A8 0016A9A8  38 21 00 28 */	addi r1, r1, 0x28
/* 8016D9AC 0016A9AC  7C 08 03 A6 */	mtlr r0
/* 8016D9B0 0016A9B0  4E 80 00 20 */	blr 

.global PSMTXRotTrig
PSMTXRotTrig:
/* 8016D9B4 0016A9B4  FC A0 08 18 */	frsp f5, f1
/* 8016D9B8 0016A9B8  FC 80 10 18 */	frsp f4, f2
/* 8016D9BC 0016A9BC  C0 02 BA 34 */	lfs f0, lbl_8027B6D4@sda21(r2)
/* 8016D9C0 0016A9C0  C0 22 BA 30 */	lfs f1, lbl_8027B6D0@sda21(r2)
/* 8016D9C4 0016A9C4  60 80 00 20 */	ori r0, r4, 0x20
/* 8016D9C8 0016A9C8  10 40 28 50 */	ps_neg p2, p5
/* 8016D9CC 0016A9CC  28 00 00 78 */	cmplwi r0, 0x78
/* 8016D9D0 0016A9D0  41 82 00 18 */	beq lbl_8016D9E8
/* 8016D9D4 0016A9D4  28 00 00 79 */	cmplwi r0, 0x79
/* 8016D9D8 0016A9D8  41 82 00 38 */	beq lbl_8016DA10
/* 8016D9DC 0016A9DC  28 00 00 7A */	cmplwi r0, 0x7a
/* 8016D9E0 0016A9E0  41 82 00 5C */	beq lbl_8016DA3C
/* 8016D9E4 0016A9E4  48 00 00 7C */	b lbl_8016DA60
lbl_8016D9E8:
/* 8016D9E8 0016A9E8  F0 23 80 00 */	psq_st p1, 0(r3), 1, qr0
/* 8016D9EC 0016A9EC  F0 03 00 04 */	psq_st p0, 4(r3), 0, qr0
/* 8016D9F0 0016A9F0  10 65 24 20 */	ps_merge00 p3, p5, p4
/* 8016D9F4 0016A9F4  F0 03 00 0C */	psq_st p0, 12(r3), 0, qr0
/* 8016D9F8 0016A9F8  10 24 14 20 */	ps_merge00 p1, p4, p2
/* 8016D9FC 0016A9FC  F0 03 00 1C */	psq_st p0, 28(r3), 0, qr0
/* 8016DA00 0016AA00  F0 03 80 2C */	psq_st p0, 44(r3), 1, qr0
/* 8016DA04 0016AA04  F0 63 00 24 */	psq_st p3, 36(r3), 0, qr0
/* 8016DA08 0016AA08  F0 23 00 14 */	psq_st p1, 20(r3), 0, qr0
/* 8016DA0C 0016AA0C  48 00 00 54 */	b lbl_8016DA60
lbl_8016DA10:
/* 8016DA10 0016AA10  10 64 04 20 */	ps_merge00 p3, p4, p0
/* 8016DA14 0016AA14  10 20 0C 20 */	ps_merge00 p1, p0, p1
/* 8016DA18 0016AA18  F0 03 00 18 */	psq_st p0, 24(r3), 0, qr0
/* 8016DA1C 0016AA1C  F0 63 00 00 */	psq_st p3, 0(r3), 0, qr0
/* 8016DA20 0016AA20  10 42 04 20 */	ps_merge00 p2, p2, p0
/* 8016DA24 0016AA24  10 05 04 20 */	ps_merge00 p0, p5, p0
/* 8016DA28 0016AA28  F0 63 00 28 */	psq_st p3, 40(r3), 0, qr0
/* 8016DA2C 0016AA2C  F0 23 00 10 */	psq_st p1, 16(r3), 0, qr0
/* 8016DA30 0016AA30  F0 03 00 08 */	psq_st p0, 8(r3), 0, qr0
/* 8016DA34 0016AA34  F0 43 00 20 */	psq_st p2, 32(r3), 0, qr0
/* 8016DA38 0016AA38  48 00 00 28 */	b lbl_8016DA60
lbl_8016DA3C:
/* 8016DA3C 0016AA3C  F0 03 00 08 */	psq_st p0, 8(r3), 0, qr0
/* 8016DA40 0016AA40  10 65 24 20 */	ps_merge00 p3, p5, p4
/* 8016DA44 0016AA44  10 44 14 20 */	ps_merge00 p2, p4, p2
/* 8016DA48 0016AA48  F0 03 00 18 */	psq_st p0, 24(r3), 0, qr0
/* 8016DA4C 0016AA4C  F0 03 00 20 */	psq_st p0, 32(r3), 0, qr0
/* 8016DA50 0016AA50  10 21 04 20 */	ps_merge00 p1, p1, p0
/* 8016DA54 0016AA54  F0 63 00 10 */	psq_st p3, 16(r3), 0, qr0
/* 8016DA58 0016AA58  F0 43 00 00 */	psq_st p2, 0(r3), 0, qr0
/* 8016DA5C 0016AA5C  F0 23 00 28 */	psq_st p1, 40(r3), 0, qr0
lbl_8016DA60:
/* 8016DA60 0016AA60  4E 80 00 20 */	blr 

.global __PSMTXRotAxisRadInternal
__PSMTXRotAxisRadInternal:
/* 8016DA64 0016AA64  C1 42 BA 38 */	lfs f10, lbl_8027B6D8@sda21(r2)
/* 8016DA68 0016AA68  C1 22 BA 3C */	lfs f9, lbl_8027B6DC@sda21(r2)
/* 8016DA6C 0016AA6C  FD 60 10 18 */	frsp f11, f2
/* 8016DA70 0016AA70  E0 44 00 00 */	psq_l p2, 0(r4), 0, qr0
/* 8016DA74 0016AA74  FD 80 08 18 */	frsp f12, f1
/* 8016DA78 0016AA78  C0 64 00 08 */	lfs f3, 8(r4)
/* 8016DA7C 0016AA7C  10 82 00 B2 */	ps_mul p4, p2, p2
/* 8016DA80 0016AA80  ED 0A 50 2A */	fadds f8, f10, f10
/* 8016DA84 0016AA84  10 A3 20 FA */	ps_madd p5, p3, p3, p4
/* 8016DA88 0016AA88  EC 2A 50 28 */	fsubs f1, f10, f10
/* 8016DA8C 0016AA8C  10 C5 20 D4 */	ps_sum0 p6, p5, p3, p4
/* 8016DA90 0016AA90  EC 08 58 28 */	fsubs f0, f8, f11
/* 8016DA94 0016AA94  FC E0 30 34 */	frsqrte f7, f6
/* 8016DA98 0016AA98  EC 87 01 F2 */	fmuls f4, f7, f7
/* 8016DA9C 0016AA9C  EC A7 02 B2 */	fmuls f5, f7, f10
/* 8016DAA0 0016AAA0  EC 84 49 BC */	fnmsubs f4, f4, f6, f9
/* 8016DAA4 0016AAA4  EC E4 01 72 */	fmuls f7, f4, f5
/* 8016DAA8 0016AAA8  11 6B 5C 20 */	ps_merge00 p11, p11, p11
/* 8016DAAC 0016AAAC  10 42 01 D8 */	ps_muls0 p2, p2, p7
/* 8016DAB0 0016AAB0  10 63 01 D8 */	ps_muls0 p3, p3, p7
/* 8016DAB4 0016AAB4  10 C2 00 18 */	ps_muls0 p6, p2, p0
/* 8016DAB8 0016AAB8  11 42 03 18 */	ps_muls0 p10, p2, p12
/* 8016DABC 0016AABC  10 E3 00 18 */	ps_muls0 p7, p3, p0
/* 8016DAC0 0016AAC0  10 A6 00 9A */	ps_muls1 p5, p6, p2
/* 8016DAC4 0016AAC4  10 86 00 98 */	ps_muls0 p4, p6, p2
/* 8016DAC8 0016AAC8  10 C6 00 D8 */	ps_muls0 p6, p6, p3
/* 8016DACC 0016AACC  EC 03 2B 3C */	fnmsubs f0, f3, f12, f5
/* 8016DAD0 0016AAD0  ED 03 2B 3A */	fmadds f8, f3, f12, f5
/* 8016DAD4 0016AAD4  10 40 50 50 */	ps_neg p2, p10
/* 8016DAD8 0016AAD8  11 26 50 54 */	ps_sum0 p9, p6, p1, p10
/* 8016DADC 0016AADC  10 84 58 14 */	ps_sum0 p4, p4, p0, p11
/* 8016DAE0 0016AAE0  10 AB 2A 16 */	ps_sum1 p5, p11, p8, p5
/* 8016DAE4 0016AAE4  10 02 30 54 */	ps_sum0 p0, p2, p1, p6
/* 8016DAE8 0016AAE8  F1 23 00 08 */	psq_st p9, 8(r3), 0, qr0
/* 8016DAEC 0016AAEC  10 46 11 94 */	ps_sum0 p2, p6, p6, p2
/* 8016DAF0 0016AAF0  F0 83 00 00 */	psq_st p4, 0(r3), 0, qr0
/* 8016DAF4 0016AAF4  10 E7 00 D8 */	ps_muls0 p7, p7, p3
/* 8016DAF8 0016AAF8  F0 A3 00 10 */	psq_st p5, 16(r3), 0, qr0
/* 8016DAFC 0016AAFC  10 CA 30 96 */	ps_sum1 p6, p10, p2, p6
/* 8016DB00 0016AB00  F0 03 00 18 */	psq_st p0, 24(r3), 0, qr0
/* 8016DB04 0016AB04  10 E7 58 54 */	ps_sum0 p7, p7, p1, p11
/* 8016DB08 0016AB08  F0 C3 00 20 */	psq_st p6, 32(r3), 0, qr0
/* 8016DB0C 0016AB0C  F0 E3 00 28 */	psq_st p7, 40(r3), 0, qr0
/* 8016DB10 0016AB10  4E 80 00 20 */	blr 

.global PSMTXRotAxisRad
PSMTXRotAxisRad:
/* 8016DB14 0016AB14  7C 08 02 A6 */	mflr r0
/* 8016DB18 0016AB18  90 01 00 04 */	stw r0, 4(r1)
/* 8016DB1C 0016AB1C  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8016DB20 0016AB20  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8016DB24 0016AB24  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8016DB28 0016AB28  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8016DB2C 0016AB2C  FF E0 08 90 */	fmr f31, f1
/* 8016DB30 0016AB30  7C 7E 1B 78 */	mr r30, r3
/* 8016DB34 0016AB34  7C 9F 23 78 */	mr r31, r4
/* 8016DB38 0016AB38  FC 20 F8 90 */	fmr f1, f31
/* 8016DB3C 0016AB3C  48 02 8C A1 */	bl sinf
/* 8016DB40 0016AB40  FC 00 08 90 */	fmr f0, f1
/* 8016DB44 0016AB44  FC 20 F8 90 */	fmr f1, f31
/* 8016DB48 0016AB48  FF E0 00 90 */	fmr f31, f0
/* 8016DB4C 0016AB4C  48 02 8C B5 */	bl cosf
/* 8016DB50 0016AB50  FC 00 08 90 */	fmr f0, f1
/* 8016DB54 0016AB54  7F C3 F3 78 */	mr r3, r30
/* 8016DB58 0016AB58  FC 20 F8 90 */	fmr f1, f31
/* 8016DB5C 0016AB5C  7F E4 FB 78 */	mr r4, r31
/* 8016DB60 0016AB60  FC 40 00 90 */	fmr f2, f0
/* 8016DB64 0016AB64  4B FF FF 01 */	bl __PSMTXRotAxisRadInternal
/* 8016DB68 0016AB68  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8016DB6C 0016AB6C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8016DB70 0016AB70  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8016DB74 0016AB74  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8016DB78 0016AB78  38 21 00 28 */	addi r1, r1, 0x28
/* 8016DB7C 0016AB7C  7C 08 03 A6 */	mtlr r0
/* 8016DB80 0016AB80  4E 80 00 20 */	blr 

.global PSMTXTrans
PSMTXTrans:
/* 8016DB84 0016AB84  C0 02 BA 34 */	lfs f0, lbl_8027B6D4@sda21(r2)
/* 8016DB88 0016AB88  C0 82 BA 30 */	lfs f4, lbl_8027B6D0@sda21(r2)
/* 8016DB8C 0016AB8C  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 8016DB90 0016AB90  D0 43 00 1C */	stfs f2, 0x1c(r3)
/* 8016DB94 0016AB94  F0 03 00 04 */	psq_st p0, 4(r3), 0, qr0
/* 8016DB98 0016AB98  F0 03 00 20 */	psq_st p0, 32(r3), 0, qr0
/* 8016DB9C 0016AB9C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8016DBA0 0016ABA0  D0 83 00 14 */	stfs f4, 0x14(r3)
/* 8016DBA4 0016ABA4  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8016DBA8 0016ABA8  D0 83 00 28 */	stfs f4, 0x28(r3)
/* 8016DBAC 0016ABAC  D0 63 00 2C */	stfs f3, 0x2c(r3)
/* 8016DBB0 0016ABB0  D0 83 00 00 */	stfs f4, 0(r3)
/* 8016DBB4 0016ABB4  4E 80 00 20 */	blr 

.global PSMTXScale
PSMTXScale:
/* 8016DBB8 0016ABB8  C0 02 BA 34 */	lfs f0, lbl_8027B6D4@sda21(r2)
/* 8016DBBC 0016ABBC  D0 23 00 00 */	stfs f1, 0(r3)
/* 8016DBC0 0016ABC0  F0 03 00 04 */	psq_st p0, 4(r3), 0, qr0
/* 8016DBC4 0016ABC4  F0 03 00 0C */	psq_st p0, 12(r3), 0, qr0
/* 8016DBC8 0016ABC8  D0 43 00 14 */	stfs f2, 0x14(r3)
/* 8016DBCC 0016ABCC  F0 03 00 18 */	psq_st p0, 24(r3), 0, qr0
/* 8016DBD0 0016ABD0  F0 03 00 20 */	psq_st p0, 32(r3), 0, qr0
/* 8016DBD4 0016ABD4  D0 63 00 28 */	stfs f3, 0x28(r3)
/* 8016DBD8 0016ABD8  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 8016DBDC 0016ABDC  4E 80 00 20 */	blr 

.global PSMTXQuat
PSMTXQuat:
/* 8016DBE0 0016ABE0  C0 22 BA 30 */	lfs f1, lbl_8027B6D0@sda21(r2)
/* 8016DBE4 0016ABE4  E0 84 00 00 */	psq_l p4, 0(r4), 0, qr0
/* 8016DBE8 0016ABE8  E0 A4 00 08 */	psq_l p5, 8(r4), 0, qr0
/* 8016DBEC 0016ABEC  EC 01 08 28 */	fsubs f0, f1, f1
/* 8016DBF0 0016ABF0  EC 41 08 2A */	fadds f2, f1, f1
/* 8016DBF4 0016ABF4  10 C4 01 32 */	ps_mul p6, p4, p4
/* 8016DBF8 0016ABF8  11 24 24 A0 */	ps_merge10 p9, p4, p4
/* 8016DBFC 0016ABFC  11 05 31 7A */	ps_madd p8, p5, p5, p6
/* 8016DC00 0016AC00  10 E5 01 72 */	ps_mul p7, p5, p5
/* 8016DC04 0016AC04  10 68 42 14 */	ps_sum0 p3, p8, p8, p8
/* 8016DC08 0016AC08  11 49 01 5A */	ps_muls1 p10, p9, p5
/* 8016DC0C 0016AC0C  ED 60 18 30 */	fres f11, f3
/* 8016DC10 0016AC10  11 07 32 16 */	ps_sum1 p8, p7, p8, p6
/* 8016DC14 0016AC14  10 63 12 FC */	ps_nmsub p3, p3, p11, p2
/* 8016DC18 0016AC18  10 E5 01 5A */	ps_muls1 p7, p5, p5
/* 8016DC1C 0016AC1C  10 6B 00 F2 */	ps_mul p3, p11, p3
/* 8016DC20 0016AC20  10 C6 31 94 */	ps_sum0 p6, p6, p6, p6
/* 8016DC24 0016AC24  EC 63 00 B2 */	fmuls f3, f3, f2
/* 8016DC28 0016AC28  11 64 3A 7A */	ps_madd p11, p4, p9, p7
/* 8016DC2C 0016AC2C  10 E4 3A 78 */	ps_msub p7, p4, p9, p7
/* 8016DC30 0016AC30  F0 03 80 0C */	psq_st p0, 12(r3), 1, qr0
/* 8016DC34 0016AC34  10 C6 08 FC */	ps_nmsub p6, p6, p3, p1
/* 8016DC38 0016AC38  11 08 08 FC */	ps_nmsub p8, p8, p3, p1
/* 8016DC3C 0016AC3C  F0 03 80 2C */	psq_st p0, 44(r3), 1, qr0
/* 8016DC40 0016AC40  11 6B 00 F2 */	ps_mul p11, p11, p3
/* 8016DC44 0016AC44  10 E7 00 F2 */	ps_mul p7, p7, p3
/* 8016DC48 0016AC48  F0 C3 80 28 */	psq_st p6, 40(r3), 1, qr0
/* 8016DC4C 0016AC4C  11 24 51 5C */	ps_madds0 p9, p4, p5, p10
/* 8016DC50 0016AC50  10 AB 44 20 */	ps_merge00 p5, p11, p8
/* 8016DC54 0016AC54  11 4A 48 BC */	ps_nmsub p10, p10, p2, p9
/* 8016DC58 0016AC58  10 88 3C A0 */	ps_merge10 p4, p8, p7
/* 8016DC5C 0016AC5C  F0 A3 00 10 */	psq_st p5, 16(r3), 0, qr0
/* 8016DC60 0016AC60  11 29 00 F2 */	ps_mul p9, p9, p3
/* 8016DC64 0016AC64  11 4A 00 F2 */	ps_mul p10, p10, p3
/* 8016DC68 0016AC68  F0 83 00 00 */	psq_st p4, 0(r3), 0, qr0
/* 8016DC6C 0016AC6C  F1 23 80 08 */	psq_st p9, 8(r3), 1, qr0
/* 8016DC70 0016AC70  10 EA 04 A0 */	ps_merge10 p7, p10, p0
/* 8016DC74 0016AC74  11 6A 4C 60 */	ps_merge01 p11, p10, p9
/* 8016DC78 0016AC78  F0 E3 00 18 */	psq_st p7, 24(r3), 0, qr0
/* 8016DC7C 0016AC7C  F1 63 00 20 */	psq_st p11, 32(r3), 0, qr0
/* 8016DC80 0016AC80  4E 80 00 20 */	blr 

.global C_MTXLookAt
C_MTXLookAt:
/* 8016DC84 0016AC84  7C 08 02 A6 */	mflr r0
/* 8016DC88 0016AC88  90 01 00 04 */	stw r0, 4(r1)
/* 8016DC8C 0016AC8C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8016DC90 0016AC90  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8016DC94 0016AC94  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8016DC98 0016AC98  93 A1 00 44 */	stw r29, 0x44(r1)
/* 8016DC9C 0016AC9C  7C 7D 1B 78 */	mr r29, r3
/* 8016DCA0 0016ACA0  7C 9E 23 78 */	mr r30, r4
/* 8016DCA4 0016ACA4  7C BF 2B 78 */	mr r31, r5
/* 8016DCA8 0016ACA8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8016DCAC 0016ACAC  38 61 00 30 */	addi r3, r1, 0x30
/* 8016DCB0 0016ACB0  C0 06 00 00 */	lfs f0, 0(r6)
/* 8016DCB4 0016ACB4  7C 64 1B 78 */	mr r4, r3
/* 8016DCB8 0016ACB8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8016DCBC 0016ACBC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8016DCC0 0016ACC0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8016DCC4 0016ACC4  C0 06 00 04 */	lfs f0, 4(r6)
/* 8016DCC8 0016ACC8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8016DCCC 0016ACCC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8016DCD0 0016ACD0  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8016DCD4 0016ACD4  C0 06 00 08 */	lfs f0, 8(r6)
/* 8016DCD8 0016ACD8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8016DCDC 0016ACDC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8016DCE0 0016ACE0  48 00 06 29 */	bl PSVECNormalize
/* 8016DCE4 0016ACE4  7F E3 FB 78 */	mr r3, r31
/* 8016DCE8 0016ACE8  38 81 00 30 */	addi r4, r1, 0x30
/* 8016DCEC 0016ACEC  38 A1 00 24 */	addi r5, r1, 0x24
/* 8016DCF0 0016ACF0  48 00 06 D9 */	bl PSVECCrossProduct
/* 8016DCF4 0016ACF4  38 61 00 24 */	addi r3, r1, 0x24
/* 8016DCF8 0016ACF8  7C 64 1B 78 */	mr r4, r3
/* 8016DCFC 0016ACFC  48 00 06 0D */	bl PSVECNormalize
/* 8016DD00 0016AD00  38 61 00 30 */	addi r3, r1, 0x30
/* 8016DD04 0016AD04  38 81 00 24 */	addi r4, r1, 0x24
/* 8016DD08 0016AD08  38 A1 00 18 */	addi r5, r1, 0x18
/* 8016DD0C 0016AD0C  48 00 06 BD */	bl PSVECCrossProduct
/* 8016DD10 0016AD10  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8016DD14 0016AD14  D0 1D 00 00 */	stfs f0, 0(r29)
/* 8016DD18 0016AD18  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8016DD1C 0016AD1C  D0 1D 00 04 */	stfs f0, 4(r29)
/* 8016DD20 0016AD20  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8016DD24 0016AD24  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8016DD28 0016AD28  C0 7E 00 00 */	lfs f3, 0(r30)
/* 8016DD2C 0016AD2C  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 8016DD30 0016AD30  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8016DD34 0016AD34  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8016DD38 0016AD38  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8016DD3C 0016AD3C  C0 7E 00 08 */	lfs f3, 8(r30)
/* 8016DD40 0016AD40  EC 01 00 32 */	fmuls f0, f1, f0
/* 8016DD44 0016AD44  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8016DD48 0016AD48  EC 23 00 72 */	fmuls f1, f3, f1
/* 8016DD4C 0016AD4C  EC 02 00 2A */	fadds f0, f2, f0
/* 8016DD50 0016AD50  EC 01 00 2A */	fadds f0, f1, f0
/* 8016DD54 0016AD54  FC 00 00 50 */	fneg f0, f0
/* 8016DD58 0016AD58  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 8016DD5C 0016AD5C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8016DD60 0016AD60  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 8016DD64 0016AD64  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8016DD68 0016AD68  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 8016DD6C 0016AD6C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8016DD70 0016AD70  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 8016DD74 0016AD74  C0 7E 00 00 */	lfs f3, 0(r30)
/* 8016DD78 0016AD78  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8016DD7C 0016AD7C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8016DD80 0016AD80  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8016DD84 0016AD84  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8016DD88 0016AD88  C0 7E 00 08 */	lfs f3, 8(r30)
/* 8016DD8C 0016AD8C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8016DD90 0016AD90  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8016DD94 0016AD94  EC 23 00 72 */	fmuls f1, f3, f1
/* 8016DD98 0016AD98  EC 02 00 2A */	fadds f0, f2, f0
/* 8016DD9C 0016AD9C  EC 01 00 2A */	fadds f0, f1, f0
/* 8016DDA0 0016ADA0  FC 00 00 50 */	fneg f0, f0
/* 8016DDA4 0016ADA4  D0 1D 00 1C */	stfs f0, 0x1c(r29)
/* 8016DDA8 0016ADA8  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8016DDAC 0016ADAC  D0 1D 00 20 */	stfs f0, 0x20(r29)
/* 8016DDB0 0016ADB0  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8016DDB4 0016ADB4  D0 1D 00 24 */	stfs f0, 0x24(r29)
/* 8016DDB8 0016ADB8  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8016DDBC 0016ADBC  D0 1D 00 28 */	stfs f0, 0x28(r29)
/* 8016DDC0 0016ADC0  C0 7E 00 00 */	lfs f3, 0(r30)
/* 8016DDC4 0016ADC4  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 8016DDC8 0016ADC8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8016DDCC 0016ADCC  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8016DDD0 0016ADD0  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8016DDD4 0016ADD4  C0 7E 00 08 */	lfs f3, 8(r30)
/* 8016DDD8 0016ADD8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8016DDDC 0016ADDC  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8016DDE0 0016ADE0  EC 23 00 72 */	fmuls f1, f3, f1
/* 8016DDE4 0016ADE4  EC 02 00 2A */	fadds f0, f2, f0
/* 8016DDE8 0016ADE8  EC 01 00 2A */	fadds f0, f1, f0
/* 8016DDEC 0016ADEC  FC 00 00 50 */	fneg f0, f0
/* 8016DDF0 0016ADF0  D0 1D 00 2C */	stfs f0, 0x2c(r29)
/* 8016DDF4 0016ADF4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8016DDF8 0016ADF8  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8016DDFC 0016ADFC  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8016DE00 0016AE00  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 8016DE04 0016AE04  38 21 00 50 */	addi r1, r1, 0x50
/* 8016DE08 0016AE08  7C 08 03 A6 */	mtlr r0
/* 8016DE0C 0016AE0C  4E 80 00 20 */	blr 

.global C_MTXLightFrustum
C_MTXLightFrustum:
/* 8016DE10 0016AE10  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8016DE14 0016AE14  C1 81 00 38 */	lfs f12, 0x38(r1)
/* 8016DE18 0016AE18  ED 44 18 28 */	fsubs f10, f4, f3
/* 8016DE1C 0016AE1C  C1 62 BA 30 */	lfs f11, lbl_8027B6D0@sda21(r2)
/* 8016DE20 0016AE20  EC 01 10 28 */	fsubs f0, f1, f2
/* 8016DE24 0016AE24  C1 22 BA 40 */	lfs f9, lbl_8027B6E0@sda21(r2)
/* 8016DE28 0016AE28  EC 64 18 2A */	fadds f3, f4, f3
/* 8016DE2C 0016AE2C  ED 4B 50 24 */	fdivs f10, f11, f10
/* 8016DE30 0016AE30  EC A9 01 72 */	fmuls f5, f9, f5
/* 8016DE34 0016AE34  ED 2B 00 24 */	fdivs f9, f11, f0
/* 8016DE38 0016AE38  EC 85 02 B2 */	fmuls f4, f5, f10
/* 8016DE3C 0016AE3C  EC 6A 00 F2 */	fmuls f3, f10, f3
/* 8016DE40 0016AE40  EC 01 10 2A */	fadds f0, f1, f2
/* 8016DE44 0016AE44  EC 26 01 32 */	fmuls f1, f6, f4
/* 8016DE48 0016AE48  EC 46 00 F2 */	fmuls f2, f6, f3
/* 8016DE4C 0016AE4C  EC 09 00 32 */	fmuls f0, f9, f0
/* 8016DE50 0016AE50  D0 23 00 00 */	stfs f1, 0(r3)
/* 8016DE54 0016AE54  EC 25 02 72 */	fmuls f1, f5, f9
/* 8016DE58 0016AE58  EC 42 40 28 */	fsubs f2, f2, f8
/* 8016DE5C 0016AE5C  C0 62 BA 34 */	lfs f3, lbl_8027B6D4@sda21(r2)
/* 8016DE60 0016AE60  EC 07 00 32 */	fmuls f0, f7, f0
/* 8016DE64 0016AE64  D0 63 00 04 */	stfs f3, 4(r3)
/* 8016DE68 0016AE68  EC 27 00 72 */	fmuls f1, f7, f1
/* 8016DE6C 0016AE6C  D0 43 00 08 */	stfs f2, 8(r3)
/* 8016DE70 0016AE70  EC 00 60 28 */	fsubs f0, f0, f12
/* 8016DE74 0016AE74  D0 63 00 0C */	stfs f3, 0xc(r3)
/* 8016DE78 0016AE78  D0 63 00 10 */	stfs f3, 0x10(r3)
/* 8016DE7C 0016AE7C  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 8016DE80 0016AE80  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8016DE84 0016AE84  D0 63 00 1C */	stfs f3, 0x1c(r3)
/* 8016DE88 0016AE88  D0 63 00 20 */	stfs f3, 0x20(r3)
/* 8016DE8C 0016AE8C  D0 63 00 24 */	stfs f3, 0x24(r3)
/* 8016DE90 0016AE90  C0 02 BA 44 */	lfs f0, lbl_8027B6E4@sda21(r2)
/* 8016DE94 0016AE94  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 8016DE98 0016AE98  D0 63 00 2C */	stfs f3, 0x2c(r3)
/* 8016DE9C 0016AE9C  38 21 00 30 */	addi r1, r1, 0x30
/* 8016DEA0 0016AEA0  4E 80 00 20 */	blr 

.global C_MTXLightPerspective
C_MTXLightPerspective:
/* 8016DEA4 0016AEA4  7C 08 02 A6 */	mflr r0
/* 8016DEA8 0016AEA8  90 01 00 04 */	stw r0, 4(r1)
/* 8016DEAC 0016AEAC  94 21 FF A8 */	stwu r1, -0x58(r1)
/* 8016DEB0 0016AEB0  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8016DEB4 0016AEB4  DB C1 00 48 */	stfd f30, 0x48(r1)
/* 8016DEB8 0016AEB8  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 8016DEBC 0016AEBC  DB 81 00 38 */	stfd f28, 0x38(r1)
/* 8016DEC0 0016AEC0  DB 61 00 30 */	stfd f27, 0x30(r1)
/* 8016DEC4 0016AEC4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8016DEC8 0016AEC8  FF 60 10 90 */	fmr f27, f2
/* 8016DECC 0016AECC  7C 7F 1B 78 */	mr r31, r3
/* 8016DED0 0016AED0  FF 80 18 90 */	fmr f28, f3
/* 8016DED4 0016AED4  FF A0 20 90 */	fmr f29, f4
/* 8016DED8 0016AED8  FF C0 28 90 */	fmr f30, f5
/* 8016DEDC 0016AEDC  FF E0 30 90 */	fmr f31, f6
/* 8016DEE0 0016AEE0  C0 42 BA 38 */	lfs f2, lbl_8027B6D8@sda21(r2)
/* 8016DEE4 0016AEE4  C0 02 BA 48 */	lfs f0, lbl_8027B6E8@sda21(r2)
/* 8016DEE8 0016AEE8  EC 22 00 72 */	fmuls f1, f2, f1
/* 8016DEEC 0016AEEC  EC 20 00 72 */	fmuls f1, f0, f1
/* 8016DEF0 0016AEF0  48 02 88 C9 */	bl tanf
/* 8016DEF4 0016AEF4  C0 62 BA 30 */	lfs f3, lbl_8027B6D0@sda21(r2)
/* 8016DEF8 0016AEF8  FC 40 F0 50 */	fneg f2, f30
/* 8016DEFC 0016AEFC  FC 00 F8 50 */	fneg f0, f31
/* 8016DF00 0016AF00  EC 83 08 24 */	fdivs f4, f3, f1
/* 8016DF04 0016AF04  EC 24 D8 24 */	fdivs f1, f4, f27
/* 8016DF08 0016AF08  EC 7C 00 72 */	fmuls f3, f28, f1
/* 8016DF0C 0016AF0C  EC 24 07 72 */	fmuls f1, f4, f29
/* 8016DF10 0016AF10  D0 7F 00 00 */	stfs f3, 0(r31)
/* 8016DF14 0016AF14  C0 62 BA 34 */	lfs f3, lbl_8027B6D4@sda21(r2)
/* 8016DF18 0016AF18  D0 7F 00 04 */	stfs f3, 4(r31)
/* 8016DF1C 0016AF1C  D0 5F 00 08 */	stfs f2, 8(r31)
/* 8016DF20 0016AF20  D0 7F 00 0C */	stfs f3, 0xc(r31)
/* 8016DF24 0016AF24  D0 7F 00 10 */	stfs f3, 0x10(r31)
/* 8016DF28 0016AF28  D0 3F 00 14 */	stfs f1, 0x14(r31)
/* 8016DF2C 0016AF2C  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 8016DF30 0016AF30  D0 7F 00 1C */	stfs f3, 0x1c(r31)
/* 8016DF34 0016AF34  D0 7F 00 20 */	stfs f3, 0x20(r31)
/* 8016DF38 0016AF38  D0 7F 00 24 */	stfs f3, 0x24(r31)
/* 8016DF3C 0016AF3C  C0 02 BA 44 */	lfs f0, lbl_8027B6E4@sda21(r2)
/* 8016DF40 0016AF40  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8016DF44 0016AF44  D0 7F 00 2C */	stfs f3, 0x2c(r31)
/* 8016DF48 0016AF48  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 8016DF4C 0016AF4C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8016DF50 0016AF50  CB C1 00 48 */	lfd f30, 0x48(r1)
/* 8016DF54 0016AF54  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 8016DF58 0016AF58  CB 81 00 38 */	lfd f28, 0x38(r1)
/* 8016DF5C 0016AF5C  CB 61 00 30 */	lfd f27, 0x30(r1)
/* 8016DF60 0016AF60  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8016DF64 0016AF64  38 21 00 58 */	addi r1, r1, 0x58
/* 8016DF68 0016AF68  7C 08 03 A6 */	mtlr r0
/* 8016DF6C 0016AF6C  4E 80 00 20 */	blr 

.global C_MTXLightOrtho
C_MTXLightOrtho:
/* 8016DF70 0016AF70  ED 44 18 28 */	fsubs f10, f4, f3
/* 8016DF74 0016AF74  C1 62 BA 30 */	lfs f11, lbl_8027B6D0@sda21(r2)
/* 8016DF78 0016AF78  EC 01 10 28 */	fsubs f0, f1, f2
/* 8016DF7C 0016AF7C  C1 22 BA 40 */	lfs f9, lbl_8027B6E0@sda21(r2)
/* 8016DF80 0016AF80  EC 64 18 2A */	fadds f3, f4, f3
/* 8016DF84 0016AF84  ED 8B 50 24 */	fdivs f12, f11, f10
/* 8016DF88 0016AF88  ED 4B 00 24 */	fdivs f10, f11, f0
/* 8016DF8C 0016AF8C  EC 89 03 32 */	fmuls f4, f9, f12
/* 8016DF90 0016AF90  FC 60 18 50 */	fneg f3, f3
/* 8016DF94 0016AF94  EC 01 10 2A */	fadds f0, f1, f2
/* 8016DF98 0016AF98  EC 24 01 72 */	fmuls f1, f4, f5
/* 8016DF9C 0016AF9C  EC 4C 00 F2 */	fmuls f2, f12, f3
/* 8016DFA0 0016AFA0  FC 00 00 50 */	fneg f0, f0
/* 8016DFA4 0016AFA4  D0 23 00 00 */	stfs f1, 0(r3)
/* 8016DFA8 0016AFA8  EC 29 02 B2 */	fmuls f1, f9, f10
/* 8016DFAC 0016AFAC  EC 45 00 B2 */	fmuls f2, f5, f2
/* 8016DFB0 0016AFB0  C0 62 BA 34 */	lfs f3, lbl_8027B6D4@sda21(r2)
/* 8016DFB4 0016AFB4  EC 0A 00 32 */	fmuls f0, f10, f0
/* 8016DFB8 0016AFB8  D0 63 00 04 */	stfs f3, 4(r3)
/* 8016DFBC 0016AFBC  EC 47 10 2A */	fadds f2, f7, f2
/* 8016DFC0 0016AFC0  EC 21 01 B2 */	fmuls f1, f1, f6
/* 8016DFC4 0016AFC4  D0 63 00 08 */	stfs f3, 8(r3)
/* 8016DFC8 0016AFC8  EC 06 00 32 */	fmuls f0, f6, f0
/* 8016DFCC 0016AFCC  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 8016DFD0 0016AFD0  D0 63 00 10 */	stfs f3, 0x10(r3)
/* 8016DFD4 0016AFD4  EC 08 00 2A */	fadds f0, f8, f0
/* 8016DFD8 0016AFD8  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 8016DFDC 0016AFDC  D0 63 00 18 */	stfs f3, 0x18(r3)
/* 8016DFE0 0016AFE0  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8016DFE4 0016AFE4  D0 63 00 20 */	stfs f3, 0x20(r3)
/* 8016DFE8 0016AFE8  D0 63 00 24 */	stfs f3, 0x24(r3)
/* 8016DFEC 0016AFEC  D0 63 00 28 */	stfs f3, 0x28(r3)
/* 8016DFF0 0016AFF0  D1 63 00 2C */	stfs f11, 0x2c(r3)
/* 8016DFF4 0016AFF4  4E 80 00 20 */	blr 
