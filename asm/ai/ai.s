.include "macros.inc"

.section .text  # 0x801765EC - 0x80176F20

.global AIRegisterDMACallback
AIRegisterDMACallback:
/* 801765EC 001735EC  7C 08 02 A6 */	mflr r0
/* 801765F0 001735F0  90 01 00 04 */	stw r0, 4(r1)
/* 801765F4 001735F4  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 801765F8 001735F8  93 E1 00 14 */	stw r31, 0x14(r1)
/* 801765FC 001735FC  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80176600 00173600  7C 7E 1B 78 */	mr r30, r3
/* 80176604 00173604  83 ED 8D 64 */	lwz r31, lbl_80277684@sda21(r13)
/* 80176608 00173608  4B FF 35 51 */	bl OSDisableInterrupts
/* 8017660C 0017360C  93 CD 8D 64 */	stw r30, lbl_80277684@sda21(r13)
/* 80176610 00173610  4B FF 35 71 */	bl OSRestoreInterrupts
/* 80176614 00173614  7F E3 FB 78 */	mr r3, r31
/* 80176618 00173618  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8017661C 0017361C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80176620 00173620  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80176624 00173624  38 21 00 18 */	addi r1, r1, 0x18
/* 80176628 00173628  7C 08 03 A6 */	mtlr r0
/* 8017662C 0017362C  4E 80 00 20 */	blr 

.global AIInitDMA
AIInitDMA:
/* 80176630 00173630  7C 08 02 A6 */	mflr r0
/* 80176634 00173634  90 01 00 04 */	stw r0, 4(r1)
/* 80176638 00173638  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8017663C 0017363C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80176640 00173640  3B E4 00 00 */	addi r31, r4, 0
/* 80176644 00173644  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80176648 00173648  3B C3 00 00 */	addi r30, r3, 0
/* 8017664C 0017364C  4B FF 35 0D */	bl OSDisableInterrupts
/* 80176650 00173650  3C 80 CC 00 */	lis r4, 0xCC005030@ha
/* 80176654 00173654  A0 04 50 30 */	lhz r0, 0xCC005030@l(r4)
/* 80176658 00173658  38 A4 50 00 */	addi r5, r4, 0x5000
/* 8017665C 0017365C  38 C4 50 00 */	addi r6, r4, 0x5000
/* 80176660 00173660  38 E4 50 00 */	addi r7, r4, 0x5000
/* 80176664 00173664  54 04 00 2A */	rlwinm r4, r0, 0, 0, 0x15
/* 80176668 00173668  57 C0 84 3E */	srwi r0, r30, 0x10
/* 8017666C 0017366C  7C 80 03 78 */	or r0, r4, r0
/* 80176670 00173670  B0 05 00 30 */	sth r0, 0x30(r5)
/* 80176674 00173674  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 80176678 00173678  A0 86 00 32 */	lhz r4, 0x32(r6)
/* 8017667C 0017367C  54 84 06 DE */	rlwinm r4, r4, 0, 0x1b, 0xf
/* 80176680 00173680  7C 80 03 78 */	or r0, r4, r0
/* 80176684 00173684  B0 06 00 32 */	sth r0, 0x32(r6)
/* 80176688 00173688  57 E0 DC 3E */	rlwinm r0, r31, 0x1b, 0x10, 0x1f
/* 8017668C 0017368C  A0 87 00 36 */	lhz r4, 0x36(r7)
/* 80176690 00173690  54 84 00 20 */	rlwinm r4, r4, 0, 0, 0x10
/* 80176694 00173694  7C 80 03 78 */	or r0, r4, r0
/* 80176698 00173698  B0 07 00 36 */	sth r0, 0x36(r7)
/* 8017669C 0017369C  4B FF 34 E5 */	bl OSRestoreInterrupts
/* 801766A0 001736A0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801766A4 001736A4  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 801766A8 001736A8  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 801766AC 001736AC  38 21 00 18 */	addi r1, r1, 0x18
/* 801766B0 001736B0  7C 08 03 A6 */	mtlr r0
/* 801766B4 001736B4  4E 80 00 20 */	blr 

.global AIStartDMA
AIStartDMA:
/* 801766B8 001736B8  3C 60 CC 00 */	lis r3, 0xCC005000@ha
/* 801766BC 001736BC  38 63 50 00 */	addi r3, r3, 0xCC005000@l
/* 801766C0 001736C0  A0 03 00 36 */	lhz r0, 0x36(r3)
/* 801766C4 001736C4  60 00 80 00 */	ori r0, r0, 0x8000
/* 801766C8 001736C8  B0 03 00 36 */	sth r0, 0x36(r3)
/* 801766CC 001736CC  4E 80 00 20 */	blr 

.global AIRegisterStreamCallback
AIRegisterStreamCallback:
/* 801766D0 001736D0  7C 08 02 A6 */	mflr r0
/* 801766D4 001736D4  90 01 00 04 */	stw r0, 4(r1)
/* 801766D8 001736D8  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 801766DC 001736DC  93 E1 00 14 */	stw r31, 0x14(r1)
/* 801766E0 001736E0  93 C1 00 10 */	stw r30, 0x10(r1)
/* 801766E4 001736E4  7C 7E 1B 78 */	mr r30, r3
/* 801766E8 001736E8  83 ED 8D 60 */	lwz r31, lbl_80277680@sda21(r13)
/* 801766EC 001736EC  4B FF 34 6D */	bl OSDisableInterrupts
/* 801766F0 001736F0  93 CD 8D 60 */	stw r30, lbl_80277680@sda21(r13)
/* 801766F4 001736F4  4B FF 34 8D */	bl OSRestoreInterrupts
/* 801766F8 001736F8  7F E3 FB 78 */	mr r3, r31
/* 801766FC 001736FC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80176700 00173700  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80176704 00173704  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80176708 00173708  38 21 00 18 */	addi r1, r1, 0x18
/* 8017670C 0017370C  7C 08 03 A6 */	mtlr r0
/* 80176710 00173710  4E 80 00 20 */	blr 

.global AIResetStreamSampleCount
AIResetStreamSampleCount:
/* 80176714 00173714  3C 60 CC 00 */	lis r3, 0xCC006C00@ha
/* 80176718 00173718  80 03 6C 00 */	lwz r0, 0xCC006C00@l(r3)
/* 8017671C 0017371C  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 80176720 00173720  60 00 00 20 */	ori r0, r0, 0x20
/* 80176724 00173724  90 03 6C 00 */	stw r0, 0x6c00(r3)
/* 80176728 00173728  4E 80 00 20 */	blr 

.global AISetStreamTrigger
AISetStreamTrigger:
/* 8017672C 0017372C  3C 80 CC 00 */	lis r4, 0xCC006C0C@ha
/* 80176730 00173730  90 64 6C 0C */	stw r3, 0xCC006C0C@l(r4)
/* 80176734 00173734  4E 80 00 20 */	blr 

.global AISetStreamPlayState
AISetStreamPlayState:
/* 80176738 00173738  7C 08 02 A6 */	mflr r0
/* 8017673C 0017373C  90 01 00 04 */	stw r0, 4(r1)
/* 80176740 00173740  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80176744 00173744  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80176748 00173748  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8017674C 0017374C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80176750 00173750  7C 7D 1B 78 */	mr r29, r3
/* 80176754 00173754  48 00 00 BD */	bl AIGetStreamPlayState
/* 80176758 00173758  7C 1D 18 40 */	cmplw r29, r3
/* 8017675C 0017375C  41 82 00 98 */	beq lbl_801767F4
/* 80176760 00173760  48 00 02 89 */	bl AIGetStreamSampleRate
/* 80176764 00173764  28 03 00 00 */	cmplwi r3, 0
/* 80176768 00173768  40 82 00 78 */	bne lbl_801767E0
/* 8017676C 0017376C  28 1D 00 01 */	cmplwi r29, 1
/* 80176770 00173770  40 82 00 70 */	bne lbl_801767E0
/* 80176774 00173774  48 00 02 CD */	bl AIGetStreamVolRight
/* 80176778 00173778  7C 7E 1B 78 */	mr r30, r3
/* 8017677C 0017377C  48 00 02 99 */	bl AIGetStreamVolLeft
/* 80176780 00173780  3B A3 00 00 */	addi r29, r3, 0
/* 80176784 00173784  38 60 00 00 */	li r3, 0
/* 80176788 00173788  48 00 02 9D */	bl AISetStreamVolRight
/* 8017678C 0017378C  38 60 00 00 */	li r3, 0
/* 80176790 00173790  48 00 02 69 */	bl AISetStreamVolLeft
/* 80176794 00173794  4B FF 33 C5 */	bl OSDisableInterrupts
/* 80176798 00173798  7C 7F 1B 78 */	mr r31, r3
/* 8017679C 0017379C  48 00 05 A1 */	bl __AI_SRC_INIT
/* 801767A0 001737A0  3C 80 CC 00 */	lis r4, 0xCC006C00@ha
/* 801767A4 001737A4  80 04 6C 00 */	lwz r0, 0xCC006C00@l(r4)
/* 801767A8 001737A8  38 7F 00 00 */	addi r3, r31, 0
/* 801767AC 001737AC  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 801767B0 001737B0  60 00 00 20 */	ori r0, r0, 0x20
/* 801767B4 001737B4  90 04 6C 00 */	stw r0, 0x6c00(r4)
/* 801767B8 001737B8  80 04 6C 00 */	lwz r0, 0x6c00(r4)
/* 801767BC 001737BC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 801767C0 001737C0  60 00 00 01 */	ori r0, r0, 1
/* 801767C4 001737C4  90 04 6C 00 */	stw r0, 0x6c00(r4)
/* 801767C8 001737C8  4B FF 33 B9 */	bl OSRestoreInterrupts
/* 801767CC 001737CC  7F C3 F3 78 */	mr r3, r30
/* 801767D0 001737D0  48 00 02 29 */	bl AISetStreamVolLeft
/* 801767D4 001737D4  7F A3 EB 78 */	mr r3, r29
/* 801767D8 001737D8  48 00 02 4D */	bl AISetStreamVolRight
/* 801767DC 001737DC  48 00 00 18 */	b lbl_801767F4
lbl_801767E0:
/* 801767E0 001737E0  3C 60 CC 00 */	lis r3, 0xCC006C00@ha
/* 801767E4 001737E4  80 03 6C 00 */	lwz r0, 0xCC006C00@l(r3)
/* 801767E8 001737E8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 801767EC 001737EC  7C 00 EB 78 */	or r0, r0, r29
/* 801767F0 001737F0  90 03 6C 00 */	stw r0, 0x6c00(r3)
lbl_801767F4:
/* 801767F4 001737F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801767F8 001737F8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801767FC 001737FC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80176800 00173800  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80176804 00173804  38 21 00 20 */	addi r1, r1, 0x20
/* 80176808 00173808  7C 08 03 A6 */	mtlr r0
/* 8017680C 0017380C  4E 80 00 20 */	blr 

.global AIGetStreamPlayState
AIGetStreamPlayState:
/* 80176810 00173810  3C 60 CC 00 */	lis r3, 0xCC006C00@ha
/* 80176814 00173814  80 03 6C 00 */	lwz r0, 0xCC006C00@l(r3)
/* 80176818 00173818  54 03 07 FE */	clrlwi r3, r0, 0x1f
/* 8017681C 0017381C  4E 80 00 20 */	blr 

.global AISetDSPSampleRate
AISetDSPSampleRate:
/* 80176820 00173820  7C 08 02 A6 */	mflr r0
/* 80176824 00173824  90 01 00 04 */	stw r0, 4(r1)
/* 80176828 00173828  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8017682C 0017382C  BF 41 00 10 */	stmw r26, 0x10(r1)
/* 80176830 00173830  7C 7A 1B 78 */	mr r26, r3
/* 80176834 00173834  48 00 00 CD */	bl AIGetDSPSampleRate
/* 80176838 00173838  7C 1A 18 40 */	cmplw r26, r3
/* 8017683C 0017383C  41 82 00 B0 */	beq lbl_801768EC
/* 80176840 00173840  3F E0 CC 00 */	lis r31, 0xCC006C00@ha
/* 80176844 00173844  80 1F 6C 00 */	lwz r0, 0xCC006C00@l(r31)
/* 80176848 00173848  28 1A 00 00 */	cmplwi r26, 0
/* 8017684C 0017384C  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80176850 00173850  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 80176854 00173854  40 82 00 98 */	bne lbl_801768EC
/* 80176858 00173858  48 00 01 BD */	bl AIGetStreamVolLeft
/* 8017685C 0017385C  7C 7E 1B 78 */	mr r30, r3
/* 80176860 00173860  48 00 01 E1 */	bl AIGetStreamVolRight
/* 80176864 00173864  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 80176868 00173868  3B A3 00 00 */	addi r29, r3, 0
/* 8017686C 0017386C  54 1B 07 FE */	clrlwi r27, r0, 0x1f
/* 80176870 00173870  48 00 01 79 */	bl AIGetStreamSampleRate
/* 80176874 00173874  3B 83 00 00 */	addi r28, r3, 0
/* 80176878 00173878  38 60 00 00 */	li r3, 0
/* 8017687C 0017387C  48 00 01 7D */	bl AISetStreamVolLeft
/* 80176880 00173880  38 60 00 00 */	li r3, 0
/* 80176884 00173884  48 00 01 A1 */	bl AISetStreamVolRight
/* 80176888 00173888  4B FF 32 D1 */	bl OSDisableInterrupts
/* 8017688C 0017388C  7C 7A 1B 78 */	mr r26, r3
/* 80176890 00173890  48 00 04 AD */	bl __AI_SRC_INIT
/* 80176894 00173894  80 9F 6C 00 */	lwz r4, 0x6c00(r31)
/* 80176898 00173898  57 80 08 3C */	slwi r0, r28, 1
/* 8017689C 0017389C  38 7A 00 00 */	addi r3, r26, 0
/* 801768A0 001738A0  54 84 06 F2 */	rlwinm r4, r4, 0, 0x1b, 0x19
/* 801768A4 001738A4  60 84 00 20 */	ori r4, r4, 0x20
/* 801768A8 001738A8  90 9F 6C 00 */	stw r4, 0x6c00(r31)
/* 801768AC 001738AC  80 9F 6C 00 */	lwz r4, 0x6c00(r31)
/* 801768B0 001738B0  54 84 07 FA */	rlwinm r4, r4, 0, 0x1f, 0x1d
/* 801768B4 001738B4  7C 80 03 78 */	or r0, r4, r0
/* 801768B8 001738B8  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 801768BC 001738BC  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 801768C0 001738C0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 801768C4 001738C4  7C 00 DB 78 */	or r0, r0, r27
/* 801768C8 001738C8  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 801768CC 001738CC  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 801768D0 001738D0  60 00 00 40 */	ori r0, r0, 0x40
/* 801768D4 001738D4  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 801768D8 001738D8  4B FF 32 A9 */	bl OSRestoreInterrupts
/* 801768DC 001738DC  7F C3 F3 78 */	mr r3, r30
/* 801768E0 001738E0  48 00 01 19 */	bl AISetStreamVolLeft
/* 801768E4 001738E4  7F A3 EB 78 */	mr r3, r29
/* 801768E8 001738E8  48 00 01 3D */	bl AISetStreamVolRight
lbl_801768EC:
/* 801768EC 001738EC  BB 41 00 10 */	lmw r26, 0x10(r1)
/* 801768F0 001738F0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 801768F4 001738F4  38 21 00 28 */	addi r1, r1, 0x28
/* 801768F8 001738F8  7C 08 03 A6 */	mtlr r0
/* 801768FC 001738FC  4E 80 00 20 */	blr 

.global AIGetDSPSampleRate
AIGetDSPSampleRate:
/* 80176900 00173900  3C 60 CC 00 */	lis r3, 0xCC006C00@ha
/* 80176904 00173904  80 03 6C 00 */	lwz r0, 0xCC006C00@l(r3)
/* 80176908 00173908  54 00 D7 FE */	rlwinm r0, r0, 0x1a, 0x1f, 0x1f
/* 8017690C 0017390C  68 03 00 01 */	xori r3, r0, 1
/* 80176910 00173910  4E 80 00 20 */	blr 

.global __AI_set_stream_sample_rate
__AI_set_stream_sample_rate:
/* 80176914 00173914  7C 08 02 A6 */	mflr r0
/* 80176918 00173918  90 01 00 04 */	stw r0, 4(r1)
/* 8017691C 0017391C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80176920 00173920  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 80176924 00173924  7C 79 1B 78 */	mr r25, r3
/* 80176928 00173928  48 00 00 C1 */	bl AIGetStreamSampleRate
/* 8017692C 0017392C  7C 19 18 40 */	cmplw r25, r3
/* 80176930 00173930  41 82 00 A4 */	beq lbl_801769D4
/* 80176934 00173934  3F E0 CC 00 */	lis r31, 0xCC006C00@ha
/* 80176938 00173938  80 1F 6C 00 */	lwz r0, 0xCC006C00@l(r31)
/* 8017693C 0017393C  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80176940 00173940  7C 1D 03 78 */	mr r29, r0
/* 80176944 00173944  48 00 00 D1 */	bl AIGetStreamVolLeft
/* 80176948 00173948  7C 7C 1B 78 */	mr r28, r3
/* 8017694C 0017394C  48 00 00 F5 */	bl AIGetStreamVolRight
/* 80176950 00173950  3B 63 00 00 */	addi r27, r3, 0
/* 80176954 00173954  38 60 00 00 */	li r3, 0
/* 80176958 00173958  48 00 00 CD */	bl AISetStreamVolRight
/* 8017695C 0017395C  38 60 00 00 */	li r3, 0
/* 80176960 00173960  48 00 00 99 */	bl AISetStreamVolLeft
/* 80176964 00173964  80 7F 6C 00 */	lwz r3, 0x6c00(r31)
/* 80176968 00173968  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 8017696C 0017396C  54 7A 06 72 */	rlwinm r26, r3, 0, 0x19, 0x19
/* 80176970 00173970  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80176974 00173974  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 80176978 00173978  4B FF 31 E1 */	bl OSDisableInterrupts
/* 8017697C 0017397C  7C 7E 1B 78 */	mr r30, r3
/* 80176980 00173980  48 00 03 BD */	bl __AI_SRC_INIT
/* 80176984 00173984  80 9F 6C 00 */	lwz r4, 0x6c00(r31)
/* 80176988 00173988  57 20 08 3C */	slwi r0, r25, 1
/* 8017698C 0017398C  38 7E 00 00 */	addi r3, r30, 0
/* 80176990 00173990  7C 84 D3 78 */	or r4, r4, r26
/* 80176994 00173994  90 9F 6C 00 */	stw r4, 0x6c00(r31)
/* 80176998 00173998  80 9F 6C 00 */	lwz r4, 0x6c00(r31)
/* 8017699C 0017399C  54 84 06 F2 */	rlwinm r4, r4, 0, 0x1b, 0x19
/* 801769A0 001739A0  60 84 00 20 */	ori r4, r4, 0x20
/* 801769A4 001739A4  90 9F 6C 00 */	stw r4, 0x6c00(r31)
/* 801769A8 001739A8  80 9F 6C 00 */	lwz r4, 0x6c00(r31)
/* 801769AC 001739AC  54 84 07 FA */	rlwinm r4, r4, 0, 0x1f, 0x1d
/* 801769B0 001739B0  7C 80 03 78 */	or r0, r4, r0
/* 801769B4 001739B4  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 801769B8 001739B8  4B FF 31 C9 */	bl OSRestoreInterrupts
/* 801769BC 001739BC  7F A3 EB 78 */	mr r3, r29
/* 801769C0 001739C0  4B FF FD 79 */	bl AISetStreamPlayState
/* 801769C4 001739C4  7F 83 E3 78 */	mr r3, r28
/* 801769C8 001739C8  48 00 00 31 */	bl AISetStreamVolLeft
/* 801769CC 001739CC  7F 63 DB 78 */	mr r3, r27
/* 801769D0 001739D0  48 00 00 55 */	bl AISetStreamVolRight
lbl_801769D4:
/* 801769D4 001739D4  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 801769D8 001739D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801769DC 001739DC  38 21 00 30 */	addi r1, r1, 0x30
/* 801769E0 001739E0  7C 08 03 A6 */	mtlr r0
/* 801769E4 001739E4  4E 80 00 20 */	blr 

.global AIGetStreamSampleRate
AIGetStreamSampleRate:
/* 801769E8 001739E8  3C 60 CC 00 */	lis r3, 0xCC006C00@ha
/* 801769EC 001739EC  80 03 6C 00 */	lwz r0, 0xCC006C00@l(r3)
/* 801769F0 001739F0  54 03 FF FE */	rlwinm r3, r0, 0x1f, 0x1f, 0x1f
/* 801769F4 001739F4  4E 80 00 20 */	blr 

.global AISetStreamVolLeft
AISetStreamVolLeft:
/* 801769F8 001739F8  3C 80 CC 00 */	lis r4, 0xCC006C00@ha
/* 801769FC 001739FC  38 84 6C 00 */	addi r4, r4, 0xCC006C00@l
/* 80176A00 00173A00  80 04 00 04 */	lwz r0, 4(r4)
/* 80176A04 00173A04  54 00 00 2E */	rlwinm r0, r0, 0, 0, 0x17
/* 80176A08 00173A08  50 60 06 3E */	rlwimi r0, r3, 0, 0x18, 0x1f
/* 80176A0C 00173A0C  90 04 00 04 */	stw r0, 4(r4)
/* 80176A10 00173A10  4E 80 00 20 */	blr 

.global AIGetStreamVolLeft
AIGetStreamVolLeft:
/* 80176A14 00173A14  3C 60 CC 00 */	lis r3, 0xCC006C04@ha
/* 80176A18 00173A18  80 03 6C 04 */	lwz r0, 0xCC006C04@l(r3)
/* 80176A1C 00173A1C  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80176A20 00173A20  4E 80 00 20 */	blr 

.global AISetStreamVolRight
AISetStreamVolRight:
/* 80176A24 00173A24  3C 80 CC 00 */	lis r4, 0xCC006C00@ha
/* 80176A28 00173A28  38 84 6C 00 */	addi r4, r4, 0xCC006C00@l
/* 80176A2C 00173A2C  80 04 00 04 */	lwz r0, 4(r4)
/* 80176A30 00173A30  54 00 06 1E */	rlwinm r0, r0, 0, 0x18, 0xf
/* 80176A34 00173A34  50 60 44 2E */	rlwimi r0, r3, 8, 0x10, 0x17
/* 80176A38 00173A38  90 04 00 04 */	stw r0, 4(r4)
/* 80176A3C 00173A3C  4E 80 00 20 */	blr 

.global AIGetStreamVolRight
AIGetStreamVolRight:
/* 80176A40 00173A40  3C 60 CC 00 */	lis r3, 0xCC006C04@ha
/* 80176A44 00173A44  80 03 6C 04 */	lwz r0, 0xCC006C04@l(r3)
/* 80176A48 00173A48  54 03 C6 3E */	rlwinm r3, r0, 0x18, 0x18, 0x1f
/* 80176A4C 00173A4C  4E 80 00 20 */	blr 

.global AIInit
AIInit:
/* 80176A50 00173A50  7C 08 02 A6 */	mflr r0
/* 80176A54 00173A54  90 01 00 04 */	stw r0, 4(r1)
/* 80176A58 00173A58  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80176A5C 00173A5C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80176A60 00173A60  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80176A64 00173A64  3B C3 00 00 */	addi r30, r3, 0
/* 80176A68 00173A68  80 0D 8D 70 */	lwz r0, lbl_80277690@sda21(r13)
/* 80176A6C 00173A6C  2C 00 00 01 */	cmpwi r0, 1
/* 80176A70 00173A70  41 82 01 34 */	beq lbl_80176BA4
/* 80176A74 00173A74  80 6D 81 C0 */	lwz r3, lbl_80276AE0@sda21(r13)
/* 80176A78 00173A78  4B FE EF 25 */	bl OSRegisterVersion
/* 80176A7C 00173A7C  3C 60 80 00 */	lis r3, 0x800000F8@ha
/* 80176A80 00173A80  80 03 00 F8 */	lwz r0, 0x800000F8@l(r3)
/* 80176A84 00173A84  3C 60 43 1C */	lis r3, 0x431BDE83@ha
/* 80176A88 00173A88  3C 80 00 01 */	lis r4, 0x0000A428@ha
/* 80176A8C 00173A8C  54 00 F0 BE */	srwi r0, r0, 2
/* 80176A90 00173A90  38 63 DE 83 */	addi r3, r3, 0x431BDE83@l
/* 80176A94 00173A94  7C 03 00 16 */	mulhwu r0, r3, r0
/* 80176A98 00173A98  54 09 8B FE */	srwi r9, r0, 0xf
/* 80176A9C 00173A9C  38 A4 A4 28 */	addi r5, r4, 0x0000A428@l
/* 80176AA0 00173AA0  38 64 A4 10 */	addi r3, r4, -23536
/* 80176AA4 00173AA4  38 04 F6 18 */	addi r0, r4, -2536
/* 80176AA8 00173AA8  3C 80 10 62 */	lis r4, 0x10624DD3@ha
/* 80176AAC 00173AAC  7C E9 29 D6 */	mullw r7, r9, r5
/* 80176AB0 00173AB0  39 44 4D D3 */	addi r10, r4, 0x10624DD3@l
/* 80176AB4 00173AB4  7C A9 19 D6 */	mullw r5, r9, r3
/* 80176AB8 00173AB8  7C 89 01 D6 */	mullw r4, r9, r0
/* 80176ABC 00173ABC  1D 09 7B 24 */	mulli r8, r9, 0x7b24
/* 80176AC0 00173AC0  1C 69 0B B8 */	mulli r3, r9, 0xbb8
/* 80176AC4 00173AC4  7D 0A 40 16 */	mulhwu r8, r10, r8
/* 80176AC8 00173AC8  7C EA 38 16 */	mulhwu r7, r10, r7
/* 80176ACC 00173ACC  7C AA 28 16 */	mulhwu r5, r10, r5
/* 80176AD0 00173AD0  7C 8A 20 16 */	mulhwu r4, r10, r4
/* 80176AD4 00173AD4  7C 6A 18 16 */	mulhwu r3, r10, r3
/* 80176AD8 00173AD8  55 08 BA 7E */	srwi r8, r8, 9
/* 80176ADC 00173ADC  54 E7 BA 7E */	srwi r7, r7, 9
/* 80176AE0 00173AE0  91 0D 8D 7C */	stw r8, lbl_8027769C@sda21(r13)
/* 80176AE4 00173AE4  54 A5 BA 7E */	srwi r5, r5, 9
/* 80176AE8 00173AE8  54 84 BA 7E */	srwi r4, r4, 9
/* 80176AEC 00173AEC  90 ED 8D 84 */	stw r7, lbl_802776A4@sda21(r13)
/* 80176AF0 00173AF0  3B E0 00 00 */	li r31, 0
/* 80176AF4 00173AF4  54 63 BA 7E */	srwi r3, r3, 9
/* 80176AF8 00173AF8  90 AD 8D 8C */	stw r5, lbl_802776AC@sda21(r13)
/* 80176AFC 00173AFC  3C C0 CC 00 */	lis r6, 0xCC006C00@ha
/* 80176B00 00173B00  90 6D 8D 9C */	stw r3, lbl_802776BC@sda21(r13)
/* 80176B04 00173B04  38 60 00 01 */	li r3, 1
/* 80176B08 00173B08  80 06 6C 00 */	lwz r0, 0xCC006C00@l(r6)
/* 80176B0C 00173B0C  90 8D 8D 94 */	stw r4, lbl_802776B4@sda21(r13)
/* 80176B10 00173B10  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 80176B14 00173B14  60 00 00 20 */	ori r0, r0, 0x20
/* 80176B18 00173B18  93 ED 8D 78 */	stw r31, lbl_80277698@sda21(r13)
/* 80176B1C 00173B1C  93 ED 8D 80 */	stw r31, lbl_802776A0@sda21(r13)
/* 80176B20 00173B20  93 ED 8D 88 */	stw r31, lbl_802776A8@sda21(r13)
/* 80176B24 00173B24  93 ED 8D 90 */	stw r31, lbl_802776B0@sda21(r13)
/* 80176B28 00173B28  93 ED 8D 98 */	stw r31, lbl_802776B8@sda21(r13)
/* 80176B2C 00173B2C  80 A6 6C 04 */	lwz r5, 0x6c04(r6)
/* 80176B30 00173B30  90 06 6C 00 */	stw r0, 0x6c00(r6)
/* 80176B34 00173B34  54 A0 06 1E */	rlwinm r0, r5, 0, 0x18, 0xf
/* 80176B38 00173B38  60 00 00 00 */	nop 
/* 80176B3C 00173B3C  90 06 6C 04 */	stw r0, 0x6c04(r6)
/* 80176B40 00173B40  80 06 6C 04 */	lwz r0, 0x6c04(r6)
/* 80176B44 00173B44  54 00 00 2E */	rlwinm r0, r0, 0, 0, 0x17
/* 80176B48 00173B48  60 00 00 00 */	nop 
/* 80176B4C 00173B4C  90 06 6C 04 */	stw r0, 0x6c04(r6)
/* 80176B50 00173B50  93 E6 6C 0C */	stw r31, 0x6c0c(r6)
/* 80176B54 00173B54  4B FF FD C1 */	bl __AI_set_stream_sample_rate
/* 80176B58 00173B58  38 60 00 00 */	li r3, 0
/* 80176B5C 00173B5C  4B FF FC C5 */	bl AISetDSPSampleRate
/* 80176B60 00173B60  3C 60 80 17 */	lis r3, __AIDHandler@ha
/* 80176B64 00173B64  93 ED 8D 60 */	stw r31, lbl_80277680@sda21(r13)
/* 80176B68 00173B68  38 83 6C 38 */	addi r4, r3, __AIDHandler@l
/* 80176B6C 00173B6C  93 ED 8D 64 */	stw r31, lbl_80277684@sda21(r13)
/* 80176B70 00173B70  38 60 00 05 */	li r3, 5
/* 80176B74 00173B74  93 CD 8D 68 */	stw r30, lbl_80277688@sda21(r13)
/* 80176B78 00173B78  4B FF 30 2D */	bl __OSSetInterruptHandler
/* 80176B7C 00173B7C  3C 60 04 00 */	lis r3, 0x400
/* 80176B80 00173B80  4B FF 34 29 */	bl __OSUnmaskInterrupts
/* 80176B84 00173B84  3C 60 80 17 */	lis r3, __AISHandler@ha
/* 80176B88 00173B88  38 83 6B BC */	addi r4, r3, __AISHandler@l
/* 80176B8C 00173B8C  38 60 00 08 */	li r3, 8
/* 80176B90 00173B90  4B FF 30 15 */	bl __OSSetInterruptHandler
/* 80176B94 00173B94  3C 60 00 80 */	lis r3, 0x80
/* 80176B98 00173B98  4B FF 34 11 */	bl __OSUnmaskInterrupts
/* 80176B9C 00173B9C  38 00 00 01 */	li r0, 1
/* 80176BA0 00173BA0  90 0D 8D 70 */	stw r0, lbl_80277690@sda21(r13)
lbl_80176BA4:
/* 80176BA4 00173BA4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80176BA8 00173BA8  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80176BAC 00173BAC  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80176BB0 00173BB0  38 21 00 18 */	addi r1, r1, 0x18
/* 80176BB4 00173BB4  7C 08 03 A6 */	mtlr r0
/* 80176BB8 00173BB8  4E 80 00 20 */	blr 

.global __AISHandler
__AISHandler:
/* 80176BBC 00173BBC  7C 08 02 A6 */	mflr r0
/* 80176BC0 00173BC0  90 01 00 04 */	stw r0, 4(r1)
/* 80176BC4 00173BC4  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 80176BC8 00173BC8  93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 80176BCC 00173BCC  3F E0 CC 00 */	lis r31, 0xCC006C00@ha
/* 80176BD0 00173BD0  80 1F 6C 00 */	lwz r0, 0xCC006C00@l(r31)
/* 80176BD4 00173BD4  38 61 00 10 */	addi r3, r1, 0x10
/* 80176BD8 00173BD8  93 C1 02 D8 */	stw r30, 0x2d8(r1)
/* 80176BDC 00173BDC  60 00 00 08 */	ori r0, r0, 8
/* 80176BE0 00173BE0  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 80176BE4 00173BE4  3B C4 00 00 */	addi r30, r4, 0
/* 80176BE8 00173BE8  4B FF 07 31 */	bl OSClearContext
/* 80176BEC 00173BEC  38 61 00 10 */	addi r3, r1, 0x10
/* 80176BF0 00173BF0  4B FF 05 61 */	bl OSSetCurrentContext
/* 80176BF4 00173BF4  81 8D 8D 60 */	lwz r12, lbl_80277680@sda21(r13)
/* 80176BF8 00173BF8  28 0C 00 00 */	cmplwi r12, 0
/* 80176BFC 00173BFC  41 82 00 14 */	beq lbl_80176C10
/* 80176C00 00173C00  38 7F 6C 00 */	addi r3, r31, 0x6c00
/* 80176C04 00173C04  7D 88 03 A6 */	mtlr r12
/* 80176C08 00173C08  80 63 00 08 */	lwz r3, 8(r3)
/* 80176C0C 00173C0C  4E 80 00 21 */	blrl 
lbl_80176C10:
/* 80176C10 00173C10  38 61 00 10 */	addi r3, r1, 0x10
/* 80176C14 00173C14  4B FF 07 05 */	bl OSClearContext
/* 80176C18 00173C18  7F C3 F3 78 */	mr r3, r30
/* 80176C1C 00173C1C  4B FF 05 35 */	bl OSSetCurrentContext
/* 80176C20 00173C20  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 80176C24 00173C24  83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 80176C28 00173C28  83 C1 02 D8 */	lwz r30, 0x2d8(r1)
/* 80176C2C 00173C2C  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 80176C30 00173C30  7C 08 03 A6 */	mtlr r0
/* 80176C34 00173C34  4E 80 00 20 */	blr 

.global __AIDHandler
__AIDHandler:
/* 80176C38 00173C38  7C 08 02 A6 */	mflr r0
/* 80176C3C 00173C3C  3C 60 CC 00 */	lis r3, 0xCC005000@ha
/* 80176C40 00173C40  90 01 00 04 */	stw r0, 4(r1)
/* 80176C44 00173C44  38 63 50 00 */	addi r3, r3, 0xCC005000@l
/* 80176C48 00173C48  38 00 FF 5F */	li r0, -161
/* 80176C4C 00173C4C  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 80176C50 00173C50  93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 80176C54 00173C54  3B E4 00 00 */	addi r31, r4, 0
/* 80176C58 00173C58  A0 A3 00 0A */	lhz r5, 0xa(r3)
/* 80176C5C 00173C5C  7C A0 00 38 */	and r0, r5, r0
/* 80176C60 00173C60  60 00 00 08 */	ori r0, r0, 8
/* 80176C64 00173C64  B0 03 00 0A */	sth r0, 0xa(r3)
/* 80176C68 00173C68  38 61 00 10 */	addi r3, r1, 0x10
/* 80176C6C 00173C6C  4B FF 06 AD */	bl OSClearContext
/* 80176C70 00173C70  38 61 00 10 */	addi r3, r1, 0x10
/* 80176C74 00173C74  4B FF 04 DD */	bl OSSetCurrentContext
/* 80176C78 00173C78  80 6D 8D 64 */	lwz r3, lbl_80277684@sda21(r13)
/* 80176C7C 00173C7C  28 03 00 00 */	cmplwi r3, 0
/* 80176C80 00173C80  41 82 00 40 */	beq lbl_80176CC0
/* 80176C84 00173C84  80 0D 8D 74 */	lwz r0, lbl_80277694@sda21(r13)
/* 80176C88 00173C88  2C 00 00 00 */	cmpwi r0, 0
/* 80176C8C 00173C8C  40 82 00 34 */	bne lbl_80176CC0
/* 80176C90 00173C90  80 0D 8D 68 */	lwz r0, lbl_80277688@sda21(r13)
/* 80176C94 00173C94  38 80 00 01 */	li r4, 1
/* 80176C98 00173C98  90 8D 8D 74 */	stw r4, lbl_80277694@sda21(r13)
/* 80176C9C 00173C9C  28 00 00 00 */	cmplwi r0, 0
/* 80176CA0 00173CA0  41 82 00 0C */	beq lbl_80176CAC
/* 80176CA4 00173CA4  48 00 00 41 */	bl __AICallbackStackSwitch
/* 80176CA8 00173CA8  48 00 00 10 */	b lbl_80176CB8
lbl_80176CAC:
/* 80176CAC 00173CAC  39 83 00 00 */	addi r12, r3, 0
/* 80176CB0 00173CB0  7D 88 03 A6 */	mtlr r12
/* 80176CB4 00173CB4  4E 80 00 21 */	blrl 
lbl_80176CB8:
/* 80176CB8 00173CB8  38 00 00 00 */	li r0, 0
/* 80176CBC 00173CBC  90 0D 8D 74 */	stw r0, lbl_80277694@sda21(r13)
lbl_80176CC0:
/* 80176CC0 00173CC0  38 61 00 10 */	addi r3, r1, 0x10
/* 80176CC4 00173CC4  4B FF 06 55 */	bl OSClearContext
/* 80176CC8 00173CC8  7F E3 FB 78 */	mr r3, r31
/* 80176CCC 00173CCC  4B FF 04 85 */	bl OSSetCurrentContext
/* 80176CD0 00173CD0  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 80176CD4 00173CD4  83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 80176CD8 00173CD8  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 80176CDC 00173CDC  7C 08 03 A6 */	mtlr r0
/* 80176CE0 00173CE0  4E 80 00 20 */	blr 

.global __AICallbackStackSwitch
__AICallbackStackSwitch:
/* 80176CE4 00173CE4  7C 08 02 A6 */	mflr r0
/* 80176CE8 00173CE8  90 01 00 04 */	stw r0, 4(r1)
/* 80176CEC 00173CEC  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80176CF0 00173CF0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80176CF4 00173CF4  7C 7F 1B 78 */	mr r31, r3
/* 80176CF8 00173CF8  3C A0 80 27 */	lis r5, lbl_8027768C@ha
/* 80176CFC 00173CFC  38 A5 76 8C */	addi r5, r5, lbl_8027768C@l
/* 80176D00 00173D00  90 25 00 00 */	stw r1, 0(r5)
/* 80176D04 00173D04  3C A0 80 27 */	lis r5, lbl_80277688@ha
/* 80176D08 00173D08  38 A5 76 88 */	addi r5, r5, lbl_80277688@l
/* 80176D0C 00173D0C  80 25 00 00 */	lwz r1, 0(r5)
/* 80176D10 00173D10  38 21 FF F8 */	addi r1, r1, -8
/* 80176D14 00173D14  7F E8 03 A6 */	mtlr r31
/* 80176D18 00173D18  4E 80 00 21 */	blrl 
/* 80176D1C 00173D1C  3C A0 80 27 */	lis r5, lbl_8027768C@ha
/* 80176D20 00173D20  38 A5 76 8C */	addi r5, r5, lbl_8027768C@l
/* 80176D24 00173D24  80 25 00 00 */	lwz r1, 0(r5)
/* 80176D28 00173D28  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80176D2C 00173D2C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80176D30 00173D30  38 21 00 18 */	addi r1, r1, 0x18
/* 80176D34 00173D34  7C 08 03 A6 */	mtlr r0
/* 80176D38 00173D38  4E 80 00 20 */	blr 

.global __AI_SRC_INIT
__AI_SRC_INIT:
/* 80176D3C 00173D3C  7C 08 02 A6 */	mflr r0
/* 80176D40 00173D40  90 01 00 04 */	stw r0, 4(r1)
/* 80176D44 00173D44  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80176D48 00173D48  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 80176D4C 00173D4C  38 80 00 00 */	li r4, 0
/* 80176D50 00173D50  38 60 00 00 */	li r3, 0
/* 80176D54 00173D54  38 00 00 00 */	li r0, 0
/* 80176D58 00173D58  3B 80 00 00 */	li r28, 0
/* 80176D5C 00173D5C  3B A0 00 00 */	li r29, 0
/* 80176D60 00173D60  48 00 00 04 */	b lbl_80176D64
lbl_80176D64:
/* 80176D64 00173D64  3F E0 CC 00 */	lis r31, 0xcc00
/* 80176D68 00173D68  48 00 00 04 */	b lbl_80176D6C
lbl_80176D6C:
/* 80176D6C 00173D6C  48 00 01 64 */	b lbl_80176ED0
lbl_80176D70:
/* 80176D70 00173D70  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 80176D74 00173D74  3B DF 6C 00 */	addi r30, r31, 0x6c00
/* 80176D78 00173D78  3B DE 00 08 */	addi r30, r30, 8
/* 80176D7C 00173D7C  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 80176D80 00173D80  60 00 00 20 */	ori r0, r0, 0x20
/* 80176D84 00173D84  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 80176D88 00173D88  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 80176D8C 00173D8C  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80176D90 00173D90  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 80176D94 00173D94  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 80176D98 00173D98  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80176D9C 00173D9C  60 00 00 01 */	ori r0, r0, 1
/* 80176DA0 00173DA0  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 80176DA4 00173DA4  80 7E 00 00 */	lwz r3, 0(r30)
/* 80176DA8 00173DA8  48 00 00 04 */	b lbl_80176DAC
lbl_80176DAC:
/* 80176DAC 00173DAC  48 00 00 04 */	b lbl_80176DB0
lbl_80176DB0:
/* 80176DB0 00173DB0  80 1E 00 00 */	lwz r0, 0(r30)
/* 80176DB4 00173DB4  7C 03 00 40 */	cmplw r3, r0
/* 80176DB8 00173DB8  41 82 FF F8 */	beq lbl_80176DB0
/* 80176DBC 00173DBC  4B FF 62 A5 */	bl OSGetTime
/* 80176DC0 00173DC0  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 80176DC4 00173DC4  7C 9A 23 78 */	mr r26, r4
/* 80176DC8 00173DC8  7C 7B 1B 78 */	mr r27, r3
/* 80176DCC 00173DCC  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80176DD0 00173DD0  60 00 00 02 */	ori r0, r0, 2
/* 80176DD4 00173DD4  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 80176DD8 00173DD8  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 80176DDC 00173DDC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80176DE0 00173DE0  60 00 00 01 */	ori r0, r0, 1
/* 80176DE4 00173DE4  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 80176DE8 00173DE8  80 7E 00 00 */	lwz r3, 0(r30)
/* 80176DEC 00173DEC  48 00 00 04 */	b lbl_80176DF0
lbl_80176DF0:
/* 80176DF0 00173DF0  48 00 00 04 */	b lbl_80176DF4
lbl_80176DF4:
/* 80176DF4 00173DF4  80 1E 00 00 */	lwz r0, 0(r30)
/* 80176DF8 00173DF8  7C 03 00 40 */	cmplw r3, r0
/* 80176DFC 00173DFC  41 82 FF F8 */	beq lbl_80176DF4
/* 80176E00 00173E00  4B FF 62 61 */	bl OSGetTime
/* 80176E04 00173E04  7D 1A 20 10 */	subfc r8, r26, r4
/* 80176E08 00173E08  81 8D 8D 7C */	lwz r12, lbl_8027769C@sda21(r13)
/* 80176E0C 00173E0C  80 BF 6C 00 */	lwz r5, 0x6c00(r31)
/* 80176E10 00173E10  7C FB 19 10 */	subfe r7, r27, r3
/* 80176E14 00173E14  81 4D 8D 9C */	lwz r10, lbl_802776BC@sda21(r13)
/* 80176E18 00173E18  6C E7 80 00 */	xoris r7, r7, 0x8000
/* 80176E1C 00173E1C  54 A5 07 FA */	rlwinm r5, r5, 0, 0x1f, 0x1d
/* 80176E20 00173E20  81 6D 8D 78 */	lwz r11, lbl_80277698@sda21(r13)
/* 80176E24 00173E24  7C CA 60 10 */	subfc r6, r10, r12
/* 80176E28 00173E28  81 2D 8D 98 */	lwz r9, lbl_802776B8@sda21(r13)
/* 80176E2C 00173E2C  90 BF 6C 00 */	stw r5, 0x6c00(r31)
/* 80176E30 00173E30  7C 09 59 10 */	subfe r0, r9, r11
/* 80176E34 00173E34  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 80176E38 00173E38  7C 06 40 10 */	subfc r0, r6, r8
/* 80176E3C 00173E3C  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 80176E40 00173E40  7C A5 39 10 */	subfe r5, r5, r7
/* 80176E44 00173E44  7C A7 39 10 */	subfe r5, r7, r7
/* 80176E48 00173E48  7C A5 00 D0 */	neg r5, r5
/* 80176E4C 00173E4C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80176E50 00173E50  2C 05 00 00 */	cmpwi r5, 0
/* 80176E54 00173E54  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 80176E58 00173E58  41 82 00 14 */	beq lbl_80176E6C
/* 80176E5C 00173E5C  83 AD 8D 88 */	lwz r29, lbl_802776A8@sda21(r13)
/* 80176E60 00173E60  38 00 00 01 */	li r0, 1
/* 80176E64 00173E64  83 8D 8D 8C */	lwz r28, lbl_802776AC@sda21(r13)
/* 80176E68 00173E68  48 00 00 68 */	b lbl_80176ED0
lbl_80176E6C:
/* 80176E6C 00173E6C  7C CC 50 14 */	addc r6, r12, r10
/* 80176E70 00173E70  7C 0B 49 14 */	adde r0, r11, r9
/* 80176E74 00173E74  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 80176E78 00173E78  7C 06 40 10 */	subfc r0, r6, r8
/* 80176E7C 00173E7C  7C A5 39 10 */	subfe r5, r5, r7
/* 80176E80 00173E80  7C A7 39 10 */	subfe r5, r7, r7
/* 80176E84 00173E84  7C A5 00 D0 */	neg r5, r5
/* 80176E88 00173E88  2C 05 00 00 */	cmpwi r5, 0
/* 80176E8C 00173E8C  40 82 00 40 */	bne lbl_80176ECC
/* 80176E90 00173E90  80 AD 8D 84 */	lwz r5, lbl_802776A4@sda21(r13)
/* 80176E94 00173E94  80 0D 8D 80 */	lwz r0, lbl_802776A0@sda21(r13)
/* 80176E98 00173E98  7C CA 28 10 */	subfc r6, r10, r5
/* 80176E9C 00173E9C  7C 09 01 10 */	subfe r0, r9, r0
/* 80176EA0 00173EA0  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 80176EA4 00173EA4  7C 06 40 10 */	subfc r0, r6, r8
/* 80176EA8 00173EA8  7C A5 39 10 */	subfe r5, r5, r7
/* 80176EAC 00173EAC  7C A7 39 10 */	subfe r5, r7, r7
/* 80176EB0 00173EB0  7C A5 00 D0 */	neg r5, r5
/* 80176EB4 00173EB4  2C 05 00 00 */	cmpwi r5, 0
/* 80176EB8 00173EB8  41 82 00 14 */	beq lbl_80176ECC
/* 80176EBC 00173EBC  83 AD 8D 90 */	lwz r29, lbl_802776B0@sda21(r13)
/* 80176EC0 00173EC0  38 00 00 01 */	li r0, 1
/* 80176EC4 00173EC4  83 8D 8D 94 */	lwz r28, lbl_802776B4@sda21(r13)
/* 80176EC8 00173EC8  48 00 00 08 */	b lbl_80176ED0
lbl_80176ECC:
/* 80176ECC 00173ECC  38 00 00 00 */	li r0, 0
lbl_80176ED0:
/* 80176ED0 00173ED0  28 00 00 00 */	cmplwi r0, 0
/* 80176ED4 00173ED4  41 82 FE 9C */	beq lbl_80176D70
/* 80176ED8 00173ED8  7F 64 E0 14 */	addc r27, r4, r28
/* 80176EDC 00173EDC  7F 43 E9 14 */	adde r26, r3, r29
/* 80176EE0 00173EE0  48 00 00 04 */	b lbl_80176EE4
lbl_80176EE4:
/* 80176EE4 00173EE4  48 00 00 04 */	b lbl_80176EE8
lbl_80176EE8:
/* 80176EE8 00173EE8  4B FF 61 79 */	bl OSGetTime
/* 80176EEC 00173EEC  6C 65 80 00 */	xoris r5, r3, 0x8000
/* 80176EF0 00173EF0  6F 43 80 00 */	xoris r3, r26, 0x8000
/* 80176EF4 00173EF4  7C 1B 20 10 */	subfc r0, r27, r4
/* 80176EF8 00173EF8  7C 63 29 10 */	subfe r3, r3, r5
/* 80176EFC 00173EFC  7C 65 29 10 */	subfe r3, r5, r5
/* 80176F00 00173F00  7C 63 00 D0 */	neg r3, r3
/* 80176F04 00173F04  2C 03 00 00 */	cmpwi r3, 0
/* 80176F08 00173F08  40 82 FF E0 */	bne lbl_80176EE8
/* 80176F0C 00173F0C  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 80176F10 00173F10  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80176F14 00173F14  38 21 00 30 */	addi r1, r1, 0x30
/* 80176F18 00173F18  7C 08 03 A6 */	mtlr r0
/* 80176F1C 00173F1C  4E 80 00 20 */	blr 
