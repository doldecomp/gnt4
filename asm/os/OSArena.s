.include "macros.inc"

.section .text  # 0x801667B8 - 0x80166804

.global OSGetArenaHi
OSGetArenaHi:
/* 801667B8 001637B8  80 6D 8B 68 */	lwz r3, lbl_80277488-_SDA_BASE_(r13)
/* 801667BC 001637BC  4E 80 00 20 */	blr 

.global OSGetArenaLo
OSGetArenaLo:
/* 801667C0 001637C0  80 6D 81 28 */	lwz r3, lbl_80276A48-_SDA_BASE_(r13)
/* 801667C4 001637C4  4E 80 00 20 */	blr 

.global OSSetArenaHi
OSSetArenaHi:
/* 801667C8 001637C8  90 6D 8B 68 */	stw r3, lbl_80277488-_SDA_BASE_(r13)
/* 801667CC 001637CC  4E 80 00 20 */	blr 

.global OSSetArenaLo
OSSetArenaLo:
/* 801667D0 001637D0  90 6D 81 28 */	stw r3, lbl_80276A48-_SDA_BASE_(r13)
/* 801667D4 001637D4  4E 80 00 20 */	blr 

.global OSAllocFromArenaLo
OSAllocFromArenaLo:
/* 801667D8 001637D8  80 0D 81 28 */	lwz r0, lbl_80276A48-_SDA_BASE_(r13)
/* 801667DC 001637DC  38 84 FF FF */	addi r4, r4, -1
/* 801667E0 001637E0  7C 85 20 F8 */	nor r5, r4, r4
/* 801667E4 001637E4  7C 00 22 14 */	add r0, r0, r4
/* 801667E8 001637E8  7C A6 00 38 */	and r6, r5, r0
/* 801667EC 001637EC  7C 06 1A 14 */	add r0, r6, r3
/* 801667F0 001637F0  7C 00 22 14 */	add r0, r0, r4
/* 801667F4 001637F4  7C A0 00 38 */	and r0, r5, r0
/* 801667F8 001637F8  90 0D 81 28 */	stw r0, lbl_80276A48-_SDA_BASE_(r13)
/* 801667FC 001637FC  7C C3 33 78 */	mr r3, r6
/* 80166800 00163800  4E 80 00 20 */	blr 
