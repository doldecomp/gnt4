.include "macros.inc"

.section .text  # 0x80167F44 - 0x801688A4

.global PackArgs
PackArgs:
/* 80167F44 00164F44  7C 08 02 A6 */	mflr r0
/* 80167F48 00164F48  90 01 00 04 */	stw r0, 4(r1)
/* 80167F4C 00164F4C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80167F50 00164F50  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 80167F54 00164F54  3B 44 00 00 */	addi r26, r4, 0
/* 80167F58 00164F58  3B A5 00 00 */	addi r29, r5, 0
/* 80167F5C 00164F5C  3B C3 00 00 */	addi r30, r3, 0
/* 80167F60 00164F60  38 80 00 00 */	li r4, 0
/* 80167F64 00164F64  38 A0 20 00 */	li r5, 0x2000
/* 80167F68 00164F68  4B E9 D5 7D */	bl memset
/* 80167F6C 00164F6C  2C 1A 00 00 */	cmpwi r26, 0
/* 80167F70 00164F70  40 82 00 10 */	bne lbl_80167F80
/* 80167F74 00164F74  38 00 00 00 */	li r0, 0
/* 80167F78 00164F78  90 1E 00 08 */	stw r0, 8(r30)
/* 80167F7C 00164F7C  48 00 01 24 */	b lbl_801680A0
lbl_80167F80:
/* 80167F80 00164F80  57 40 10 3A */	slwi r0, r26, 2
/* 80167F84 00164F84  3B FA 00 00 */	addi r31, r26, 0
/* 80167F88 00164F88  3B 7E 20 00 */	addi r27, r30, 0x2000
/* 80167F8C 00164F8C  7F 9D 02 14 */	add r28, r29, r0
/* 80167F90 00164F90  48 00 00 28 */	b lbl_80167FB8
lbl_80167F94:
/* 80167F94 00164F94  80 7C 00 00 */	lwz r3, 0(r28)
/* 80167F98 00164F98  48 02 AE 95 */	bl strlen
/* 80167F9C 00164F9C  38 03 00 01 */	addi r0, r3, 1
/* 80167FA0 00164FA0  80 9C 00 00 */	lwz r4, 0(r28)
/* 80167FA4 00164FA4  7F 60 D8 50 */	subf r27, r0, r27
/* 80167FA8 00164FA8  38 7B 00 00 */	addi r3, r27, 0
/* 80167FAC 00164FAC  48 02 AD C9 */	bl strcpy
/* 80167FB0 00164FB0  7C 1E D8 50 */	subf r0, r30, r27
/* 80167FB4 00164FB4  90 1C 00 00 */	stw r0, 0(r28)
lbl_80167FB8:
/* 80167FB8 00164FB8  37 5A FF FF */	addic. r26, r26, -1
/* 80167FBC 00164FBC  3B 9C FF FC */	addi r28, r28, -4
/* 80167FC0 00164FC0  40 80 FF D4 */	bge lbl_80167F94
/* 80167FC4 00164FC4  7C 1E D8 50 */	subf r0, r30, r27
/* 80167FC8 00164FC8  38 7F 00 01 */	addi r3, r31, 1
/* 80167FCC 00164FCC  54 00 00 3A */	rlwinm r0, r0, 0, 0, 0x1d
/* 80167FD0 00164FD0  28 03 00 00 */	cmplwi r3, 0
/* 80167FD4 00164FD4  7C DE 02 14 */	add r6, r30, r0
/* 80167FD8 00164FD8  54 60 10 3A */	slwi r0, r3, 2
/* 80167FDC 00164FDC  7C C0 30 50 */	subf r6, r0, r6
/* 80167FE0 00164FE0  38 A6 00 00 */	addi r5, r6, 0
/* 80167FE4 00164FE4  38 E0 00 00 */	li r7, 0
/* 80167FE8 00164FE8  40 81 00 A8 */	ble lbl_80168090
/* 80167FEC 00164FEC  28 03 00 08 */	cmplwi r3, 8
/* 80167FF0 00164FF0  38 7F FF F9 */	addi r3, r31, -7
/* 80167FF4 00164FF4  40 81 00 B4 */	ble lbl_801680A8
/* 80167FF8 00164FF8  38 03 00 07 */	addi r0, r3, 7
/* 80167FFC 00164FFC  54 00 E8 FE */	srwi r0, r0, 3
/* 80168000 00165000  28 03 00 00 */	cmplwi r3, 0
/* 80168004 00165004  7C 09 03 A6 */	mtctr r0
/* 80168008 00165008  38 7D 00 00 */	addi r3, r29, 0
/* 8016800C 0016500C  38 85 00 00 */	addi r4, r5, 0
/* 80168010 00165010  40 81 00 98 */	ble lbl_801680A8
lbl_80168014:
/* 80168014 00165014  80 03 00 00 */	lwz r0, 0(r3)
/* 80168018 00165018  38 E7 00 08 */	addi r7, r7, 8
/* 8016801C 0016501C  90 04 00 00 */	stw r0, 0(r4)
/* 80168020 00165020  80 03 00 04 */	lwz r0, 4(r3)
/* 80168024 00165024  90 04 00 04 */	stw r0, 4(r4)
/* 80168028 00165028  80 03 00 08 */	lwz r0, 8(r3)
/* 8016802C 0016502C  90 04 00 08 */	stw r0, 8(r4)
/* 80168030 00165030  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80168034 00165034  90 04 00 0C */	stw r0, 0xc(r4)
/* 80168038 00165038  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8016803C 0016503C  90 04 00 10 */	stw r0, 0x10(r4)
/* 80168040 00165040  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80168044 00165044  90 04 00 14 */	stw r0, 0x14(r4)
/* 80168048 00165048  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8016804C 0016504C  90 04 00 18 */	stw r0, 0x18(r4)
/* 80168050 00165050  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 80168054 00165054  38 63 00 20 */	addi r3, r3, 0x20
/* 80168058 00165058  90 04 00 1C */	stw r0, 0x1c(r4)
/* 8016805C 0016505C  38 84 00 20 */	addi r4, r4, 0x20
/* 80168060 00165060  42 00 FF B4 */	bdnz lbl_80168014
/* 80168064 00165064  48 00 00 44 */	b lbl_801680A8
lbl_80168068:
/* 80168068 00165068  38 7F 00 01 */	addi r3, r31, 1
/* 8016806C 0016506C  7C 07 18 50 */	subf r0, r7, r3
/* 80168070 00165070  7C 07 18 40 */	cmplw r7, r3
/* 80168074 00165074  7C 09 03 A6 */	mtctr r0
/* 80168078 00165078  40 80 00 18 */	bge lbl_80168090
lbl_8016807C:
/* 8016807C 0016507C  80 04 00 00 */	lwz r0, 0(r4)
/* 80168080 00165080  38 84 00 04 */	addi r4, r4, 4
/* 80168084 00165084  90 05 00 00 */	stw r0, 0(r5)
/* 80168088 00165088  38 A5 00 04 */	addi r5, r5, 4
/* 8016808C 0016508C  42 00 FF F0 */	bdnz lbl_8016807C
lbl_80168090:
/* 80168090 00165090  38 06 FF FC */	addi r0, r6, -4
/* 80168094 00165094  93 E6 FF FC */	stw r31, -4(r6)
/* 80168098 00165098  7C 1E 00 50 */	subf r0, r30, r0
/* 8016809C 0016509C  90 1E 00 08 */	stw r0, 8(r30)
lbl_801680A0:
/* 801680A0 001650A0  38 60 00 01 */	li r3, 1
/* 801680A4 001650A4  48 00 00 14 */	b lbl_801680B8
lbl_801680A8:
/* 801680A8 001650A8  54 E0 10 3A */	slwi r0, r7, 2
/* 801680AC 001650AC  7C 9D 02 14 */	add r4, r29, r0
/* 801680B0 001650B0  7C A5 02 14 */	add r5, r5, r0
/* 801680B4 001650B4  4B FF FF B4 */	b lbl_80168068
lbl_801680B8:
/* 801680B8 001650B8  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 801680BC 001650BC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801680C0 001650C0  38 21 00 30 */	addi r1, r1, 0x30
/* 801680C4 001650C4  7C 08 03 A6 */	mtlr r0
/* 801680C8 001650C8  4E 80 00 20 */	blr 

.global Run
Run:
/* 801680CC 001650CC  7C 08 02 A6 */	mflr r0
/* 801680D0 001650D0  90 01 00 04 */	stw r0, 4(r1)
/* 801680D4 001650D4  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 801680D8 001650D8  93 E1 00 14 */	stw r31, 0x14(r1)
/* 801680DC 001650DC  7C 7F 1B 78 */	mr r31, r3
/* 801680E0 001650E0  4B FF EA E5 */	bl ICFlashInvalidate
/* 801680E4 001650E4  7C 00 04 AC */	sync 0
/* 801680E8 001650E8  4C 00 01 2C */	isync 
/* 801680EC 001650EC  7F E8 03 A6 */	mtlr r31
/* 801680F0 001650F0  4E 80 00 20 */	blr 

.global StartDol
StartDol:
/* 801680F4 001650F4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801680F8 001650F8  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 801680FC 001650FC  38 21 00 18 */	addi r1, r1, 0x18
/* 80168100 00165100  7C 08 03 A6 */	mtlr r0
/* 80168104 00165104  4E 80 00 20 */	blr 

.global ReadDisc
ReadDisc:
/* 80168108 00165108  7C 08 02 A6 */	mflr r0
/* 8016810C 0016510C  90 01 00 04 */	stw r0, 4(r1)
/* 80168110 00165110  94 21 FF B8 */	stwu r1, -0x48(r1)
/* 80168114 00165114  7C 80 23 78 */	mr r0, r4
/* 80168118 00165118  7C A6 2B 78 */	mr r6, r5
/* 8016811C 0016511C  7C 64 1B 78 */	mr r4, r3
/* 80168120 00165120  7C 05 03 78 */	mr r5, r0
/* 80168124 00165124  38 61 00 14 */	addi r3, r1, 0x14
/* 80168128 00165128  38 E0 00 00 */	li r7, 0
/* 8016812C 0016512C  39 00 00 00 */	li r8, 0
/* 80168130 00165130  48 00 98 05 */	bl DVDReadAbsAsyncPrio
/* 80168134 00165134  48 00 00 04 */	b lbl_80168138
lbl_80168138:
/* 80168138 00165138  48 00 00 04 */	b lbl_8016813C
lbl_8016813C:
/* 8016813C 0016513C  48 00 00 18 */	b lbl_80168154
lbl_80168140:
/* 80168140 00165140  48 00 A3 E9 */	bl DVDCheckDisk
/* 80168144 00165144  2C 03 00 00 */	cmpwi r3, 0
/* 80168148 00165148  40 82 00 0C */	bne lbl_80168154
/* 8016814C 0016514C  38 60 00 00 */	li r3, 0
/* 80168150 00165150  48 00 28 69 */	bl __OSDoHotReset
lbl_80168154:
/* 80168154 00165154  38 61 00 14 */	addi r3, r1, 0x14
/* 80168158 00165158  48 00 9F 25 */	bl DVDGetCommandBlockStatus
/* 8016815C 0016515C  2C 03 00 00 */	cmpwi r3, 0
/* 80168160 00165160  40 82 FF E0 */	bne lbl_80168140
/* 80168164 00165164  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80168168 00165168  38 21 00 48 */	addi r1, r1, 0x48
/* 8016816C 0016516C  7C 08 03 A6 */	mtlr r0
/* 80168170 00165170  4E 80 00 20 */	blr 

.global Callback
Callback:
/* 80168174 00165174  38 00 00 01 */	li r0, 1
/* 80168178 00165178  90 0D 8B 70 */	stw r0, lbl_80277490@sda21(r13)
/* 8016817C 0016517C  4E 80 00 20 */	blr 

.global __OSGetExecParams
__OSGetExecParams:
/* 80168180 00165180  7C 08 02 A6 */	mflr r0
/* 80168184 00165184  90 01 00 04 */	stw r0, 4(r1)
/* 80168188 00165188  94 21 FF F8 */	stwu r1, -8(r1)
/* 8016818C 0016518C  3C A0 80 00 */	lis r5, 0x800030F0@ha
/* 80168190 00165190  80 85 30 F0 */	lwz r4, 0x800030F0@l(r5)
/* 80168194 00165194  7C 05 20 40 */	cmplw r5, r4
/* 80168198 00165198  41 81 00 10 */	bgt lbl_801681A8
/* 8016819C 0016519C  38 A0 00 1C */	li r5, 0x1c
/* 801681A0 001651A0  4B E9 D4 2D */	bl memcpy
/* 801681A4 001651A4  48 00 00 0C */	b lbl_801681B0
lbl_801681A8:
/* 801681A8 001651A8  38 00 00 00 */	li r0, 0
/* 801681AC 001651AC  90 03 00 00 */	stw r0, 0(r3)
lbl_801681B0:
/* 801681B0 001651B0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801681B4 001651B4  38 21 00 08 */	addi r1, r1, 8
/* 801681B8 001651B8  7C 08 03 A6 */	mtlr r0
/* 801681BC 001651BC  4E 80 00 20 */	blr 

.global GetApploaderPosition
GetApploaderPosition:
/* 801681C0 001651C0  7C 08 02 A6 */	mflr r0
/* 801681C4 001651C4  90 01 00 04 */	stw r0, 4(r1)
/* 801681C8 001651C8  94 21 FF B8 */	stwu r1, -0x48(r1)
/* 801681CC 001651CC  93 E1 00 44 */	stw r31, 0x44(r1)
/* 801681D0 001651D0  80 6D 8B 74 */	lwz r3, lbl_80277494@sda21(r13)
/* 801681D4 001651D4  2C 03 00 00 */	cmpwi r3, 0
/* 801681D8 001651D8  41 82 00 08 */	beq lbl_801681E0
/* 801681DC 001651DC  48 00 00 94 */	b lbl_80168270
lbl_801681E0:
/* 801681E0 001651E0  3F E0 80 00 */	lis r31, 0x800030F4@ha
/* 801681E4 001651E4  80 1F 30 F4 */	lwz r0, 0x800030F4@l(r31)
/* 801681E8 001651E8  2C 00 00 00 */	cmpwi r0, 0
/* 801681EC 001651EC  41 82 00 78 */	beq lbl_80168264
/* 801681F0 001651F0  38 60 00 40 */	li r3, 0x40
/* 801681F4 001651F4  38 80 00 20 */	li r4, 0x20
/* 801681F8 001651F8  4B FF E5 E1 */	bl OSAllocFromArenaLo
/* 801681FC 001651FC  80 DF 30 F4 */	lwz r6, 0x30f4(r31)
/* 80168200 00165200  7C 7F 1B 78 */	mr r31, r3
/* 80168204 00165204  7F E4 FB 78 */	mr r4, r31
/* 80168208 00165208  38 61 00 08 */	addi r3, r1, 8
/* 8016820C 0016520C  38 A0 00 40 */	li r5, 0x40
/* 80168210 00165210  38 E0 00 00 */	li r7, 0
/* 80168214 00165214  39 00 00 00 */	li r8, 0
/* 80168218 00165218  48 00 97 1D */	bl DVDReadAbsAsyncPrio
/* 8016821C 0016521C  48 00 00 04 */	b lbl_80168220
lbl_80168220:
/* 80168220 00165220  48 00 00 04 */	b lbl_80168224
lbl_80168224:
/* 80168224 00165224  48 00 00 18 */	b lbl_8016823C
lbl_80168228:
/* 80168228 00165228  48 00 A3 01 */	bl DVDCheckDisk
/* 8016822C 0016522C  2C 03 00 00 */	cmpwi r3, 0
/* 80168230 00165230  40 82 00 0C */	bne lbl_8016823C
/* 80168234 00165234  38 60 00 00 */	li r3, 0
/* 80168238 00165238  48 00 27 81 */	bl __OSDoHotReset
lbl_8016823C:
/* 8016823C 0016523C  38 61 00 08 */	addi r3, r1, 8
/* 80168240 00165240  48 00 9E 3D */	bl DVDGetCommandBlockStatus
/* 80168244 00165244  2C 03 00 00 */	cmpwi r3, 0
/* 80168248 00165248  40 82 FF E0 */	bne lbl_80168228
/* 8016824C 0016524C  3C 60 80 00 */	lis r3, 0x800030F4@ha
/* 80168250 00165250  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 80168254 00165254  80 63 30 F4 */	lwz r3, 0x800030F4@l(r3)
/* 80168258 00165258  7C 03 02 14 */	add r0, r3, r0
/* 8016825C 0016525C  90 0D 8B 74 */	stw r0, lbl_80277494@sda21(r13)
/* 80168260 00165260  48 00 00 0C */	b lbl_8016826C
lbl_80168264:
/* 80168264 00165264  38 00 24 40 */	li r0, 0x2440
/* 80168268 00165268  90 0D 8B 74 */	stw r0, lbl_80277494@sda21(r13)
lbl_8016826C:
/* 8016826C 0016526C  80 6D 8B 74 */	lwz r3, lbl_80277494@sda21(r13)
lbl_80168270:
/* 80168270 00165270  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80168274 00165274  83 E1 00 44 */	lwz r31, 0x44(r1)
/* 80168278 00165278  38 21 00 48 */	addi r1, r1, 0x48
/* 8016827C 0016527C  7C 08 03 A6 */	mtlr r0
/* 80168280 00165280  4E 80 00 20 */	blr 

.global __OSBootDolSimple
__OSBootDolSimple:
/* 80168284 00165284  7C 08 02 A6 */	mflr r0
/* 80168288 00165288  90 01 00 04 */	stw r0, 4(r1)
/* 8016828C 0016528C  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 80168290 00165290  BF 01 01 10 */	stmw r24, 0x110(r1)
/* 80168294 00165294  7C 7B 1B 78 */	mr r27, r3
/* 80168298 00165298  7C 98 23 78 */	mr r24, r4
/* 8016829C 0016529C  7C BC 2B 78 */	mr r28, r5
/* 801682A0 001652A0  7C DD 33 78 */	mr r29, r6
/* 801682A4 001652A4  7C F9 3B 78 */	mr r25, r7
/* 801682A8 001652A8  7D 1A 43 78 */	mr r26, r8
/* 801682AC 001652AC  7D 3E 4B 78 */	mr r30, r9
/* 801682B0 001652B0  48 00 18 A9 */	bl OSDisableInterrupts
/* 801682B4 001652B4  38 60 00 1C */	li r3, 0x1c
/* 801682B8 001652B8  38 80 00 01 */	li r4, 1
/* 801682BC 001652BC  4B FF E5 1D */	bl OSAllocFromArenaLo
/* 801682C0 001652C0  7C 7F 1B 78 */	mr r31, r3
/* 801682C4 001652C4  38 00 00 01 */	li r0, 1
/* 801682C8 001652C8  90 1F 00 00 */	stw r0, 0(r31)
/* 801682CC 001652CC  2C 19 00 00 */	cmpwi r25, 0
/* 801682D0 001652D0  93 1F 00 04 */	stw r24, 4(r31)
/* 801682D4 001652D4  93 9F 00 0C */	stw r28, 0xc(r31)
/* 801682D8 001652D8  93 BF 00 10 */	stw r29, 0x10(r31)
/* 801682DC 001652DC  93 3F 00 14 */	stw r25, 0x14(r31)
/* 801682E0 001652E0  40 82 00 24 */	bne lbl_80168304
/* 801682E4 001652E4  38 60 20 00 */	li r3, 0x2000
/* 801682E8 001652E8  38 80 00 01 */	li r4, 1
/* 801682EC 001652EC  4B FF E4 ED */	bl OSAllocFromArenaLo
/* 801682F0 001652F0  90 7F 00 18 */	stw r3, 0x18(r31)
/* 801682F4 001652F4  7F 44 D3 78 */	mr r4, r26
/* 801682F8 001652F8  7F C5 F3 78 */	mr r5, r30
/* 801682FC 001652FC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 80168300 00165300  4B FF FC 45 */	bl PackArgs
lbl_80168304:
/* 80168304 00165304  48 00 79 F5 */	bl DVDInit
/* 80168308 00165308  38 60 00 01 */	li r3, 1
/* 8016830C 0016530C  48 00 9E 69 */	bl DVDSetAutoInvalidation
/* 80168310 00165310  48 00 9E 75 */	bl DVDResume
/* 80168314 00165314  38 00 00 00 */	li r0, 0
/* 80168318 00165318  3C 60 80 17 */	lis r3, Callback@ha
/* 8016831C 0016531C  90 0D 8B 70 */	stw r0, lbl_80277490@sda21(r13)
/* 80168320 00165320  38 63 81 74 */	addi r3, r3, Callback@l
/* 80168324 00165324  48 00 A2 FD */	bl __DVDPrepareResetAsync
/* 80168328 00165328  38 60 FF E0 */	li r3, -32
/* 8016832C 0016532C  48 00 1B F5 */	bl __OSMaskInterrupts
/* 80168330 00165330  38 60 04 00 */	li r3, 0x400
/* 80168334 00165334  48 00 1C 75 */	bl __OSUnmaskInterrupts
/* 80168338 00165338  48 00 18 35 */	bl OSEnableInterrupts
/* 8016833C 0016533C  48 00 00 04 */	b lbl_80168340
lbl_80168340:
/* 80168340 00165340  48 00 00 04 */	b lbl_80168344
lbl_80168344:
/* 80168344 00165344  48 00 00 18 */	b lbl_8016835C
lbl_80168348:
/* 80168348 00165348  48 00 A1 E1 */	bl DVDCheckDisk
/* 8016834C 0016534C  2C 03 00 00 */	cmpwi r3, 0
/* 80168350 00165350  40 82 00 0C */	bne lbl_8016835C
/* 80168354 00165354  38 60 00 00 */	li r3, 0
/* 80168358 00165358  48 00 26 61 */	bl __OSDoHotReset
lbl_8016835C:
/* 8016835C 0016535C  80 0D 8B 70 */	lwz r0, lbl_80277490@sda21(r13)
/* 80168360 00165360  2C 00 00 01 */	cmpwi r0, 1
/* 80168364 00165364  40 82 FF E4 */	bne lbl_80168348
/* 80168368 00165368  80 0D 8B 24 */	lwz r0, lbl_80277444@sda21(r13)
/* 8016836C 0016536C  2C 00 00 00 */	cmpwi r0, 0
/* 80168370 00165370  40 82 00 7C */	bne lbl_801683EC
/* 80168374 00165374  48 00 A1 AD */	bl DVDGetCurrentDiskID
/* 80168378 00165378  88 03 00 08 */	lbz r0, 8(r3)
/* 8016837C 0016537C  28 00 00 00 */	cmplwi r0, 0
/* 80168380 00165380  41 82 00 0C */	beq lbl_8016838C
/* 80168384 00165384  38 00 00 01 */	li r0, 1
/* 80168388 00165388  48 00 00 08 */	b lbl_80168390
lbl_8016838C:
/* 8016838C 0016538C  38 00 00 00 */	li r0, 0
lbl_80168390:
/* 80168390 00165390  2C 00 00 00 */	cmpwi r0, 0
/* 80168394 00165394  41 82 00 58 */	beq lbl_801683EC
/* 80168398 00165398  38 60 00 00 */	li r3, 0
/* 8016839C 0016539C  48 00 E6 5D */	bl AISetStreamVolLeft
/* 801683A0 001653A0  38 60 00 00 */	li r3, 0
/* 801683A4 001653A4  48 00 E6 81 */	bl AISetStreamVolRight
/* 801683A8 001653A8  38 61 00 DC */	addi r3, r1, 0xdc
/* 801683AC 001653AC  38 80 00 00 */	li r4, 0
/* 801683B0 001653B0  48 00 98 C9 */	bl cbForGetStreamErrorStatusSync
/* 801683B4 001653B4  48 00 00 04 */	b lbl_801683B8
lbl_801683B8:
/* 801683B8 001653B8  48 00 00 04 */	b lbl_801683BC
lbl_801683BC:
/* 801683BC 001653BC  48 00 00 18 */	b lbl_801683D4
lbl_801683C0:
/* 801683C0 001653C0  48 00 A1 69 */	bl DVDCheckDisk
/* 801683C4 001653C4  2C 03 00 00 */	cmpwi r3, 0
/* 801683C8 001653C8  40 82 00 0C */	bne lbl_801683D4
/* 801683CC 001653CC  38 60 00 00 */	li r3, 0
/* 801683D0 001653D0  48 00 25 E9 */	bl __OSDoHotReset
lbl_801683D4:
/* 801683D4 001653D4  38 61 00 DC */	addi r3, r1, 0xdc
/* 801683D8 001653D8  48 00 9C A5 */	bl DVDGetCommandBlockStatus
/* 801683DC 001653DC  2C 03 00 00 */	cmpwi r3, 0
/* 801683E0 001653E0  40 82 FF E0 */	bne lbl_801683C0
/* 801683E4 001653E4  38 60 00 00 */	li r3, 0
/* 801683E8 001653E8  48 00 E3 51 */	bl AISetStreamPlayState
lbl_801683EC:
/* 801683EC 001653EC  38 60 00 20 */	li r3, 0x20
/* 801683F0 001653F0  38 80 00 20 */	li r4, 0x20
/* 801683F4 001653F4  4B FF E3 E5 */	bl OSAllocFromArenaLo
/* 801683F8 001653F8  7C 7E 1B 78 */	mr r30, r3
/* 801683FC 001653FC  4B FF FD C5 */	bl GetApploaderPosition
/* 80168400 00165400  7C 65 1B 78 */	mr r5, r3
/* 80168404 00165404  7F C3 F3 78 */	mr r3, r30
/* 80168408 00165408  38 80 00 20 */	li r4, 0x20
/* 8016840C 0016540C  4B FF FC FD */	bl ReadDisc
/* 80168410 00165410  4B FF FD B1 */	bl GetApploaderPosition
/* 80168414 00165414  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 80168418 00165418  38 A3 00 20 */	addi r5, r3, 0x20
/* 8016841C 0016541C  3C 60 81 20 */	lis r3, 0x8120
/* 80168420 00165420  38 04 00 1F */	addi r0, r4, 0x1f
/* 80168424 00165424  54 04 00 34 */	rlwinm r4, r0, 0, 0, 0x1a
/* 80168428 00165428  4B FF FC E1 */	bl ReadDisc
/* 8016842C 0016542C  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 80168430 00165430  3C 60 81 20 */	lis r3, 0x8120
/* 80168434 00165434  38 04 00 1F */	addi r0, r4, 0x1f
/* 80168438 00165438  54 04 00 34 */	rlwinm r4, r0, 0, 0, 0x1a
/* 8016843C 0016543C  4B FF E7 55 */	bl ICInvalidateRange
/* 80168440 00165440  3C 60 80 21 */	lis r3, lbl_80215550@ha
/* 80168444 00165444  38 83 55 50 */	addi r4, r3, lbl_80215550@l
/* 80168448 00165448  7F C3 F3 78 */	mr r3, r30
/* 8016844C 0016544C  38 A0 00 0A */	li r5, 0xa
/* 80168450 00165450  48 02 A7 4D */	bl strncmp
/* 80168454 00165454  2C 03 00 00 */	cmpwi r3, 0
/* 80168458 00165458  40 81 00 0C */	ble lbl_80168464
/* 8016845C 0016545C  38 00 00 01 */	li r0, 1
/* 80168460 00165460  48 00 00 08 */	b lbl_80168468
lbl_80168464:
/* 80168464 00165464  38 00 00 00 */	li r0, 0
lbl_80168468:
/* 80168468 00165468  2C 00 00 00 */	cmpwi r0, 0
/* 8016846C 0016546C  41 82 01 EC */	beq lbl_80168658
/* 80168470 00165470  3C 1B 00 01 */	addis r0, r27, 1
/* 80168474 00165474  28 00 FF FF */	cmplwi r0, 0xffff
/* 80168478 00165478  40 82 00 B0 */	bne lbl_80168528
/* 8016847C 0016547C  80 6D 8B 74 */	lwz r3, lbl_80277494@sda21(r13)
/* 80168480 00165480  2C 03 00 00 */	cmpwi r3, 0
/* 80168484 00165484  41 82 00 08 */	beq lbl_8016848C
/* 80168488 00165488  48 00 00 94 */	b lbl_8016851C
lbl_8016848C:
/* 8016848C 0016548C  3F 60 80 00 */	lis r27, 0x800030F4@ha
/* 80168490 00165490  80 1B 30 F4 */	lwz r0, 0x800030F4@l(r27)
/* 80168494 00165494  2C 00 00 00 */	cmpwi r0, 0
/* 80168498 00165498  41 82 00 78 */	beq lbl_80168510
/* 8016849C 0016549C  38 60 00 40 */	li r3, 0x40
/* 801684A0 001654A0  38 80 00 20 */	li r4, 0x20
/* 801684A4 001654A4  4B FF E3 35 */	bl OSAllocFromArenaLo
/* 801684A8 001654A8  80 DB 30 F4 */	lwz r6, 0x30f4(r27)
/* 801684AC 001654AC  7C 7B 1B 78 */	mr r27, r3
/* 801684B0 001654B0  7F 64 DB 78 */	mr r4, r27
/* 801684B4 001654B4  38 61 00 5C */	addi r3, r1, 0x5c
/* 801684B8 001654B8  38 A0 00 40 */	li r5, 0x40
/* 801684BC 001654BC  38 E0 00 00 */	li r7, 0
/* 801684C0 001654C0  39 00 00 00 */	li r8, 0
/* 801684C4 001654C4  48 00 94 71 */	bl DVDReadAbsAsyncPrio
/* 801684C8 001654C8  48 00 00 04 */	b lbl_801684CC
lbl_801684CC:
/* 801684CC 001654CC  48 00 00 04 */	b lbl_801684D0
lbl_801684D0:
/* 801684D0 001654D0  48 00 00 18 */	b lbl_801684E8
lbl_801684D4:
/* 801684D4 001654D4  48 00 A0 55 */	bl DVDCheckDisk
/* 801684D8 001654D8  2C 03 00 00 */	cmpwi r3, 0
/* 801684DC 001654DC  40 82 00 0C */	bne lbl_801684E8
/* 801684E0 001654E0  38 60 00 00 */	li r3, 0
/* 801684E4 001654E4  48 00 24 D5 */	bl __OSDoHotReset
lbl_801684E8:
/* 801684E8 001654E8  38 61 00 5C */	addi r3, r1, 0x5c
/* 801684EC 001654EC  48 00 9B 91 */	bl DVDGetCommandBlockStatus
/* 801684F0 001654F0  2C 03 00 00 */	cmpwi r3, 0
/* 801684F4 001654F4  40 82 FF E0 */	bne lbl_801684D4
/* 801684F8 001654F8  3C 60 80 00 */	lis r3, 0x800030F4@ha
/* 801684FC 001654FC  80 1B 00 38 */	lwz r0, 0x38(r27)
/* 80168500 00165500  80 63 30 F4 */	lwz r3, 0x800030F4@l(r3)
/* 80168504 00165504  7C 03 02 14 */	add r0, r3, r0
/* 80168508 00165508  90 0D 8B 74 */	stw r0, lbl_80277494@sda21(r13)
/* 8016850C 0016550C  48 00 00 0C */	b lbl_80168518
lbl_80168510:
/* 80168510 00165510  38 00 24 40 */	li r0, 0x2440
/* 80168514 00165514  90 0D 8B 74 */	stw r0, lbl_80277494@sda21(r13)
lbl_80168518:
/* 80168518 00165518  80 6D 8B 74 */	lwz r3, lbl_80277494@sda21(r13)
lbl_8016851C:
/* 8016851C 0016551C  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 80168520 00165520  7F 63 02 14 */	add r27, r3, r0
/* 80168524 00165524  3B 7B 00 20 */	addi r27, r27, 0x20
lbl_80168528:
/* 80168528 00165528  93 7F 00 08 */	stw r27, 8(r31)
/* 8016852C 0016552C  38 61 00 C0 */	addi r3, r1, 0xc0
/* 80168530 00165530  38 81 00 C4 */	addi r4, r1, 0xc4
/* 80168534 00165534  81 9E 00 10 */	lwz r12, 0x10(r30)
/* 80168538 00165538  38 A1 00 C8 */	addi r5, r1, 0xc8
/* 8016853C 0016553C  7D 88 03 A6 */	mtlr r12
/* 80168540 00165540  4E 80 00 21 */	blrl 
/* 80168544 00165544  38 60 00 1C */	li r3, 0x1c
/* 80168548 00165548  38 80 00 01 */	li r4, 1
/* 8016854C 0016554C  4B FF E2 8D */	bl OSAllocFromArenaLo
/* 80168550 00165550  7C 7B 1B 78 */	mr r27, r3
/* 80168554 00165554  7F 63 DB 78 */	mr r3, r27
/* 80168558 00165558  7F E4 FB 78 */	mr r4, r31
/* 8016855C 0016555C  38 A0 00 1C */	li r5, 0x1c
/* 80168560 00165560  4B E9 D0 6D */	bl memcpy
/* 80168564 00165564  3C 80 80 00 */	lis r4, 0x800030F0@ha
/* 80168568 00165568  81 81 00 C0 */	lwz r12, 0xc0(r1)
/* 8016856C 0016556C  3C 60 80 16 */	lis r3, OSReport@ha
/* 80168570 00165570  93 64 30 F0 */	stw r27, 0x800030F0@l(r4)
/* 80168574 00165574  38 63 78 98 */	addi r3, r3, OSReport@l
/* 80168578 00165578  7D 88 03 A6 */	mtlr r12
/* 8016857C 0016557C  4E 80 00 21 */	blrl 
/* 80168580 00165580  7F 63 DB 78 */	mr r3, r27
/* 80168584 00165584  4B FF E2 4D */	bl OSSetArenaLo
/* 80168588 00165588  48 00 00 04 */	b lbl_8016858C
lbl_8016858C:
/* 8016858C 0016558C  48 00 00 04 */	b lbl_80168590
lbl_80168590:
/* 80168590 00165590  48 00 00 50 */	b lbl_801685E0
lbl_80168594:
/* 80168594 00165594  80 C1 00 D4 */	lwz r6, 0xd4(r1)
/* 80168598 00165598  38 61 00 2C */	addi r3, r1, 0x2c
/* 8016859C 0016559C  80 A1 00 D0 */	lwz r5, 0xd0(r1)
/* 801685A0 001655A0  38 E0 00 00 */	li r7, 0
/* 801685A4 001655A4  80 81 00 CC */	lwz r4, 0xcc(r1)
/* 801685A8 001655A8  39 00 00 00 */	li r8, 0
/* 801685AC 001655AC  48 00 93 89 */	bl DVDReadAbsAsyncPrio
/* 801685B0 001655B0  48 00 00 04 */	b lbl_801685B4
lbl_801685B4:
/* 801685B4 001655B4  48 00 00 04 */	b lbl_801685B8
lbl_801685B8:
/* 801685B8 001655B8  48 00 00 18 */	b lbl_801685D0
lbl_801685BC:
/* 801685BC 001655BC  48 00 9F 6D */	bl DVDCheckDisk
/* 801685C0 001655C0  2C 03 00 00 */	cmpwi r3, 0
/* 801685C4 001655C4  40 82 00 0C */	bne lbl_801685D0
/* 801685C8 001655C8  38 60 00 00 */	li r3, 0
/* 801685CC 001655CC  48 00 23 ED */	bl __OSDoHotReset
lbl_801685D0:
/* 801685D0 001655D0  38 61 00 2C */	addi r3, r1, 0x2c
/* 801685D4 001655D4  48 00 9A A9 */	bl DVDGetCommandBlockStatus
/* 801685D8 001655D8  2C 03 00 00 */	cmpwi r3, 0
/* 801685DC 001655DC  40 82 FF E0 */	bne lbl_801685BC
lbl_801685E0:
/* 801685E0 001655E0  81 81 00 C4 */	lwz r12, 0xc4(r1)
/* 801685E4 001655E4  38 61 00 CC */	addi r3, r1, 0xcc
/* 801685E8 001655E8  38 81 00 D0 */	addi r4, r1, 0xd0
/* 801685EC 001655EC  38 A1 00 D4 */	addi r5, r1, 0xd4
/* 801685F0 001655F0  7D 88 03 A6 */	mtlr r12
/* 801685F4 001655F4  4E 80 00 21 */	blrl 
/* 801685F8 001655F8  2C 03 00 00 */	cmpwi r3, 0
/* 801685FC 001655FC  40 82 FF 98 */	bne lbl_80168594
/* 80168600 00165600  81 81 00 C8 */	lwz r12, 0xc8(r1)
/* 80168604 00165604  7D 88 03 A6 */	mtlr r12
/* 80168608 00165608  4E 80 00 21 */	blrl 
/* 8016860C 0016560C  7C 7C 1B 78 */	mr r28, r3
/* 80168610 00165610  38 60 00 1C */	li r3, 0x1c
/* 80168614 00165614  38 80 00 01 */	li r4, 1
/* 80168618 00165618  4B FF E1 C1 */	bl OSAllocFromArenaLo
/* 8016861C 0016561C  7C 7B 1B 78 */	mr r27, r3
/* 80168620 00165620  7F 63 DB 78 */	mr r3, r27
/* 80168624 00165624  7F E4 FB 78 */	mr r4, r31
/* 80168628 00165628  38 A0 00 1C */	li r5, 0x1c
/* 8016862C 0016562C  4B E9 CF A1 */	bl memcpy
/* 80168630 00165630  3C 80 80 00 */	lis r4, 0x800030F0@ha
/* 80168634 00165634  3C 60 CC 00 */	lis r3, 0xCC003000@ha
/* 80168638 00165638  93 64 30 F0 */	stw r27, 0x800030F0@l(r4)
/* 8016863C 0016563C  38 63 30 00 */	addi r3, r3, 0xCC003000@l
/* 80168640 00165640  38 00 00 07 */	li r0, 7
/* 80168644 00165644  90 03 00 24 */	stw r0, 0x24(r3)
/* 80168648 00165648  48 00 15 11 */	bl OSDisableInterrupts
/* 8016864C 0016564C  7F 83 E3 78 */	mr r3, r28
/* 80168650 00165650  4B FF FA 7D */	bl Run
/* 80168654 00165654  48 00 00 A0 */	b lbl_801686F4
lbl_80168658:
/* 80168658 00165658  3C 80 81 30 */	lis r4, 0x812FDFF0@ha
/* 8016865C 0016565C  93 84 DF F0 */	stw r28, 0x812FDFF0@l(r4)
/* 80168660 00165660  38 00 00 01 */	li r0, 1
/* 80168664 00165664  3C 60 80 00 */	lis r3, 0x800030E2@ha
/* 80168668 00165668  93 A4 DF EC */	stw r29, -0x2014(r4)
/* 8016866C 0016566C  98 03 30 E2 */	stb r0, 0x800030E2@l(r3)
/* 80168670 00165670  4B FF FB 51 */	bl GetApploaderPosition
/* 80168674 00165674  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 80168678 00165678  3C 80 81 30 */	lis r4, 0x8130
/* 8016867C 0016567C  80 BE 00 18 */	lwz r5, 0x18(r30)
/* 80168680 00165680  38 E0 00 00 */	li r7, 0
/* 80168684 00165684  7C C3 02 14 */	add r6, r3, r0
/* 80168688 00165688  38 05 00 1F */	addi r0, r5, 0x1f
/* 8016868C 0016568C  38 C6 00 20 */	addi r6, r6, 0x20
/* 80168690 00165690  54 05 00 34 */	rlwinm r5, r0, 0, 0, 0x1a
/* 80168694 00165694  38 61 00 8C */	addi r3, r1, 0x8c
/* 80168698 00165698  39 00 00 00 */	li r8, 0
/* 8016869C 0016569C  48 00 92 99 */	bl DVDReadAbsAsyncPrio
/* 801686A0 001656A0  48 00 00 04 */	b lbl_801686A4
lbl_801686A4:
/* 801686A4 001656A4  48 00 00 04 */	b lbl_801686A8
lbl_801686A8:
/* 801686A8 001656A8  48 00 00 18 */	b lbl_801686C0
lbl_801686AC:
/* 801686AC 001656AC  48 00 9E 7D */	bl DVDCheckDisk
/* 801686B0 001656B0  2C 03 00 00 */	cmpwi r3, 0
/* 801686B4 001656B4  40 82 00 0C */	bne lbl_801686C0
/* 801686B8 001656B8  38 60 00 00 */	li r3, 0
/* 801686BC 001656BC  48 00 22 FD */	bl __OSDoHotReset
lbl_801686C0:
/* 801686C0 001656C0  38 61 00 8C */	addi r3, r1, 0x8c
/* 801686C4 001656C4  48 00 99 B9 */	bl DVDGetCommandBlockStatus
/* 801686C8 001656C8  2C 03 00 00 */	cmpwi r3, 0
/* 801686CC 001656CC  40 82 FF E0 */	bne lbl_801686AC
/* 801686D0 001656D0  80 9E 00 18 */	lwz r4, 0x18(r30)
/* 801686D4 001656D4  3C 60 81 30 */	lis r3, 0x8130
/* 801686D8 001656D8  38 04 00 1F */	addi r0, r4, 0x1f
/* 801686DC 001656DC  54 04 00 34 */	rlwinm r4, r0, 0, 0, 0x1a
/* 801686E0 001656E0  4B FF E4 B1 */	bl ICInvalidateRange
/* 801686E4 001656E4  48 00 14 75 */	bl OSDisableInterrupts
/* 801686E8 001656E8  4B FF E4 DD */	bl ICFlashInvalidate
/* 801686EC 001656EC  3C 60 81 30 */	lis r3, 0x8130
/* 801686F0 001656F0  4B FF F9 DD */	bl Run
lbl_801686F4:
/* 801686F4 001656F4  BB 01 01 10 */	lmw r24, 0x110(r1)
/* 801686F8 001656F8  80 01 01 34 */	lwz r0, 0x134(r1)
/* 801686FC 001656FC  38 21 01 30 */	addi r1, r1, 0x130
/* 80168700 00165700  7C 08 03 A6 */	mtlr r0
/* 80168704 00165704  4E 80 00 20 */	blr 

.global __OSBootDol
__OSBootDol:
/* 80168708 00165708  7C 08 02 A6 */	mflr r0
/* 8016870C 0016570C  90 01 00 04 */	stw r0, 4(r1)
/* 80168710 00165710  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80168714 00165714  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80168718 00165718  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8016871C 0016571C  93 A1 00 34 */	stw r29, 0x34(r1)
/* 80168720 00165720  7C 7F 1B 78 */	mr r31, r3
/* 80168724 00165724  7C 9D 23 78 */	mr r29, r4
/* 80168728 00165728  7C BE 2B 78 */	mr r30, r5
/* 8016872C 0016572C  38 61 00 18 */	addi r3, r1, 0x18
/* 80168730 00165730  38 81 00 14 */	addi r4, r1, 0x14
/* 80168734 00165734  48 00 20 6D */	bl OSGetSaveRegion
/* 80168738 00165738  7F E5 FB 78 */	mr r5, r31
/* 8016873C 0016573C  4C C6 31 82 */	crclr 6
/* 80168740 00165740  38 61 00 1C */	addi r3, r1, 0x1c
/* 80168744 00165744  38 8D 81 38 */	addi r4, r13, lbl_80276A58@sda21
/* 80168748 00165748  48 02 84 59 */	bl sprintf
/* 8016874C 0016574C  28 1E 00 00 */	cmplwi r30, 0
/* 80168750 00165750  3B E0 00 00 */	li r31, 0
/* 80168754 00165754  41 82 00 28 */	beq lbl_8016877C
/* 80168758 00165758  7F C3 F3 78 */	mr r3, r30
/* 8016875C 0016575C  48 00 00 04 */	b lbl_80168760
lbl_80168760:
/* 80168760 00165760  48 00 00 04 */	b lbl_80168764
lbl_80168764:
/* 80168764 00165764  48 00 00 0C */	b lbl_80168770
lbl_80168768:
/* 80168768 00165768  38 63 00 04 */	addi r3, r3, 4
/* 8016876C 0016576C  3B FF 00 01 */	addi r31, r31, 1
lbl_80168770:
/* 80168770 00165770  80 03 00 00 */	lwz r0, 0(r3)
/* 80168774 00165774  28 00 00 00 */	cmplwi r0, 0
/* 80168778 00165778  40 82 FF F0 */	bne lbl_80168768
lbl_8016877C:
/* 8016877C 0016577C  38 1F 00 02 */	addi r0, r31, 2
/* 80168780 00165780  54 03 10 3A */	slwi r3, r0, 2
/* 80168784 00165784  38 80 00 01 */	li r4, 1
/* 80168788 00165788  4B FF E0 51 */	bl OSAllocFromArenaLo
/* 8016878C 0016578C  38 01 00 1C */	addi r0, r1, 0x1c
/* 80168790 00165790  90 03 00 00 */	stw r0, 0(r3)
/* 80168794 00165794  38 BE 00 04 */	addi r5, r30, 4
/* 80168798 00165798  38 C3 00 04 */	addi r6, r3, 4
/* 8016879C 0016579C  48 00 00 04 */	b lbl_801687A0
lbl_801687A0:
/* 801687A0 001657A0  39 1F 00 01 */	addi r8, r31, 1
/* 801687A4 001657A4  2C 08 00 01 */	cmpwi r8, 1
/* 801687A8 001657A8  38 88 FF FF */	addi r4, r8, -1
/* 801687AC 001657AC  40 81 00 C0 */	ble lbl_8016886C
/* 801687B0 001657B0  54 80 E8 FE */	srwi r0, r4, 3
/* 801687B4 001657B4  28 00 00 00 */	cmplwi r0, 0
/* 801687B8 001657B8  7C 09 03 A6 */	mtctr r0
/* 801687BC 001657BC  41 82 00 94 */	beq lbl_80168850
/* 801687C0 001657C0  48 00 00 04 */	b lbl_801687C4
lbl_801687C4:
/* 801687C4 001657C4  80 05 FF FC */	lwz r0, -4(r5)
/* 801687C8 001657C8  38 A5 00 04 */	addi r5, r5, 4
/* 801687CC 001657CC  90 06 00 00 */	stw r0, 0(r6)
/* 801687D0 001657D0  38 C6 00 04 */	addi r6, r6, 4
/* 801687D4 001657D4  80 05 FF FC */	lwz r0, -4(r5)
/* 801687D8 001657D8  38 A5 00 04 */	addi r5, r5, 4
/* 801687DC 001657DC  90 06 00 00 */	stw r0, 0(r6)
/* 801687E0 001657E0  38 C6 00 04 */	addi r6, r6, 4
/* 801687E4 001657E4  80 05 FF FC */	lwz r0, -4(r5)
/* 801687E8 001657E8  38 A5 00 04 */	addi r5, r5, 4
/* 801687EC 001657EC  90 06 00 00 */	stw r0, 0(r6)
/* 801687F0 001657F0  38 C6 00 04 */	addi r6, r6, 4
/* 801687F4 001657F4  80 05 FF FC */	lwz r0, -4(r5)
/* 801687F8 001657F8  38 A5 00 04 */	addi r5, r5, 4
/* 801687FC 001657FC  90 06 00 00 */	stw r0, 0(r6)
/* 80168800 00165800  38 C6 00 04 */	addi r6, r6, 4
/* 80168804 00165804  80 05 FF FC */	lwz r0, -4(r5)
/* 80168808 00165808  38 A5 00 04 */	addi r5, r5, 4
/* 8016880C 0016580C  90 06 00 00 */	stw r0, 0(r6)
/* 80168810 00165810  38 C6 00 04 */	addi r6, r6, 4
/* 80168814 00165814  80 05 FF FC */	lwz r0, -4(r5)
/* 80168818 00165818  38 A5 00 04 */	addi r5, r5, 4
/* 8016881C 0016581C  90 06 00 00 */	stw r0, 0(r6)
/* 80168820 00165820  38 C6 00 04 */	addi r6, r6, 4
/* 80168824 00165824  80 05 FF FC */	lwz r0, -4(r5)
/* 80168828 00165828  38 A5 00 04 */	addi r5, r5, 4
/* 8016882C 0016582C  90 06 00 00 */	stw r0, 0(r6)
/* 80168830 00165830  38 C6 00 04 */	addi r6, r6, 4
/* 80168834 00165834  80 05 FF FC */	lwz r0, -4(r5)
/* 80168838 00165838  38 A5 00 04 */	addi r5, r5, 4
/* 8016883C 0016583C  90 06 00 00 */	stw r0, 0(r6)
/* 80168840 00165840  38 C6 00 04 */	addi r6, r6, 4
/* 80168844 00165844  42 00 FF 80 */	bdnz lbl_801687C4
/* 80168848 00165848  70 84 00 07 */	andi. r4, r4, 7
/* 8016884C 0016584C  41 82 00 20 */	beq lbl_8016886C
lbl_80168850:
/* 80168850 00165850  7C 89 03 A6 */	mtctr r4
/* 80168854 00165854  48 00 00 04 */	b lbl_80168858
lbl_80168858:
/* 80168858 00165858  80 05 FF FC */	lwz r0, -4(r5)
/* 8016885C 0016585C  38 A5 00 04 */	addi r5, r5, 4
/* 80168860 00165860  90 06 00 00 */	stw r0, 0(r6)
/* 80168864 00165864  38 C6 00 04 */	addi r6, r6, 4
/* 80168868 00165868  42 00 FF F0 */	bdnz lbl_80168858
lbl_8016886C:
/* 8016886C 0016586C  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 80168870 00165870  7C 69 1B 78 */	mr r9, r3
/* 80168874 00165874  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 80168878 00165878  7F A4 EB 78 */	mr r4, r29
/* 8016887C 0016587C  38 60 FF FF */	li r3, -1
/* 80168880 00165880  38 E0 00 00 */	li r7, 0
/* 80168884 00165884  4B FF FA 01 */	bl __OSBootDolSimple
/* 80168888 00165888  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8016888C 0016588C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80168890 00165890  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80168894 00165894  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 80168898 00165898  38 21 00 40 */	addi r1, r1, 0x40
/* 8016889C 0016589C  7C 08 03 A6 */	mtlr r0
/* 801688A0 001658A0  4E 80 00 20 */	blr 
