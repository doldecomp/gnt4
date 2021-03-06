.include "macros.inc"

.section .text  # 0x801908B0 - 0x80190B90

.global __copy_longs_rev_unaligned
__copy_longs_rev_unaligned:
/* 801908B0 0018D8B0  7D 63 2A 14 */	add r11, r3, r5
/* 801908B4 0018D8B4  7D 44 2A 14 */	add r10, r4, r5
/* 801908B8 0018D8B8  55 63 07 BF */	clrlwi. r3, r11, 0x1e
/* 801908BC 0018D8BC  41 82 00 18 */	beq lbl_801908D4
/* 801908C0 0018D8C0  7C A3 28 50 */	subf r5, r3, r5
lbl_801908C4:
/* 801908C4 0018D8C4  8C 0A FF FF */	lbzu r0, -1(r10)
/* 801908C8 0018D8C8  34 63 FF FF */	addic. r3, r3, -1
/* 801908CC 0018D8CC  9C 0B FF FF */	stbu r0, -1(r11)
/* 801908D0 0018D8D0  40 82 FF F4 */	bne lbl_801908C4
lbl_801908D4:
/* 801908D4 0018D8D4  55 48 1E F8 */	rlwinm r8, r10, 3, 0x1b, 0x1c
/* 801908D8 0018D8D8  55 47 07 BE */	clrlwi r7, r10, 0x1e
/* 801908DC 0018D8DC  21 28 00 20 */	subfic r9, r8, 0x20
/* 801908E0 0018D8E0  54 A6 E8 FE */	srwi r6, r5, 3
/* 801908E4 0018D8E4  20 07 00 04 */	subfic r0, r7, 4
/* 801908E8 0018D8E8  7D 4A 02 14 */	add r10, r10, r0
/* 801908EC 0018D8EC  84 8A FF FC */	lwzu r4, -4(r10)
lbl_801908F0:
/* 801908F0 0018D8F0  80 0A FF FC */	lwz r0, -4(r10)
/* 801908F4 0018D8F4  7C 83 4C 30 */	srw r3, r4, r9
/* 801908F8 0018D8F8  34 C6 FF FF */	addic. r6, r6, -1
/* 801908FC 0018D8FC  7C 04 40 30 */	slw r4, r0, r8
/* 80190900 0018D900  7C 00 4C 30 */	srw r0, r0, r9
/* 80190904 0018D904  7C 83 1B 78 */	or r3, r4, r3
/* 80190908 0018D908  90 6B FF FC */	stw r3, -4(r11)
/* 8019090C 0018D90C  84 8A FF F8 */	lwzu r4, -8(r10)
/* 80190910 0018D910  7C 83 40 30 */	slw r3, r4, r8
/* 80190914 0018D914  7C 60 03 78 */	or r0, r3, r0
/* 80190918 0018D918  94 0B FF F8 */	stwu r0, -8(r11)
/* 8019091C 0018D91C  40 82 FF D4 */	bne lbl_801908F0
/* 80190920 0018D920  54 A0 07 7B */	rlwinm. r0, r5, 0, 0x1d, 0x1d
/* 80190924 0018D924  41 82 00 18 */	beq lbl_8019093C
/* 80190928 0018D928  84 6A FF FC */	lwzu r3, -4(r10)
/* 8019092C 0018D92C  7C 80 4C 30 */	srw r0, r4, r9
/* 80190930 0018D930  7C 63 40 30 */	slw r3, r3, r8
/* 80190934 0018D934  7C 60 03 78 */	or r0, r3, r0
/* 80190938 0018D938  94 0B FF FC */	stwu r0, -4(r11)
lbl_8019093C:
/* 8019093C 0018D93C  38 00 00 03 */	li r0, 3
/* 80190940 0018D940  7C A5 00 39 */	and. r5, r5, r0
/* 80190944 0018D944  4D 82 00 20 */	beqlr 
/* 80190948 0018D948  7D 4A 3A 14 */	add r10, r10, r7
lbl_8019094C:
/* 8019094C 0018D94C  8C 0A FF FF */	lbzu r0, -1(r10)
/* 80190950 0018D950  34 A5 FF FF */	addic. r5, r5, -1
/* 80190954 0018D954  9C 0B FF FF */	stbu r0, -1(r11)
/* 80190958 0018D958  40 82 FF F4 */	bne lbl_8019094C
/* 8019095C 0018D95C  4E 80 00 20 */	blr 

.global __copy_longs_unaligned
__copy_longs_unaligned:
/* 80190960 0018D960  7C 03 00 D0 */	neg r0, r3
/* 80190964 0018D964  39 04 FF FF */	addi r8, r4, -1
/* 80190968 0018D968  54 06 07 BF */	clrlwi. r6, r0, 0x1e
/* 8019096C 0018D96C  38 63 FF FF */	addi r3, r3, -1
/* 80190970 0018D970  41 82 00 18 */	beq lbl_80190988
/* 80190974 0018D974  7C A6 28 50 */	subf r5, r6, r5
lbl_80190978:
/* 80190978 0018D978  8C 08 00 01 */	lbzu r0, 1(r8)
/* 8019097C 0018D97C  34 C6 FF FF */	addic. r6, r6, -1
/* 80190980 0018D980  9C 03 00 01 */	stbu r0, 1(r3)
/* 80190984 0018D984  40 82 FF F4 */	bne lbl_80190978
lbl_80190988:
/* 80190988 0018D988  38 08 00 01 */	addi r0, r8, 1
/* 8019098C 0018D98C  38 C3 FF FD */	addi r6, r3, -3
/* 80190990 0018D990  54 09 07 BE */	clrlwi r9, r0, 0x1e
/* 80190994 0018D994  54 A7 E8 FE */	srwi r7, r5, 3
/* 80190998 0018D998  7D 09 40 50 */	subf r8, r9, r8
/* 8019099C 0018D99C  54 0A 1E F8 */	rlwinm r10, r0, 3, 0x1b, 0x1c
/* 801909A0 0018D9A0  84 88 00 01 */	lwzu r4, 1(r8)
/* 801909A4 0018D9A4  21 6A 00 20 */	subfic r11, r10, 0x20
lbl_801909A8:
/* 801909A8 0018D9A8  80 68 00 04 */	lwz r3, 4(r8)
/* 801909AC 0018D9AC  7C 84 50 30 */	slw r4, r4, r10
/* 801909B0 0018D9B0  34 E7 FF FF */	addic. r7, r7, -1
/* 801909B4 0018D9B4  7C 60 5C 30 */	srw r0, r3, r11
/* 801909B8 0018D9B8  7C 63 50 30 */	slw r3, r3, r10
/* 801909BC 0018D9BC  7C 80 03 78 */	or r0, r4, r0
/* 801909C0 0018D9C0  90 06 00 04 */	stw r0, 4(r6)
/* 801909C4 0018D9C4  84 88 00 08 */	lwzu r4, 8(r8)
/* 801909C8 0018D9C8  7C 80 5C 30 */	srw r0, r4, r11
/* 801909CC 0018D9CC  7C 60 03 78 */	or r0, r3, r0
/* 801909D0 0018D9D0  94 06 00 08 */	stwu r0, 8(r6)
/* 801909D4 0018D9D4  40 82 FF D4 */	bne lbl_801909A8
/* 801909D8 0018D9D8  54 A0 07 7B */	rlwinm. r0, r5, 0, 0x1d, 0x1d
/* 801909DC 0018D9DC  41 82 00 18 */	beq lbl_801909F4
/* 801909E0 0018D9E0  84 08 00 04 */	lwzu r0, 4(r8)
/* 801909E4 0018D9E4  7C 83 50 30 */	slw r3, r4, r10
/* 801909E8 0018D9E8  7C 00 5C 30 */	srw r0, r0, r11
/* 801909EC 0018D9EC  7C 60 03 78 */	or r0, r3, r0
/* 801909F0 0018D9F0  94 06 00 04 */	stwu r0, 4(r6)
lbl_801909F4:
/* 801909F4 0018D9F4  38 00 00 03 */	li r0, 3
/* 801909F8 0018D9F8  38 88 00 03 */	addi r4, r8, 3
/* 801909FC 0018D9FC  7C A5 00 39 */	and. r5, r5, r0
/* 80190A00 0018DA00  38 66 00 03 */	addi r3, r6, 3
/* 80190A04 0018DA04  4D 82 00 20 */	beqlr 
/* 80190A08 0018DA08  20 09 00 04 */	subfic r0, r9, 4
/* 80190A0C 0018DA0C  7C 80 20 50 */	subf r4, r0, r4
lbl_80190A10:
/* 80190A10 0018DA10  8C 04 00 01 */	lbzu r0, 1(r4)
/* 80190A14 0018DA14  34 A5 FF FF */	addic. r5, r5, -1
/* 80190A18 0018DA18  9C 03 00 01 */	stbu r0, 1(r3)
/* 80190A1C 0018DA1C  40 82 FF F4 */	bne lbl_80190A10
/* 80190A20 0018DA20  4E 80 00 20 */	blr 

.global __copy_longs_rev_aligned
__copy_longs_rev_aligned:
/* 80190A24 0018DA24  7C C3 2A 14 */	add r6, r3, r5
/* 80190A28 0018DA28  7C 84 2A 14 */	add r4, r4, r5
/* 80190A2C 0018DA2C  54 C3 07 BF */	clrlwi. r3, r6, 0x1e
/* 80190A30 0018DA30  41 82 00 18 */	beq lbl_80190A48
/* 80190A34 0018DA34  7C A3 28 50 */	subf r5, r3, r5
lbl_80190A38:
/* 80190A38 0018DA38  8C 04 FF FF */	lbzu r0, -1(r4)
/* 80190A3C 0018DA3C  34 63 FF FF */	addic. r3, r3, -1
/* 80190A40 0018DA40  9C 06 FF FF */	stbu r0, -1(r6)
/* 80190A44 0018DA44  40 82 FF F4 */	bne lbl_80190A38
lbl_80190A48:
/* 80190A48 0018DA48  54 A3 D9 7F */	rlwinm. r3, r5, 0x1b, 5, 0x1f
/* 80190A4C 0018DA4C  41 82 00 4C */	beq lbl_80190A98
lbl_80190A50:
/* 80190A50 0018DA50  80 04 FF FC */	lwz r0, -4(r4)
/* 80190A54 0018DA54  34 63 FF FF */	addic. r3, r3, -1
/* 80190A58 0018DA58  90 06 FF FC */	stw r0, -4(r6)
/* 80190A5C 0018DA5C  80 04 FF F8 */	lwz r0, -8(r4)
/* 80190A60 0018DA60  90 06 FF F8 */	stw r0, -8(r6)
/* 80190A64 0018DA64  80 04 FF F4 */	lwz r0, -0xc(r4)
/* 80190A68 0018DA68  90 06 FF F4 */	stw r0, -0xc(r6)
/* 80190A6C 0018DA6C  80 04 FF F0 */	lwz r0, -0x10(r4)
/* 80190A70 0018DA70  90 06 FF F0 */	stw r0, -0x10(r6)
/* 80190A74 0018DA74  80 04 FF EC */	lwz r0, -0x14(r4)
/* 80190A78 0018DA78  90 06 FF EC */	stw r0, -0x14(r6)
/* 80190A7C 0018DA7C  80 04 FF E8 */	lwz r0, -0x18(r4)
/* 80190A80 0018DA80  90 06 FF E8 */	stw r0, -0x18(r6)
/* 80190A84 0018DA84  80 04 FF E4 */	lwz r0, -0x1c(r4)
/* 80190A88 0018DA88  90 06 FF E4 */	stw r0, -0x1c(r6)
/* 80190A8C 0018DA8C  84 04 FF E0 */	lwzu r0, -0x20(r4)
/* 80190A90 0018DA90  94 06 FF E0 */	stwu r0, -0x20(r6)
/* 80190A94 0018DA94  40 82 FF BC */	bne lbl_80190A50
lbl_80190A98:
/* 80190A98 0018DA98  54 A3 F7 7F */	rlwinm. r3, r5, 0x1e, 0x1d, 0x1f
/* 80190A9C 0018DA9C  41 82 00 14 */	beq lbl_80190AB0
lbl_80190AA0:
/* 80190AA0 0018DAA0  84 04 FF FC */	lwzu r0, -4(r4)
/* 80190AA4 0018DAA4  34 63 FF FF */	addic. r3, r3, -1
/* 80190AA8 0018DAA8  94 06 FF FC */	stwu r0, -4(r6)
/* 80190AAC 0018DAAC  40 82 FF F4 */	bne lbl_80190AA0
lbl_80190AB0:
/* 80190AB0 0018DAB0  38 00 00 03 */	li r0, 3
/* 80190AB4 0018DAB4  7C A5 00 39 */	and. r5, r5, r0
/* 80190AB8 0018DAB8  4D 82 00 20 */	beqlr 
lbl_80190ABC:
/* 80190ABC 0018DABC  8C 04 FF FF */	lbzu r0, -1(r4)
/* 80190AC0 0018DAC0  34 A5 FF FF */	addic. r5, r5, -1
/* 80190AC4 0018DAC4  9C 06 FF FF */	stbu r0, -1(r6)
/* 80190AC8 0018DAC8  40 82 FF F4 */	bne lbl_80190ABC
/* 80190ACC 0018DACC  4E 80 00 20 */	blr 

.global __copy_longs_aligned
__copy_longs_aligned:
/* 80190AD0 0018DAD0  7C 03 00 D0 */	neg r0, r3
/* 80190AD4 0018DAD4  38 E4 FF FF */	addi r7, r4, -1
/* 80190AD8 0018DAD8  54 06 07 BF */	clrlwi. r6, r0, 0x1e
/* 80190ADC 0018DADC  38 63 FF FF */	addi r3, r3, -1
/* 80190AE0 0018DAE0  41 82 00 18 */	beq lbl_80190AF8
/* 80190AE4 0018DAE4  7C A6 28 50 */	subf r5, r6, r5
lbl_80190AE8:
/* 80190AE8 0018DAE8  8C 07 00 01 */	lbzu r0, 1(r7)
/* 80190AEC 0018DAEC  34 C6 FF FF */	addic. r6, r6, -1
/* 80190AF0 0018DAF0  9C 03 00 01 */	stbu r0, 1(r3)
/* 80190AF4 0018DAF4  40 82 FF F4 */	bne lbl_80190AE8
lbl_80190AF8:
/* 80190AF8 0018DAF8  54 A4 D9 7F */	rlwinm. r4, r5, 0x1b, 5, 0x1f
/* 80190AFC 0018DAFC  38 C7 FF FD */	addi r6, r7, -3
/* 80190B00 0018DB00  38 63 FF FD */	addi r3, r3, -3
/* 80190B04 0018DB04  41 82 00 4C */	beq lbl_80190B50
lbl_80190B08:
/* 80190B08 0018DB08  80 06 00 04 */	lwz r0, 4(r6)
/* 80190B0C 0018DB0C  34 84 FF FF */	addic. r4, r4, -1
/* 80190B10 0018DB10  90 03 00 04 */	stw r0, 4(r3)
/* 80190B14 0018DB14  80 06 00 08 */	lwz r0, 8(r6)
/* 80190B18 0018DB18  90 03 00 08 */	stw r0, 8(r3)
/* 80190B1C 0018DB1C  80 06 00 0C */	lwz r0, 0xc(r6)
/* 80190B20 0018DB20  90 03 00 0C */	stw r0, 0xc(r3)
/* 80190B24 0018DB24  80 06 00 10 */	lwz r0, 0x10(r6)
/* 80190B28 0018DB28  90 03 00 10 */	stw r0, 0x10(r3)
/* 80190B2C 0018DB2C  80 06 00 14 */	lwz r0, 0x14(r6)
/* 80190B30 0018DB30  90 03 00 14 */	stw r0, 0x14(r3)
/* 80190B34 0018DB34  80 06 00 18 */	lwz r0, 0x18(r6)
/* 80190B38 0018DB38  90 03 00 18 */	stw r0, 0x18(r3)
/* 80190B3C 0018DB3C  80 06 00 1C */	lwz r0, 0x1c(r6)
/* 80190B40 0018DB40  90 03 00 1C */	stw r0, 0x1c(r3)
/* 80190B44 0018DB44  84 06 00 20 */	lwzu r0, 0x20(r6)
/* 80190B48 0018DB48  94 03 00 20 */	stwu r0, 0x20(r3)
/* 80190B4C 0018DB4C  40 82 FF BC */	bne lbl_80190B08
lbl_80190B50:
/* 80190B50 0018DB50  54 A4 F7 7F */	rlwinm. r4, r5, 0x1e, 0x1d, 0x1f
/* 80190B54 0018DB54  41 82 00 14 */	beq lbl_80190B68
lbl_80190B58:
/* 80190B58 0018DB58  84 06 00 04 */	lwzu r0, 4(r6)
/* 80190B5C 0018DB5C  34 84 FF FF */	addic. r4, r4, -1
/* 80190B60 0018DB60  94 03 00 04 */	stwu r0, 4(r3)
/* 80190B64 0018DB64  40 82 FF F4 */	bne lbl_80190B58
lbl_80190B68:
/* 80190B68 0018DB68  38 00 00 03 */	li r0, 3
/* 80190B6C 0018DB6C  38 86 00 03 */	addi r4, r6, 3
/* 80190B70 0018DB70  7C A5 00 39 */	and. r5, r5, r0
/* 80190B74 0018DB74  38 63 00 03 */	addi r3, r3, 3
/* 80190B78 0018DB78  4D 82 00 20 */	beqlr 
lbl_80190B7C:
/* 80190B7C 0018DB7C  8C 04 00 01 */	lbzu r0, 1(r4)
/* 80190B80 0018DB80  34 A5 FF FF */	addic. r5, r5, -1
/* 80190B84 0018DB84  9C 03 00 01 */	stbu r0, 1(r3)
/* 80190B88 0018DB88  40 82 FF F4 */	bne lbl_80190B7C
/* 80190B8C 0018DB8C  4E 80 00 20 */	blr 
