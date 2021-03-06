.include "macros.inc"

.section .text  # 0x8016A7B4 - 0x8016AC38

.global OSRegisterResetFunction
OSRegisterResetFunction:
/* 8016A7B4 001677B4  80 AD 8B A8 */	lwz r5, lbl_802774C8-_SDA_BASE_(r13)
/* 8016A7B8 001677B8  48 00 00 08 */	b lbl_8016A7C0
lbl_8016A7BC:
/* 8016A7BC 001677BC  80 A5 00 08 */	lwz r5, 8(r5)
lbl_8016A7C0:
/* 8016A7C0 001677C0  28 05 00 00 */	cmplwi r5, 0
/* 8016A7C4 001677C4  41 82 00 14 */	beq lbl_8016A7D8
/* 8016A7C8 001677C8  80 85 00 04 */	lwz r4, 4(r5)
/* 8016A7CC 001677CC  80 03 00 04 */	lwz r0, 4(r3)
/* 8016A7D0 001677D0  7C 04 00 40 */	cmplw r4, r0
/* 8016A7D4 001677D4  40 81 FF E8 */	ble lbl_8016A7BC
lbl_8016A7D8:
/* 8016A7D8 001677D8  28 05 00 00 */	cmplwi r5, 0
/* 8016A7DC 001677DC  40 82 00 34 */	bne lbl_8016A810
/* 8016A7E0 001677E0  38 AD 8B A8 */	addi r5, r13, lbl_802774C8-_SDA_BASE_
/* 8016A7E4 001677E4  84 85 00 04 */	lwzu r4, 4(r5)
/* 8016A7E8 001677E8  28 04 00 00 */	cmplwi r4, 0
/* 8016A7EC 001677EC  40 82 00 0C */	bne lbl_8016A7F8
/* 8016A7F0 001677F0  90 6D 8B A8 */	stw r3, lbl_802774C8-_SDA_BASE_(r13)
/* 8016A7F4 001677F4  48 00 00 08 */	b lbl_8016A7FC
lbl_8016A7F8:
/* 8016A7F8 001677F8  90 64 00 08 */	stw r3, 8(r4)
lbl_8016A7FC:
/* 8016A7FC 001677FC  90 83 00 0C */	stw r4, 0xc(r3)
/* 8016A800 00167800  38 00 00 00 */	li r0, 0
/* 8016A804 00167804  90 03 00 08 */	stw r0, 8(r3)
/* 8016A808 00167808  90 65 00 00 */	stw r3, 0(r5)
/* 8016A80C 0016780C  4E 80 00 20 */	blr 
lbl_8016A810:
/* 8016A810 00167810  90 A3 00 08 */	stw r5, 8(r3)
/* 8016A814 00167814  80 85 00 0C */	lwz r4, 0xc(r5)
/* 8016A818 00167818  90 65 00 0C */	stw r3, 0xc(r5)
/* 8016A81C 0016781C  28 04 00 00 */	cmplwi r4, 0
/* 8016A820 00167820  90 83 00 0C */	stw r4, 0xc(r3)
/* 8016A824 00167824  40 82 00 0C */	bne lbl_8016A830
/* 8016A828 00167828  90 6D 8B A8 */	stw r3, lbl_802774C8-_SDA_BASE_(r13)
/* 8016A82C 0016782C  4E 80 00 20 */	blr 
lbl_8016A830:
/* 8016A830 00167830  90 64 00 08 */	stw r3, 8(r4)
/* 8016A834 00167834  4E 80 00 20 */	blr 

.global __OSCallResetFunctions
__OSCallResetFunctions:
/* 8016A838 00167838  7C 08 02 A6 */	mflr r0
/* 8016A83C 0016783C  90 01 00 04 */	stw r0, 4(r1)
/* 8016A840 00167840  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8016A844 00167844  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8016A848 00167848  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8016A84C 0016784C  3B C0 00 00 */	li r30, 0
/* 8016A850 00167850  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8016A854 00167854  3B A3 00 00 */	addi r29, r3, 0
/* 8016A858 00167858  38 60 00 00 */	li r3, 0
/* 8016A85C 0016785C  83 ED 8B A8 */	lwz r31, lbl_802774C8-_SDA_BASE_(r13)
/* 8016A860 00167860  48 00 00 3C */	b lbl_8016A89C
lbl_8016A864:
/* 8016A864 00167864  2C 1E 00 00 */	cmpwi r30, 0
/* 8016A868 00167868  41 82 00 10 */	beq lbl_8016A878
/* 8016A86C 0016786C  80 1F 00 04 */	lwz r0, 4(r31)
/* 8016A870 00167870  7C 03 00 40 */	cmplw r3, r0
/* 8016A874 00167874  40 82 00 30 */	bne lbl_8016A8A4
lbl_8016A878:
/* 8016A878 00167878  81 9F 00 00 */	lwz r12, 0(r31)
/* 8016A87C 0016787C  38 7D 00 00 */	addi r3, r29, 0
/* 8016A880 00167880  7D 88 03 A6 */	mtlr r12
/* 8016A884 00167884  4E 80 00 21 */	blrl 
/* 8016A888 00167888  7C 60 00 34 */	cntlzw r0, r3
/* 8016A88C 0016788C  80 7F 00 04 */	lwz r3, 4(r31)
/* 8016A890 00167890  54 00 D9 7E */	srwi r0, r0, 5
/* 8016A894 00167894  83 FF 00 08 */	lwz r31, 8(r31)
/* 8016A898 00167898  7F DE 03 78 */	or r30, r30, r0
lbl_8016A89C:
/* 8016A89C 0016789C  28 1F 00 00 */	cmplwi r31, 0
/* 8016A8A0 001678A0  40 82 FF C4 */	bne lbl_8016A864
lbl_8016A8A4:
/* 8016A8A4 001678A4  48 00 0E 31 */	bl __OSSyncSram
/* 8016A8A8 001678A8  7C 60 00 34 */	cntlzw r0, r3
/* 8016A8AC 001678AC  54 00 D9 7E */	srwi r0, r0, 5
/* 8016A8B0 001678B0  7F DE 03 79 */	or. r30, r30, r0
/* 8016A8B4 001678B4  41 82 00 0C */	beq lbl_8016A8C0
/* 8016A8B8 001678B8  38 60 00 00 */	li r3, 0
/* 8016A8BC 001678BC  48 00 00 08 */	b lbl_8016A8C4
lbl_8016A8C0:
/* 8016A8C0 001678C0  38 60 00 01 */	li r3, 1
lbl_8016A8C4:
/* 8016A8C4 001678C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8016A8C8 001678C8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8016A8CC 001678CC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8016A8D0 001678D0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8016A8D4 001678D4  38 21 00 20 */	addi r1, r1, 0x20
/* 8016A8D8 001678D8  7C 08 03 A6 */	mtlr r0
/* 8016A8DC 001678DC  4E 80 00 20 */	blr 

.global Reset
Reset:
/* 8016A8E0 001678E0  48 00 00 20 */	b lbl_8016A900
lbl_8016A8E4:
/* 8016A8E4 001678E4  7D 10 FA A6 */	mfspr r8, 0x3f0
/* 8016A8E8 001678E8  61 08 00 08 */	ori r8, r8, 8
/* 8016A8EC 001678EC  7D 10 FB A6 */	mtspr 0x3f0, r8
/* 8016A8F0 001678F0  4C 00 01 2C */	isync 
/* 8016A8F4 001678F4  7C 00 04 AC */	sync 0
/* 8016A8F8 001678F8  60 00 00 00 */	nop 
/* 8016A8FC 001678FC  48 00 00 08 */	b lbl_8016A904
lbl_8016A900:
/* 8016A900 00167900  48 00 00 20 */	b lbl_8016A920
lbl_8016A904:
/* 8016A904 00167904  7C AC 42 E6 */	mftb r5, 0x10c
lbl_8016A908:
/* 8016A908 00167908  7C CC 42 E6 */	mftb r6, 0x10c
/* 8016A90C 0016790C  7C E5 30 50 */	subf r7, r5, r6
/* 8016A910 00167910  28 07 11 24 */	cmplwi r7, 0x1124
/* 8016A914 00167914  41 80 FF F4 */	blt lbl_8016A908
/* 8016A918 00167918  60 00 00 00 */	nop 
/* 8016A91C 0016791C  48 00 00 08 */	b lbl_8016A924
lbl_8016A920:
/* 8016A920 00167920  48 00 00 20 */	b lbl_8016A940
lbl_8016A924:
/* 8016A924 00167924  3D 00 CC 00 */	lis r8, 0xCC003000@h
/* 8016A928 00167928  61 08 30 00 */	ori r8, r8, 0xCC003000@l
/* 8016A92C 0016792C  38 80 00 03 */	li r4, 3
/* 8016A930 00167930  90 88 00 24 */	stw r4, 0x24(r8)
/* 8016A934 00167934  90 68 00 24 */	stw r3, 0x24(r8)
/* 8016A938 00167938  60 00 00 00 */	nop 
/* 8016A93C 0016793C  48 00 00 08 */	b lbl_8016A944
lbl_8016A940:
/* 8016A940 00167940  48 00 00 0C */	b lbl_8016A94C
lbl_8016A944:
/* 8016A944 00167944  60 00 00 00 */	nop 
/* 8016A948 00167948  4B FF FF FC */	b lbl_8016A944
lbl_8016A94C:
/* 8016A94C 0016794C  4B FF FF 98 */	b lbl_8016A8E4

.global KillThreads
KillThreads:
/* 8016A950 00167950  7C 08 02 A6 */	mflr r0
/* 8016A954 00167954  90 01 00 04 */	stw r0, 4(r1)
/* 8016A958 00167958  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8016A95C 0016795C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8016A960 00167960  3C 60 80 00 */	lis r3, 0x800000DC@ha
/* 8016A964 00167964  80 63 00 DC */	lwz r3, 0x800000DC@l(r3)
/* 8016A968 00167968  48 00 00 04 */	b lbl_8016A96C
lbl_8016A96C:
/* 8016A96C 0016796C  48 00 00 04 */	b lbl_8016A970
lbl_8016A970:
/* 8016A970 00167970  48 00 00 2C */	b lbl_8016A99C
lbl_8016A974:
/* 8016A974 00167974  A0 03 02 C8 */	lhz r0, 0x2c8(r3)
/* 8016A978 00167978  83 E3 02 FC */	lwz r31, 0x2fc(r3)
/* 8016A97C 0016797C  2C 00 00 04 */	cmpwi r0, 4
/* 8016A980 00167980  41 82 00 14 */	beq lbl_8016A994
/* 8016A984 00167984  40 80 00 14 */	bge lbl_8016A998
/* 8016A988 00167988  2C 00 00 01 */	cmpwi r0, 1
/* 8016A98C 0016798C  41 82 00 08 */	beq lbl_8016A994
/* 8016A990 00167990  48 00 00 08 */	b lbl_8016A998
lbl_8016A994:
/* 8016A994 00167994  48 00 1D 3D */	bl OSCancelThread
lbl_8016A998:
/* 8016A998 00167998  7F E3 FB 78 */	mr r3, r31
lbl_8016A99C:
/* 8016A99C 0016799C  28 03 00 00 */	cmplwi r3, 0
/* 8016A9A0 001679A0  40 82 FF D4 */	bne lbl_8016A974
/* 8016A9A4 001679A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8016A9A8 001679A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8016A9AC 001679AC  38 21 00 10 */	addi r1, r1, 0x10
/* 8016A9B0 001679B0  7C 08 03 A6 */	mtlr r0
/* 8016A9B4 001679B4  4E 80 00 20 */	blr 

.global __OSDoHotReset
__OSDoHotReset:
/* 8016A9B8 001679B8  7C 08 02 A6 */	mflr r0
/* 8016A9BC 001679BC  90 01 00 04 */	stw r0, 4(r1)
/* 8016A9C0 001679C0  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8016A9C4 001679C4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8016A9C8 001679C8  7C 7F 1B 78 */	mr r31, r3
/* 8016A9CC 001679CC  4B FF F1 8D */	bl OSDisableInterrupts
/* 8016A9D0 001679D0  3C 60 CC 00 */	lis r3, 0xCC002000@ha
/* 8016A9D4 001679D4  38 63 20 00 */	addi r3, r3, 0xCC002000@l
/* 8016A9D8 001679D8  38 00 00 00 */	li r0, 0
/* 8016A9DC 001679DC  B0 03 00 02 */	sth r0, 2(r3)
/* 8016A9E0 001679E0  4B FF C1 E5 */	bl ICFlashInvalidate
/* 8016A9E4 001679E4  57 E3 18 38 */	slwi r3, r31, 3
/* 8016A9E8 001679E8  4B FF FE F9 */	bl Reset
/* 8016A9EC 001679EC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8016A9F0 001679F0  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8016A9F4 001679F4  38 21 00 18 */	addi r1, r1, 0x18
/* 8016A9F8 001679F8  7C 08 03 A6 */	mtlr r0
/* 8016A9FC 001679FC  4E 80 00 20 */	blr 

.global OSResetSystem
OSResetSystem:
/* 8016AA00 00167A00  7C 08 02 A6 */	mflr r0
/* 8016AA04 00167A04  90 01 00 04 */	stw r0, 4(r1)
/* 8016AA08 00167A08  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8016AA0C 00167A0C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8016AA10 00167A10  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8016AA14 00167A14  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8016AA18 00167A18  93 81 00 20 */	stw r28, 0x20(r1)
/* 8016AA1C 00167A1C  7C 7C 1B 78 */	mr r28, r3
/* 8016AA20 00167A20  7C 9D 23 78 */	mr r29, r4
/* 8016AA24 00167A24  7C BE 2B 78 */	mr r30, r5
/* 8016AA28 00167A28  48 00 14 A1 */	bl OSDisableScheduler
/* 8016AA2C 00167A2C  2C 1C 00 01 */	cmpwi r28, 1
/* 8016AA30 00167A30  40 82 00 28 */	bne lbl_8016AA58
/* 8016AA34 00167A34  2C 1E 00 00 */	cmpwi r30, 0
/* 8016AA38 00167A38  41 82 00 20 */	beq lbl_8016AA58
/* 8016AA3C 00167A3C  48 00 08 5D */	bl __OSLockSram
/* 8016AA40 00167A40  88 03 00 13 */	lbz r0, 0x13(r3)
/* 8016AA44 00167A44  60 00 00 40 */	ori r0, r0, 0x40
/* 8016AA48 00167A48  98 03 00 13 */	stb r0, 0x13(r3)
/* 8016AA4C 00167A4C  38 60 00 01 */	li r3, 1
/* 8016AA50 00167A50  48 00 0C 3D */	bl __OSUnlockSram
/* 8016AA54 00167A54  3B A0 00 00 */	li r29, 0
lbl_8016AA58:
/* 8016AA58 00167A58  2C 1C 00 02 */	cmpwi r28, 2
/* 8016AA5C 00167A5C  41 82 00 24 */	beq lbl_8016AA80
/* 8016AA60 00167A60  2C 1C 00 00 */	cmpwi r28, 0
/* 8016AA64 00167A64  40 82 00 78 */	bne lbl_8016AADC
/* 8016AA68 00167A68  80 0D 8B B0 */	lwz r0, lbl_802774D0-_SDA_BASE_(r13)
/* 8016AA6C 00167A6C  28 00 00 00 */	cmplwi r0, 0
/* 8016AA70 00167A70  40 82 00 10 */	bne lbl_8016AA80
/* 8016AA74 00167A74  3C 1D 3F FF */	addis r0, r29, 0x3fff
/* 8016AA78 00167A78  28 00 00 00 */	cmplwi r0, 0
/* 8016AA7C 00167A7C  40 82 00 60 */	bne lbl_8016AADC
lbl_8016AA80:
/* 8016AA80 00167A80  4B FF BF 41 */	bl __OSStopAudioSystem
/* 8016AA84 00167A84  38 60 00 01 */	li r3, 1
/* 8016AA88 00167A88  48 00 BA E9 */	bl __PADDisableRecalibration
/* 8016AA8C 00167A8C  7C 7F 1B 78 */	mr r31, r3
/* 8016AA90 00167A90  48 00 00 04 */	b lbl_8016AA94
lbl_8016AA94:
/* 8016AA94 00167A94  48 00 00 04 */	b lbl_8016AA98
lbl_8016AA98:
/* 8016AA98 00167A98  38 60 00 00 */	li r3, 0
/* 8016AA9C 00167A9C  4B FF FD 9D */	bl __OSCallResetFunctions
/* 8016AAA0 00167AA0  2C 03 00 00 */	cmpwi r3, 0
/* 8016AAA4 00167AA4  41 82 FF F4 */	beq lbl_8016AA98
/* 8016AAA8 00167AA8  48 00 00 04 */	b lbl_8016AAAC
lbl_8016AAAC:
/* 8016AAAC 00167AAC  48 00 00 04 */	b lbl_8016AAB0
lbl_8016AAB0:
/* 8016AAB0 00167AB0  48 00 0C 25 */	bl __OSSyncSram
/* 8016AAB4 00167AB4  2C 03 00 00 */	cmpwi r3, 0
/* 8016AAB8 00167AB8  41 82 FF F8 */	beq lbl_8016AAB0
/* 8016AABC 00167ABC  4B FF F0 9D */	bl OSDisableInterrupts
/* 8016AAC0 00167AC0  38 60 00 01 */	li r3, 1
/* 8016AAC4 00167AC4  4B FF FD 75 */	bl __OSCallResetFunctions
/* 8016AAC8 00167AC8  4B FF C1 21 */	bl LCDisable
/* 8016AACC 00167ACC  7F E3 FB 78 */	mr r3, r31
/* 8016AAD0 00167AD0  48 00 BA A1 */	bl __PADDisableRecalibration
/* 8016AAD4 00167AD4  4B FF FE 7D */	bl KillThreads
/* 8016AAD8 00167AD8  48 00 00 48 */	b lbl_8016AB20
lbl_8016AADC:
/* 8016AADC 00167ADC  4B FF BE E5 */	bl __OSStopAudioSystem
/* 8016AAE0 00167AE0  48 00 00 04 */	b lbl_8016AAE4
lbl_8016AAE4:
/* 8016AAE4 00167AE4  48 00 00 04 */	b lbl_8016AAE8
lbl_8016AAE8:
/* 8016AAE8 00167AE8  38 60 00 00 */	li r3, 0
/* 8016AAEC 00167AEC  4B FF FD 4D */	bl __OSCallResetFunctions
/* 8016AAF0 00167AF0  2C 03 00 00 */	cmpwi r3, 0
/* 8016AAF4 00167AF4  41 82 FF F4 */	beq lbl_8016AAE8
/* 8016AAF8 00167AF8  48 00 00 04 */	b lbl_8016AAFC
lbl_8016AAFC:
/* 8016AAFC 00167AFC  48 00 00 04 */	b lbl_8016AB00
lbl_8016AB00:
/* 8016AB00 00167B00  48 00 0B D5 */	bl __OSSyncSram
/* 8016AB04 00167B04  2C 03 00 00 */	cmpwi r3, 0
/* 8016AB08 00167B08  41 82 FF F8 */	beq lbl_8016AB00
/* 8016AB0C 00167B0C  4B FF F0 4D */	bl OSDisableInterrupts
/* 8016AB10 00167B10  38 60 00 01 */	li r3, 1
/* 8016AB14 00167B14  4B FF FD 25 */	bl __OSCallResetFunctions
/* 8016AB18 00167B18  4B FF C0 D1 */	bl LCDisable
/* 8016AB1C 00167B1C  4B FF FE 35 */	bl KillThreads
lbl_8016AB20:
/* 8016AB20 00167B20  2C 1C 00 01 */	cmpwi r28, 1
/* 8016AB24 00167B24  40 82 00 28 */	bne lbl_8016AB4C
/* 8016AB28 00167B28  4B FF F0 31 */	bl OSDisableInterrupts
/* 8016AB2C 00167B2C  3C 60 CC 00 */	lis r3, 0xCC002000@ha
/* 8016AB30 00167B30  38 63 20 00 */	addi r3, r3, 0xCC002000@l
/* 8016AB34 00167B34  38 00 00 00 */	li r0, 0
/* 8016AB38 00167B38  B0 03 00 02 */	sth r0, 2(r3)
/* 8016AB3C 00167B3C  4B FF C0 89 */	bl ICFlashInvalidate
/* 8016AB40 00167B40  57 A3 18 38 */	slwi r3, r29, 3
/* 8016AB44 00167B44  4B FF FD 9D */	bl Reset
/* 8016AB48 00167B48  48 00 00 34 */	b lbl_8016AB7C
lbl_8016AB4C:
/* 8016AB4C 00167B4C  2C 1C 00 00 */	cmpwi r28, 0
/* 8016AB50 00167B50  40 82 00 2C */	bne lbl_8016AB7C
/* 8016AB54 00167B54  2C 1E 00 01 */	cmpwi r30, 1
/* 8016AB58 00167B58  40 82 00 14 */	bne lbl_8016AB6C
/* 8016AB5C 00167B5C  3C 60 80 21 */	lis r3, lbl_802160B0@ha
/* 8016AB60 00167B60  4C C6 31 82 */	crclr 6
/* 8016AB64 00167B64  38 63 60 B0 */	addi r3, r3, lbl_802160B0@l
/* 8016AB68 00167B68  4B FF CD 31 */	bl OSReport
lbl_8016AB6C:
/* 8016AB6C 00167B6C  48 00 13 9D */	bl OSEnableScheduler
/* 8016AB70 00167B70  7F A3 EB 78 */	mr r3, r29
/* 8016AB74 00167B74  80 8D 8B B0 */	lwz r4, lbl_802774D0-_SDA_BASE_(r13)
/* 8016AB78 00167B78  4B FF FB B9 */	bl __OSReboot
lbl_8016AB7C:
/* 8016AB7C 00167B7C  3F E0 80 00 */	lis r31, 0x80000040@ha
/* 8016AB80 00167B80  38 7F 00 40 */	addi r3, r31, 0x80000040@l
/* 8016AB84 00167B84  38 80 00 00 */	li r4, 0
/* 8016AB88 00167B88  38 A0 00 8C */	li r5, 0x8c
/* 8016AB8C 00167B8C  4B E9 A9 59 */	bl memset
/* 8016AB90 00167B90  38 7F 00 D4 */	addi r3, r31, 0xd4
/* 8016AB94 00167B94  38 80 00 00 */	li r4, 0
/* 8016AB98 00167B98  38 A0 00 14 */	li r5, 0x14
/* 8016AB9C 00167B9C  4B E9 A9 49 */	bl memset
/* 8016ABA0 00167BA0  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 8016ABA4 00167BA4  38 80 00 00 */	li r4, 0
/* 8016ABA8 00167BA8  38 A0 00 04 */	li r5, 4
/* 8016ABAC 00167BAC  4B E9 A9 39 */	bl memset
/* 8016ABB0 00167BB0  38 7F 30 00 */	addi r3, r31, 0x3000
/* 8016ABB4 00167BB4  38 80 00 00 */	li r4, 0
/* 8016ABB8 00167BB8  38 A0 00 C0 */	li r5, 0xc0
/* 8016ABBC 00167BBC  4B E9 A9 29 */	bl memset
/* 8016ABC0 00167BC0  38 7F 30 C8 */	addi r3, r31, 0x30c8
/* 8016ABC4 00167BC4  38 80 00 00 */	li r4, 0
/* 8016ABC8 00167BC8  38 A0 00 0C */	li r5, 0xc
/* 8016ABCC 00167BCC  4B E9 A9 19 */	bl memset
/* 8016ABD0 00167BD0  38 7F 30 E2 */	addi r3, r31, 0x30e2
/* 8016ABD4 00167BD4  38 80 00 00 */	li r4, 0
/* 8016ABD8 00167BD8  38 A0 00 01 */	li r5, 1
/* 8016ABDC 00167BDC  4B E9 A9 09 */	bl memset
/* 8016ABE0 00167BE0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8016ABE4 00167BE4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8016ABE8 00167BE8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8016ABEC 00167BEC  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8016ABF0 00167BF0  83 81 00 20 */	lwz r28, 0x20(r1)
/* 8016ABF4 00167BF4  38 21 00 30 */	addi r1, r1, 0x30
/* 8016ABF8 00167BF8  7C 08 03 A6 */	mtlr r0
/* 8016ABFC 00167BFC  4E 80 00 20 */	blr 

.global OSGetResetCode
OSGetResetCode:
/* 8016AC00 00167C00  3C 60 80 24 */	lis r3, lbl_802446F0@ha
/* 8016AC04 00167C04  38 63 46 F0 */	addi r3, r3, lbl_802446F0@l
/* 8016AC08 00167C08  80 03 00 00 */	lwz r0, 0(r3)
/* 8016AC0C 00167C0C  2C 00 00 00 */	cmpwi r0, 0
/* 8016AC10 00167C10  41 82 00 10 */	beq lbl_8016AC20
/* 8016AC14 00167C14  80 03 00 04 */	lwz r0, 4(r3)
/* 8016AC18 00167C18  64 03 80 00 */	oris r3, r0, 0x8000
/* 8016AC1C 00167C1C  48 00 00 18 */	b lbl_8016AC34
lbl_8016AC20:
/* 8016AC20 00167C20  3C 60 CC 00 */	lis r3, 0xCC003000@ha
/* 8016AC24 00167C24  38 63 30 00 */	addi r3, r3, 0xCC003000@l
/* 8016AC28 00167C28  80 03 00 24 */	lwz r0, 0x24(r3)
/* 8016AC2C 00167C2C  54 00 00 38 */	rlwinm r0, r0, 0, 0, 0x1c
/* 8016AC30 00167C30  54 03 E8 FE */	srwi r3, r0, 3
lbl_8016AC34:
/* 8016AC34 00167C34  4E 80 00 20 */	blr 
