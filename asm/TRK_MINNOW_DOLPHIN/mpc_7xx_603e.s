.include "macros.inc"

.section .text  # 0x8018D590 - 0x8018D908

.global func_8018D590
func_8018D590:
/* 8018D590 0018A590  3C 40 80 24 */	lis r2, lbl_80247860@h
/* 8018D594 0018A594  60 42 78 60 */	ori r2, r2, lbl_80247860@l
/* 8018D598 0018A598  7E 00 04 A6 */	mfsr r16, 0
/* 8018D59C 0018A59C  7E 21 04 A6 */	mfsr r17, 1
/* 8018D5A0 0018A5A0  7E 42 04 A6 */	mfsr r18, 2
/* 8018D5A4 0018A5A4  7E 63 04 A6 */	mfsr r19, 3
/* 8018D5A8 0018A5A8  7E 84 04 A6 */	mfsr r20, 4
/* 8018D5AC 0018A5AC  7E A5 04 A6 */	mfsr r21, 5
/* 8018D5B0 0018A5B0  7E C6 04 A6 */	mfsr r22, 6
/* 8018D5B4 0018A5B4  7E E7 04 A6 */	mfsr r23, 7
/* 8018D5B8 0018A5B8  7F 08 04 A6 */	mfsr r24, 8
/* 8018D5BC 0018A5BC  7F 29 04 A6 */	mfsr r25, 9
/* 8018D5C0 0018A5C0  7F 4A 04 A6 */	mfsr r26, 0xa
/* 8018D5C4 0018A5C4  7F 6B 04 A6 */	mfsr r27, 0xb
/* 8018D5C8 0018A5C8  7F 8C 04 A6 */	mfsr r28, 0xc
/* 8018D5CC 0018A5CC  7F AD 04 A6 */	mfsr r29, 0xd
/* 8018D5D0 0018A5D0  7F CE 04 A6 */	mfsr r30, 0xe
/* 8018D5D4 0018A5D4  7F EF 04 A6 */	mfsr r31, 0xf
/* 8018D5D8 0018A5D8  BE 02 01 A8 */	stmw r16, 0x1a8(r2)
/* 8018D5DC 0018A5DC  7D 4C 42 E6 */	mftb r10, 0x10c
/* 8018D5E0 0018A5E0  7D 6D 42 E6 */	mftbu r11
/* 8018D5E4 0018A5E4  7D 90 FA A6 */	mfspr r12, 0x3f0
/* 8018D5E8 0018A5E8  7D B1 FA A6 */	mfspr r13, 0x3f1
/* 8018D5EC 0018A5EC  7D DB 02 A6 */	mfspr r14, 0x1b
/* 8018D5F0 0018A5F0  7D FF 42 A6 */	mfpvr r15
/* 8018D5F4 0018A5F4  7E 10 82 A6 */	mfibatu r16, 0
/* 8018D5F8 0018A5F8  7E 31 82 A6 */	mfibatl r17, 0
/* 8018D5FC 0018A5FC  7E 52 82 A6 */	mfibatu r18, 1
/* 8018D600 0018A600  7E 73 82 A6 */	mfibatl r19, 1
/* 8018D604 0018A604  7E 94 82 A6 */	mfibatu r20, 2
/* 8018D608 0018A608  7E B5 82 A6 */	mfibatl r21, 2
/* 8018D60C 0018A60C  7E D6 82 A6 */	mfibatu r22, 3
/* 8018D610 0018A610  7E F7 82 A6 */	mfibatl r23, 3
/* 8018D614 0018A614  7F 18 82 A6 */	mfdbatu r24, 0
/* 8018D618 0018A618  7F 39 82 A6 */	mfdbatl r25, 0
/* 8018D61C 0018A61C  7F 5A 82 A6 */	mfdbatu r26, 1
/* 8018D620 0018A620  7F 7B 82 A6 */	mfdbatl r27, 1
/* 8018D624 0018A624  7F 9C 82 A6 */	mfdbatu r28, 2
/* 8018D628 0018A628  7F BD 82 A6 */	mfdbatl r29, 2
/* 8018D62C 0018A62C  7F DE 82 A6 */	mfdbatu r30, 3
/* 8018D630 0018A630  7F FF 82 A6 */	mfdbatl r31, 3
/* 8018D634 0018A634  BD 42 01 E8 */	stmw r10, 0x1e8(r2)
/* 8018D638 0018A638  7E D9 02 A6 */	mfspr r22, 0x19
/* 8018D63C 0018A63C  7E F3 02 A6 */	mfdar r23
/* 8018D640 0018A640  7F 12 02 A6 */	mfdsisr r24
/* 8018D644 0018A644  7F 30 42 A6 */	mfspr r25, 0x110
/* 8018D648 0018A648  7F 51 42 A6 */	mfspr r26, 0x111
/* 8018D64C 0018A64C  7F 72 42 A6 */	mfspr r27, 0x112
/* 8018D650 0018A650  7F 93 42 A6 */	mfspr r28, 0x113
/* 8018D654 0018A654  3B A0 00 00 */	li r29, 0
/* 8018D658 0018A658  7F D2 FA A6 */	mfspr r30, 0x3f2
/* 8018D65C 0018A65C  7F FA 42 A6 */	mfspr r31, 0x11a
/* 8018D660 0018A660  BE C2 02 5C */	stmw r22, 0x25c(r2)
/* 8018D664 0018A664  7E 90 E2 A6 */	mfspr r20, 0x390
/* 8018D668 0018A668  7E B1 E2 A6 */	mfspr r21, 0x391
/* 8018D66C 0018A66C  7E D2 E2 A6 */	mfspr r22, 0x392
/* 8018D670 0018A670  7E F3 E2 A6 */	mfspr r23, 0x393
/* 8018D674 0018A674  7F 14 E2 A6 */	mfspr r24, 0x394
/* 8018D678 0018A678  7F 35 E2 A6 */	mfspr r25, 0x395
/* 8018D67C 0018A67C  7F 56 E2 A6 */	mfspr r26, 0x396
/* 8018D680 0018A680  7F 77 E2 A6 */	mfspr r27, 0x397
/* 8018D684 0018A684  7F 98 E2 A6 */	mfspr r28, 0x398
/* 8018D688 0018A688  7F B9 E2 A6 */	mfspr r29, 0x399
/* 8018D68C 0018A68C  7F DA E2 A6 */	mfspr r30, 0x39a
/* 8018D690 0018A690  7F FB E2 A6 */	mfspr r31, 0x39b
/* 8018D694 0018A694  BE 82 02 FC */	stmw r20, 0x2fc(r2)
/* 8018D698 0018A698  48 00 00 48 */	b lbl_8018D6E0
/* 8018D69C 0018A69C  7E 00 EA A6 */	mfspr r16, 0x3a0
/* 8018D6A0 0018A6A0  7E 27 EA A6 */	mfspr r17, 0x3a7
/* 8018D6A4 0018A6A4  7E 48 EA A6 */	mfspr r18, 0x3a8
/* 8018D6A8 0018A6A8  7E 69 EA A6 */	mfspr r19, 0x3a9
/* 8018D6AC 0018A6AC  7E 8A EA A6 */	mfspr r20, 0x3aa
/* 8018D6B0 0018A6B0  7E AB EA A6 */	mfspr r21, 0x3ab
/* 8018D6B4 0018A6B4  7E CC EA A6 */	mfspr r22, 0x3ac
/* 8018D6B8 0018A6B8  7E ED EA A6 */	mfspr r23, 0x3ad
/* 8018D6BC 0018A6BC  7F 0E EA A6 */	mfspr r24, 0x3ae
/* 8018D6C0 0018A6C0  7F 2F EA A6 */	mfspr r25, 0x3af
/* 8018D6C4 0018A6C4  7F 50 EA A6 */	mfspr r26, 0x3b0
/* 8018D6C8 0018A6C8  7F 77 EA A6 */	mfspr r27, 0x3b7
/* 8018D6CC 0018A6CC  7F 9F EA A6 */	mfspr r28, 0x3bf
/* 8018D6D0 0018A6D0  7F B6 FA A6 */	mfspr r29, 0x3f6
/* 8018D6D4 0018A6D4  7F D7 FA A6 */	mfspr r30, 0x3f7
/* 8018D6D8 0018A6D8  7F FF FA A6 */	mfspr r31, 0x3ff
/* 8018D6DC 0018A6DC  BE 02 02 B8 */	stmw r16, 0x2b8(r2)
lbl_8018D6E0:
/* 8018D6E0 0018A6E0  7E 75 FA A6 */	mfspr r19, 0x3f5
/* 8018D6E4 0018A6E4  7E 99 EA A6 */	mfspr r20, 0x3b9
/* 8018D6E8 0018A6E8  7E BA EA A6 */	mfspr r21, 0x3ba
/* 8018D6EC 0018A6EC  7E DD EA A6 */	mfspr r22, 0x3bd
/* 8018D6F0 0018A6F0  7E FE EA A6 */	mfspr r23, 0x3be
/* 8018D6F4 0018A6F4  7F 1B EA A6 */	mfspr r24, 0x3bb
/* 8018D6F8 0018A6F8  7F 38 EA A6 */	mfspr r25, 0x3b8
/* 8018D6FC 0018A6FC  7F 5C EA A6 */	mfspr r26, 0x3bc
/* 8018D700 0018A700  7F 7C FA A6 */	mfspr r27, 0x3fc
/* 8018D704 0018A704  7F 9D FA A6 */	mfspr r28, 0x3fd
/* 8018D708 0018A708  7F BE FA A6 */	mfspr r29, 0x3fe
/* 8018D70C 0018A70C  7F DB FA A6 */	.byte 0x7F, 0xDB, 0xFA, 0xA6  /* unknown instruction */
/* 8018D710 0018A710  7F F9 FA A6 */	mfspr r31, 0x3f9
/* 8018D714 0018A714  BE 62 02 84 */	stmw r19, 0x284(r2)
/* 8018D718 0018A718  4E 80 00 20 */	blr 
/* 8018D71C 0018A71C  7F 30 F2 A6 */	mfspr r25, 0x3d0
/* 8018D720 0018A720  7F 51 F2 A6 */	mfspr r26, 0x3d1
/* 8018D724 0018A724  7F 72 F2 A6 */	mfspr r27, 0x3d2
/* 8018D728 0018A728  7F 93 F2 A6 */	mfspr r28, 0x3d3
/* 8018D72C 0018A72C  7F B4 F2 A6 */	.byte 0x7F, 0xB4, 0xF2, 0xA6  /* unknown instruction */
/* 8018D730 0018A730  7F D5 F2 A6 */	.byte 0x7F, 0xD5, 0xF2, 0xA6  /* unknown instruction */
/* 8018D734 0018A734  7F F6 F2 A6 */	mfspr r31, 0x3d6
/* 8018D738 0018A738  BF 22 02 40 */	stmw r25, 0x240(r2)
/* 8018D73C 0018A73C  7F F6 02 A6 */	mfspr r31, 0x16
/* 8018D740 0018A740  93 E2 02 78 */	stw r31, 0x278(r2)
/* 8018D744 0018A744  4E 80 00 20 */	blr 

.global func_8018D748
func_8018D748:
/* 8018D748 0018A748  3C 40 80 24 */	lis r2, lbl_80247860@h
/* 8018D74C 0018A74C  60 42 78 60 */	ori r2, r2, lbl_80247860@l
/* 8018D750 0018A750  3C A0 80 21 */	lis r5, lbl_80217B80@h
/* 8018D754 0018A754  60 A5 7B 80 */	ori r5, r5, lbl_80217B80@l
/* 8018D758 0018A758  88 65 00 00 */	lbz r3, 0(r5)
/* 8018D75C 0018A75C  88 C5 00 01 */	lbz r6, 1(r5)
/* 8018D760 0018A760  38 00 00 00 */	li r0, 0
/* 8018D764 0018A764  98 05 00 00 */	stb r0, 0(r5)
/* 8018D768 0018A768  98 05 00 01 */	stb r0, 1(r5)
/* 8018D76C 0018A76C  2C 03 00 00 */	cmpwi r3, 0
/* 8018D770 0018A770  41 82 00 14 */	beq lbl_8018D784
/* 8018D774 0018A774  83 02 01 E8 */	lwz r24, 0x1e8(r2)
/* 8018D778 0018A778  83 22 01 EC */	lwz r25, 0x1ec(r2)
/* 8018D77C 0018A77C  7F 1C 43 A6 */	mttbl r24
/* 8018D780 0018A780  7F 3D 43 A6 */	mttbu r25
lbl_8018D784:
/* 8018D784 0018A784  BA 82 02 FC */	lmw r20, 0x2fc(r2)
/* 8018D788 0018A788  7E 90 E3 A6 */	mtspr 0x390, r20
/* 8018D78C 0018A78C  7E B1 E3 A6 */	mtspr 0x391, r21
/* 8018D790 0018A790  7E D2 E3 A6 */	mtspr 0x392, r22
/* 8018D794 0018A794  7E F3 E3 A6 */	mtspr 0x393, r23
/* 8018D798 0018A798  7F 14 E3 A6 */	mtspr 0x394, r24
/* 8018D79C 0018A79C  7F 35 E3 A6 */	mtspr 0x395, r25
/* 8018D7A0 0018A7A0  7F 56 E3 A6 */	mtspr 0x396, r26
/* 8018D7A4 0018A7A4  7F 77 E3 A6 */	mtspr 0x397, r27
/* 8018D7A8 0018A7A8  7F 98 E3 A6 */	mtspr 0x398, r28
/* 8018D7AC 0018A7AC  7F DA E3 A6 */	mtspr 0x39a, r30
/* 8018D7B0 0018A7B0  7F FB E3 A6 */	mtspr 0x39b, r31
/* 8018D7B4 0018A7B4  48 00 00 1C */	b lbl_8018D7D0
/* 8018D7B8 0018A7B8  BB 42 02 E0 */	lmw r26, 0x2e0(r2)
/* 8018D7BC 0018A7BC  7F 50 EB A6 */	mtspr 0x3b0, r26
/* 8018D7C0 0018A7C0  7F 77 EB A6 */	mtspr 0x3b7, r27
/* 8018D7C4 0018A7C4  7F B6 FB A6 */	mtspr 0x3f6, r29
/* 8018D7C8 0018A7C8  7F D7 FB A6 */	mtspr 0x3f7, r30
/* 8018D7CC 0018A7CC  7F FF FB A6 */	mtspr 0x3ff, r31
lbl_8018D7D0:
/* 8018D7D0 0018A7D0  BA 62 02 84 */	lmw r19, 0x284(r2)
/* 8018D7D4 0018A7D4  7E 75 FB A6 */	mtspr 0x3f5, r19
/* 8018D7D8 0018A7D8  7E 99 EB A6 */	mtspr 0x3b9, r20
/* 8018D7DC 0018A7DC  7E BA EB A6 */	mtspr 0x3ba, r21
/* 8018D7E0 0018A7E0  7E DD EB A6 */	mtspr 0x3bd, r22
/* 8018D7E4 0018A7E4  7E FE EB A6 */	mtspr 0x3be, r23
/* 8018D7E8 0018A7E8  7F 1B EB A6 */	mtspr 0x3bb, r24
/* 8018D7EC 0018A7EC  7F 38 EB A6 */	mtspr 0x3b8, r25
/* 8018D7F0 0018A7F0  7F 5C EB A6 */	mtspr 0x3bc, r26
/* 8018D7F4 0018A7F4  7F 7C FB A6 */	mtspr 0x3fc, r27
/* 8018D7F8 0018A7F8  7F 9D FB A6 */	mtspr 0x3fd, r28
/* 8018D7FC 0018A7FC  7F BE FB A6 */	mtspr 0x3fe, r29
/* 8018D800 0018A800  7F DB FB A6 */	.byte 0x7F, 0xDB, 0xFB, 0xA6  /* unknown instruction */
/* 8018D804 0018A804  7F F9 FB A6 */	mtspr 0x3f9, r31
/* 8018D808 0018A808  48 00 00 34 */	b lbl_8018D83C
/* 8018D80C 0018A80C  2C 06 00 00 */	cmpwi r6, 0
/* 8018D810 0018A810  41 82 00 0C */	beq lbl_8018D81C
/* 8018D814 0018A814  83 42 02 78 */	lwz r26, 0x278(r2)
/* 8018D818 0018A818  7F 56 03 A6 */	mtspr 0x16, r26
lbl_8018D81C:
/* 8018D81C 0018A81C  BB 22 02 40 */	lmw r25, 0x240(r2)
/* 8018D820 0018A820  7F 30 F3 A6 */	mtspr 0x3d0, r25
/* 8018D824 0018A824  7F 51 F3 A6 */	mtspr 0x3d1, r26
/* 8018D828 0018A828  7F 72 F3 A6 */	mtspr 0x3d2, r27
/* 8018D82C 0018A82C  7F 93 F3 A6 */	mtspr 0x3d3, r28
/* 8018D830 0018A830  7F B4 F3 A6 */	.byte 0x7F, 0xB4, 0xF3, 0xA6  /* unknown instruction */
/* 8018D834 0018A834  7F D5 F3 A6 */	.byte 0x7F, 0xD5, 0xF3, 0xA6  /* unknown instruction */
/* 8018D838 0018A838  7F F6 F3 A6 */	mtspr 0x3d6, r31
lbl_8018D83C:
/* 8018D83C 0018A83C  BA 02 01 A8 */	lmw r16, 0x1a8(r2)
/* 8018D840 0018A840  7E 00 01 A4 */	mtsr 0, r16
/* 8018D844 0018A844  7E 21 01 A4 */	mtsr 1, r17
/* 8018D848 0018A848  7E 42 01 A4 */	mtsr 2, r18
/* 8018D84C 0018A84C  7E 63 01 A4 */	mtsr 3, r19
/* 8018D850 0018A850  7E 84 01 A4 */	mtsr 4, r20
/* 8018D854 0018A854  7E A5 01 A4 */	mtsr 5, r21
/* 8018D858 0018A858  7E C6 01 A4 */	mtsr 6, r22
/* 8018D85C 0018A85C  7E E7 01 A4 */	mtsr 7, r23
/* 8018D860 0018A860  7F 08 01 A4 */	mtsr 8, r24
/* 8018D864 0018A864  7F 29 01 A4 */	mtsr 9, r25
/* 8018D868 0018A868  7F 4A 01 A4 */	mtsr 0xa, r26
/* 8018D86C 0018A86C  7F 6B 01 A4 */	mtsr 0xb, r27
/* 8018D870 0018A870  7F 8C 01 A4 */	mtsr 0xc, r28
/* 8018D874 0018A874  7F AD 01 A4 */	mtsr 0xd, r29
/* 8018D878 0018A878  7F CE 01 A4 */	mtsr 0xe, r30
/* 8018D87C 0018A87C  7F EF 01 A4 */	mtsr 0xf, r31
/* 8018D880 0018A880  B9 82 01 F0 */	lmw r12, 0x1f0(r2)
/* 8018D884 0018A884  7D 90 FB A6 */	mtspr 0x3f0, r12
/* 8018D888 0018A888  7D B1 FB A6 */	mtspr 0x3f1, r13
/* 8018D88C 0018A88C  7D DB 03 A6 */	mtspr 0x1b, r14
/* 8018D890 0018A890  7D FF 43 A6 */	mtspr 0x11f, r15
/* 8018D894 0018A894  7E 10 83 A6 */	mtibatu 0, r16
/* 8018D898 0018A898  7E 31 83 A6 */	mtibatl 0, r17
/* 8018D89C 0018A89C  7E 52 83 A6 */	mtibatu 1, r18
/* 8018D8A0 0018A8A0  7E 73 83 A6 */	mtibatl 1, r19
/* 8018D8A4 0018A8A4  7E 94 83 A6 */	mtibatu 2, r20
/* 8018D8A8 0018A8A8  7E B5 83 A6 */	mtibatl 2, r21
/* 8018D8AC 0018A8AC  7E D6 83 A6 */	mtibatu 3, r22
/* 8018D8B0 0018A8B0  7E F7 83 A6 */	mtibatl 3, r23
/* 8018D8B4 0018A8B4  7F 18 83 A6 */	mtdbatu 0, r24
/* 8018D8B8 0018A8B8  7F 39 83 A6 */	mtdbatl 0, r25
/* 8018D8BC 0018A8BC  7F 5A 83 A6 */	mtdbatu 1, r26
/* 8018D8C0 0018A8C0  7F 7B 83 A6 */	mtdbatl 1, r27
/* 8018D8C4 0018A8C4  7F 9C 83 A6 */	mtdbatu 2, r28
/* 8018D8C8 0018A8C8  7F BD 83 A6 */	mtdbatl 2, r29
/* 8018D8CC 0018A8CC  7F DE 83 A6 */	mtdbatu 3, r30
/* 8018D8D0 0018A8D0  7F FF 83 A6 */	mtdbatl 3, r31
/* 8018D8D4 0018A8D4  BA C2 02 5C */	lmw r22, 0x25c(r2)
/* 8018D8D8 0018A8D8  7E D9 03 A6 */	mtspr 0x19, r22
/* 8018D8DC 0018A8DC  7E F3 03 A6 */	mtdar r23
/* 8018D8E0 0018A8E0  7F 12 03 A6 */	mtdsisr r24
/* 8018D8E4 0018A8E4  7F 30 43 A6 */	mtspr 0x110, r25
/* 8018D8E8 0018A8E8  7F 51 43 A6 */	mtspr 0x111, r26
/* 8018D8EC 0018A8EC  7F 72 43 A6 */	mtspr 0x112, r27
/* 8018D8F0 0018A8F0  7F 93 43 A6 */	mtspr 0x113, r28
/* 8018D8F4 0018A8F4  7F D2 FB A6 */	mtspr 0x3f2, r30
/* 8018D8F8 0018A8F8  7F FA 43 A6 */	mtspr 0x11a, r31
/* 8018D8FC 0018A8FC  4E 80 00 20 */	blr 

.global func_8018D900
func_8018D900:
/* 8018D900 0018A900  38 60 00 54 */	li r3, 0x54
/* 8018D904 0018A904  4E 80 00 20 */	blr 
