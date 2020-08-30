#include "unlock.h"

// 0x8000ABA8 - 0x8000AF18

asm u32 func_8000ABA8(u32)
{
    nofralloc
    /* 8000ABA8 00007BA8  3C 80 80 22 */	lis r4, 0x8022
    /* 8000ABAC 00007BAC  38 84 31 E8 */	addi r4, r4, 0x31E8
    /* 8000ABB0 00007BB0  80 04 01 60 */	lwz r0, 0x160(r4)
    /* 8000ABB4 00007BB4  7C 03 18 38 */	and r3, r0, r3
    /* 8000ABB8 00007BB8  4E 80 00 20 */	blr 
}

asm void func_8000ABBC(u32)
{
    nofralloc
    /* 8000ABBC 00007BBC  3C 80 80 22 */	lis r4, 0x8022
    /* 8000ABC0 00007BC0  38 84 31 E8 */	addi r4, r4, 0x31E8
    /* 8000ABC4 00007BC4  80 04 01 60 */	lwz r0, 0x160(r4)
    /* 8000ABC8 00007BC8  7C 00 1B 78 */	or r0, r0, r3
    /* 8000ABCC 00007BCC  90 04 01 60 */	stw r0, 0x160(r4)
    /* 8000ABD0 00007BD0  4E 80 00 20 */	blr 
}

asm u32 func_8000ABD4(u32)
{
    nofralloc
    /* 8000ABD4 00007BD4  3C 80 80 22 */	lis r4, 0x8022
    /* 8000ABD8 00007BD8  38 84 31 E8 */	addi r4, r4, 0x31E8
    /* 8000ABDC 00007BDC  80 04 01 5C */	lwz r0, 0x15c(r4)
    /* 8000ABE0 00007BE0  7C 03 18 38 */	and r3, r0, r3
    /* 8000ABE4 00007BE4  4E 80 00 20 */	blr 
}

asm u32 func_8000ABE8(u32)
{
    nofralloc
    /* 8000ABE8 00007BE8  3C 80 80 22 */	lis r4, 0x8022
    /* 8000ABEC 00007BEC  38 84 31 E8 */	addi r4, r4, 0x31E8
    /* 8000ABF0 00007BF0  80 04 01 58 */	lwz r0, 0x158(r4)
    /* 8000ABF4 00007BF4  7C 03 18 38 */	and r3, r0, r3
    /* 8000ABF8 00007BF8  4E 80 00 20 */	blr 
}

asm void func_8000ABFC(u32)
{
    nofralloc
    /* 8000ABFC 00007BFC  3C 80 80 22 */	lis r4, 0x8022
    /* 8000AC00 00007C00  38 84 31 E8 */	addi r4, r4, 0x31E8
    /* 8000AC04 00007C04  80 04 01 5C */	lwz r0, 0x15c(r4)
    /* 8000AC08 00007C08  7C 00 1B 78 */	or r0, r0, r3
    /* 8000AC0C 00007C0C  90 04 01 5C */	stw r0, 0x15c(r4)
    /* 8000AC10 00007C10  4E 80 00 20 */	blr 
}

asm void func_8000AC14(u32)
{
    nofralloc
    /* 8000AC14 00007C14  3C 80 80 22 */	lis r4, 0x8022
    /* 8000AC18 00007C18  38 84 31 E8 */	addi r4, r4, 0x31E8
    /* 8000AC1C 00007C1C  80 04 01 58 */	lwz r0, 0x158(r4)
    /* 8000AC20 00007C20  7C 00 1B 78 */	or r0, r0, r3
    /* 8000AC24 00007C24  90 04 01 58 */	stw r0, 0x158(r4)
    /* 8000AC28 00007C28  4E 80 00 20 */	blr 
}

asm u32 func_8000AC2C(u32)
{
    nofralloc
    /* 8000AC2C 00007C2C  3C 80 80 22 */	lis r4, 0x8022
    /* 8000AC30 00007C30  38 84 31 E8 */	addi r4, r4, 0x31E8
    /* 8000AC34 00007C34  80 04 01 54 */	lwz r0, 0x154(r4)
    /* 8000AC38 00007C38  7C 03 18 38 */	and r3, r0, r3
    /* 8000AC3C 00007C3C  4E 80 00 20 */	blr 
}

asm u32 func_8000AC40(u32)
{
    nofralloc
    /* 8000AC40 00007C40  3C 80 80 22 */	lis r4, 0x8022
    /* 8000AC44 00007C44  38 84 31 E8 */	addi r4, r4, 0x31E8
    /* 8000AC48 00007C48  80 04 01 50 */	lwz r0, 0x150(r4)
    /* 8000AC4C 00007C4C  7C 03 18 38 */	and r3, r0, r3
    /* 8000AC50 00007C50  4E 80 00 20 */	blr 
}

asm void func_8000AC54(u32)
{
    nofralloc
    /* 8000AC54 00007C54  3C 80 80 22 */	lis r4, 0x8022
    /* 8000AC58 00007C58  38 84 31 E8 */	addi r4, r4, 0x31E8
    /* 8000AC5C 00007C5C  80 04 01 54 */	lwz r0, 0x154(r4)
    /* 8000AC60 00007C60  7C 00 1B 78 */	or r0, r0, r3
    /* 8000AC64 00007C64  90 04 01 54 */	stw r0, 0x154(r4)
    /* 8000AC68 00007C68  4E 80 00 20 */	blr 
}

asm void func_8000AC6C(u32)
{
    nofralloc
    /* 8000AC6C 00007C6C  3C 80 80 22 */	lis r4, 0x8022
    /* 8000AC70 00007C70  38 84 31 E8 */	addi r4, r4, 0x31E8
    /* 8000AC74 00007C74  80 04 01 50 */	lwz r0, 0x150(r4)
    /* 8000AC78 00007C78  7C 00 1B 78 */	or r0, r0, r3
    /* 8000AC7C 00007C7C  90 04 01 50 */	stw r0, 0x150(r4)
    /* 8000AC80 00007C80  4E 80 00 20 */	blr 
}

asm u32 func_8000AC84(u32)
{
    nofralloc
    /* 8000AC84 00007C84  3C 80 80 22 */	lis r4, 0x8022
    /* 8000AC88 00007C88  38 84 31 E8 */	addi r4, r4, 0x31E8
    /* 8000AC8C 00007C8C  80 04 01 4C */	lwz r0, 0x14c(r4)
    /* 8000AC90 00007C90  7C 03 18 38 */	and r3, r0, r3
    /* 8000AC94 00007C94  4E 80 00 20 */	blr 
}

asm u32 func_8000AC98(u32)
{
    nofralloc
    /* 8000AC98 00007C98  3C 80 80 22 */	lis r4, 0x8022
    /* 8000AC9C 00007C9C  38 84 31 E8 */	addi r4, r4, 0x31E8
    /* 8000ACA0 00007CA0  80 04 01 48 */	lwz r0, 0x148(r4)
    /* 8000ACA4 00007CA4  7C 03 18 38 */	and r3, r0, r3
    /* 8000ACA8 00007CA8  4E 80 00 20 */	blr 
}

asm void func_8000ACAC(u32)
{
    nofralloc
    /* 8000ACAC 00007CAC  3C 80 80 22 */	lis r4, 0x8022
    /* 8000ACB0 00007CB0  38 84 31 E8 */	addi r4, r4, 0x31E8
    /* 8000ACB4 00007CB4  80 04 01 4C */	lwz r0, 0x14c(r4)
    /* 8000ACB8 00007CB8  7C 00 1B 78 */	or r0, r0, r3
    /* 8000ACBC 00007CBC  90 04 01 4C */	stw r0, 0x14c(r4)
    /* 8000ACC0 00007CC0  4E 80 00 20 */	blr 
}

asm void func_8000ACC4(u32)
{
    nofralloc
    /* 8000ACC4 00007CC4  3C 80 80 22 */	lis r4, 0x8022
    /* 8000ACC8 00007CC8  38 84 31 E8 */	addi r4, r4, 0x31E8
    /* 8000ACCC 00007CCC  80 04 01 48 */	lwz r0, 0x148(r4)
    /* 8000ACD0 00007CD0  7C 00 1B 78 */	or r0, r0, r3
    /* 8000ACD4 00007CD4  90 04 01 48 */	stw r0, 0x148(r4)
    /* 8000ACD8 00007CD8  4E 80 00 20 */	blr 
}

asm u32 func_8000ACDC(u32)
{
    nofralloc
    /* 8000ACDC 00007CDC  3C 80 80 22 */	lis r4, 0x8022
    /* 8000ACE0 00007CE0  38 84 31 E8 */	addi r4, r4, 0x31E8
    /* 8000ACE4 00007CE4  80 04 01 44 */	lwz r0, 0x144(r4)
    /* 8000ACE8 00007CE8  7C 03 18 38 */	and r3, r0, r3
    /* 8000ACEC 00007CEC  4E 80 00 20 */	blr 
}

asm u32 func_8000ACF0(u32)
{
    nofralloc
    /* 8000ACF0 00007CF0  3C 80 80 22 */	lis r4, 0x8022
    /* 8000ACF4 00007CF4  38 84 31 E8 */	addi r4, r4, 0x31E8
    /* 8000ACF8 00007CF8  80 04 01 40 */	lwz r0, 0x140(r4)
    /* 8000ACFC 00007CFC  7C 03 18 38 */	and r3, r0, r3
    /* 8000AD00 00007D00  4E 80 00 20 */	blr 
}

asm u32 func_8000AD04(u32)
{
    nofralloc
    /* 8000AD04 00007D04  3C 80 80 22 */	lis r4, 0x8022
    /* 8000AD08 00007D08  38 84 31 E8 */	addi r4, r4, 0x31E8
    /* 8000AD0C 00007D0C  80 04 01 3C */	lwz r0, 0x13c(r4)
    /* 8000AD10 00007D10  7C 03 18 38 */	and r3, r0, r3
    /* 8000AD14 00007D14  4E 80 00 20 */	blr 
}

asm void func_8000AD18(u32)
{
    nofralloc
    /* 8000AD18 00007D18  3C 80 80 22 */	lis r4, 0x8022
    /* 8000AD1C 00007D1C  38 84 31 E8 */	addi r4, r4, 0x31E8
    /* 8000AD20 00007D20  80 04 01 44 */	lwz r0, 0x144(r4)
    /* 8000AD24 00007D24  7C 00 1B 78 */	or r0, r0, r3
    /* 8000AD28 00007D28  90 04 01 44 */	stw r0, 0x144(r4)
    /* 8000AD2C 00007D2C  4E 80 00 20 */	blr 
}

asm void func_8000AD30(u32)
{
    nofralloc
    /* 8000AD30 00007D30  3C 80 80 22 */	lis r4, 0x8022
    /* 8000AD34 00007D34  38 84 31 E8 */	addi r4, r4, 0x31E8
    /* 8000AD38 00007D38  80 04 01 40 */	lwz r0, 0x140(r4)
    /* 8000AD3C 00007D3C  7C 00 1B 78 */	or r0, r0, r3
    /* 8000AD40 00007D40  90 04 01 40 */	stw r0, 0x140(r4)
    /* 8000AD44 00007D44  4E 80 00 20 */	blr 
}

asm void func_8000AD48(u32)
{
    nofralloc
    /* 8000AD48 00007D48  3C 80 80 22 */	lis r4, 0x8022
    /* 8000AD4C 00007D4C  38 84 31 E8 */	addi r4, r4, 0x31E8
    /* 8000AD50 00007D50  80 04 01 3C */	lwz r0, 0x13c(r4)
    /* 8000AD54 00007D54  7C 00 1B 78 */	or r0, r0, r3
    /* 8000AD58 00007D58  90 04 01 3C */	stw r0, 0x13c(r4)
    /* 8000AD5C 00007D5C  4E 80 00 20 */	blr 
}

asm u32 func_8000AD60(u32)
{
    nofralloc
    /* 8000AD60 00007D60  3C 80 80 22 */	lis r4, 0x8022
    /* 8000AD64 00007D64  38 84 31 E8 */	addi r4, r4, 0x31E8
    /* 8000AD68 00007D68  80 04 01 38 */	lwz r0, 0x138(r4)
    /* 8000AD6C 00007D6C  7C 03 18 38 */	and r3, r0, r3
    /* 8000AD70 00007D70  4E 80 00 20 */	blr 
}

asm u32 func_8000AD74(u32)
{
    nofralloc
    /* 8000AD74 00007D74  3C 80 80 22 */	lis r4, 0x8022
    /* 8000AD78 00007D78  38 84 31 E8 */	addi r4, r4, 0x31E8
    /* 8000AD7C 00007D7C  80 04 01 34 */	lwz r0, 0x134(r4)
    /* 8000AD80 00007D80  7C 03 18 38 */	and r3, r0, r3
    /* 8000AD84 00007D84  4E 80 00 20 */	blr 
}

asm void func_8000AD88(u32)
{
    nofralloc
    /* 8000AD88 00007D88  3C 80 80 22 */	lis r4, 0x8022
    /* 8000AD8C 00007D8C  38 84 31 E8 */	addi r4, r4, 0x31E8
    /* 8000AD90 00007D90  80 04 01 38 */	lwz r0, 0x138(r4)
    /* 8000AD94 00007D94  7C 00 1B 78 */	or r0, r0, r3
    /* 8000AD98 00007D98  90 04 01 38 */	stw r0, 0x138(r4)
    /* 8000AD9C 00007D9C  4E 80 00 20 */	blr 
}

asm void func_8000ADA0(u32)
{
    nofralloc
    /* 8000ADA0 00007DA0  3C 80 80 22 */	lis r4, 0x8022
    /* 8000ADA4 00007DA4  38 84 31 E8 */	addi r4, r4, 0x31E8
    /* 8000ADA8 00007DA8  80 04 01 34 */	lwz r0, 0x134(r4)
    /* 8000ADAC 00007DAC  7C 00 1B 78 */	or r0, r0, r3
    /* 8000ADB0 00007DB0  90 04 01 34 */	stw r0, 0x134(r4)
    /* 8000ADB4 00007DB4  4E 80 00 20 */	blr 
}

asm u32 func_8000ADB8(u32)
{
    nofralloc
    /* 8000ADB8 00007DB8  3C 80 80 22 */	lis r4, 0x8022
    /* 8000ADBC 00007DBC  38 84 31 E8 */	addi r4, r4, 0x31E8
    /* 8000ADC0 00007DC0  80 04 01 30 */	lwz r0, 0x130(r4)
    /* 8000ADC4 00007DC4  7C 03 18 38 */	and r3, r0, r3
    /* 8000ADC8 00007DC8  4E 80 00 20 */	blr 
}

asm u32 func_8000ADCC(u32)
{
    nofralloc
    /* 8000ADCC 00007DCC  3C 80 80 22 */	lis r4, 0x8022
    /* 8000ADD0 00007DD0  38 84 31 E8 */	addi r4, r4, 0x31E8
    /* 8000ADD4 00007DD4  80 04 01 2C */	lwz r0, 0x12c(r4)
    /* 8000ADD8 00007DD8  7C 03 18 38 */	and r3, r0, r3
    /* 8000ADDC 00007DDC  4E 80 00 20 */	blr 
}

asm void func_8000ADE0(u32)
{
    nofralloc
    /* 8000ADE0 00007DE0  3C 80 80 22 */	lis r4, 0x8022
    /* 8000ADE4 00007DE4  38 84 31 E8 */	addi r4, r4, 0x31E8
    /* 8000ADE8 00007DE8  80 04 01 30 */	lwz r0, 0x130(r4)
    /* 8000ADEC 00007DEC  7C 00 1B 78 */	or r0, r0, r3
    /* 8000ADF0 00007DF0  90 04 01 30 */	stw r0, 0x130(r4)
    /* 8000ADF4 00007DF4  4E 80 00 20 */	blr 
}

asm void func_8000ADF8(u32)
{
    nofralloc
    /* 8000ADF8 00007DF8  3C 80 80 22 */	lis r4, 0x8022
    /* 8000ADFC 00007DFC  38 84 31 E8 */	addi r4, r4, 0x31E8
    /* 8000AE00 00007E00  80 04 01 2C */	lwz r0, 0x12c(r4)
    /* 8000AE04 00007E04  7C 00 1B 78 */	or r0, r0, r3
    /* 8000AE08 00007E08  90 04 01 2C */	stw r0, 0x12c(r4)
    /* 8000AE0C 00007E0C  4E 80 00 20 */	blr 
}

asm u32 func_8000AE10(u32)
{
    nofralloc
    /* 8000AE10 00007E10  3C 80 80 22 */	lis r4, 0x8022
    /* 8000AE14 00007E14  38 84 31 E8 */	addi r4, r4, 0x31E8
    /* 8000AE18 00007E18  80 04 01 28 */	lwz r0, 0x128(r4)
    /* 8000AE1C 00007E1C  7C 03 18 38 */	and r3, r0, r3
    /* 8000AE20 00007E20  4E 80 00 20 */	blr 
}

asm u32 func_8000AE24(u32)
{
    nofralloc
    /* 8000AE24 00007E24  3C 80 80 22 */	lis r4, 0x8022
    /* 8000AE28 00007E28  38 84 31 E8 */	addi r4, r4, 0x31E8
    /* 8000AE2C 00007E2C  80 04 01 24 */	lwz r0, 0x124(r4)
    /* 8000AE30 00007E30  7C 03 18 38 */	and r3, r0, r3
    /* 8000AE34 00007E34  4E 80 00 20 */	blr 
}

asm void func_8000AE38(u32)
{
    nofralloc
    /* 8000AE38 00007E38  3C 80 80 22 */	lis r4, 0x8022
    /* 8000AE3C 00007E3C  38 84 31 E8 */	addi r4, r4, 0x31E8
    /* 8000AE40 00007E40  80 04 01 28 */	lwz r0, 0x128(r4)
    /* 8000AE44 00007E44  7C 00 1B 78 */	or r0, r0, r3
    /* 8000AE48 00007E48  90 04 01 28 */	stw r0, 0x128(r4)
    /* 8000AE4C 00007E4C  4E 80 00 20 */	blr 
}

asm void func_8000AE50(u32)
{
    nofralloc
    /* 8000AE50 00007E50  3C 80 80 22 */	lis r4, 0x8022
    /* 8000AE54 00007E54  38 84 31 E8 */	addi r4, r4, 0x31E8
    /* 8000AE58 00007E58  80 04 01 24 */	lwz r0, 0x124(r4)
    /* 8000AE5C 00007E5C  7C 00 1B 78 */	or r0, r0, r3
    /* 8000AE60 00007E60  90 04 01 24 */	stw r0, 0x124(r4)
    /* 8000AE64 00007E64  4E 80 00 20 */	blr 
}

asm u32 func_8000AE68(u32)
{
    nofralloc
    /* 8000AE68 00007E68  3C 80 80 22 */	lis r4, 0x8022
    /* 8000AE6C 00007E6C  38 84 31 E8 */	addi r4, r4, 0x31E8
    /* 8000AE70 00007E70  80 04 01 20 */	lwz r0, 0x120(r4)
    /* 8000AE74 00007E74  7C 03 18 38 */	and r3, r0, r3
    /* 8000AE78 00007E78  4E 80 00 20 */	blr 
}

asm u32 func_8000AE7C(u32)
{
    nofralloc
    /* 8000AE7C 00007E7C  3C 80 80 22 */	lis r4, 0x8022
    /* 8000AE80 00007E80  38 84 31 E8 */	addi r4, r4, 0x31E8
    /* 8000AE84 00007E84  80 04 01 1C */	lwz r0, 0x11c(r4)
    /* 8000AE88 00007E88  7C 03 18 38 */	and r3, r0, r3
    /* 8000AE8C 00007E8C  4E 80 00 20 */	blr 
}

asm void func_8000AE90(u32)
{
    nofralloc
    /* 8000AE90 00007E90  3C 80 80 22 */	lis r4, 0x8022
    /* 8000AE94 00007E94  38 84 31 E8 */	addi r4, r4, 0x31E8
    /* 8000AE98 00007E98  80 04 01 20 */	lwz r0, 0x120(r4)
    /* 8000AE9C 00007E9C  7C 00 1B 78 */	or r0, r0, r3
    /* 8000AEA0 00007EA0  90 04 01 20 */	stw r0, 0x120(r4)
    /* 8000AEA4 00007EA4  4E 80 00 20 */	blr 
}

asm void func_8000AEA8(u32)
{
    nofralloc
    /* 8000AEA8 00007EA8  3C 80 80 22 */	lis r4, 0x8022
    /* 8000AEAC 00007EAC  38 84 31 E8 */	addi r4, r4, 0x31E8
    /* 8000AEB0 00007EB0  80 04 01 1C */	lwz r0, 0x11c(r4)
    /* 8000AEB4 00007EB4  7C 00 1B 78 */	or r0, r0, r3
    /* 8000AEB8 00007EB8  90 04 01 1C */	stw r0, 0x11c(r4)
    /* 8000AEBC 00007EBC  4E 80 00 20 */	blr 
}

asm u32 func_8000AEC0(u32)
{
    nofralloc
    /* 8000AEC0 00007EC0  3C 80 80 22 */	lis r4, 0x8022
    /* 8000AEC4 00007EC4  38 84 31 E8 */	addi r4, r4, 0x31E8
    /* 8000AEC8 00007EC8  80 04 01 18 */	lwz r0, 0x118(r4)
    /* 8000AECC 00007ECC  7C 03 18 38 */	and r3, r0, r3
    /* 8000AED0 00007ED0  4E 80 00 20 */	blr 
}

asm u32 func_8000AED4(u32)
{
    nofralloc
    /* 8000AED4 00007ED4  3C 80 80 22 */	lis r4, 0x8022
    /* 8000AED8 00007ED8  38 84 31 E8 */	addi r4, r4, 0x31E8
    /* 8000AEDC 00007EDC  80 04 01 14 */	lwz r0, 0x114(r4)
    /* 8000AEE0 00007EE0  7C 03 18 38 */	and r3, r0, r3
    /* 8000AEE4 00007EE4  4E 80 00 20 */	blr 
}

asm void func_8000AEE8(u32)
{
    nofralloc
    /* 8000AEE8 00007EE8  3C 80 80 22 */	lis r4, 0x8022
    /* 8000AEEC 00007EEC  38 84 31 E8 */	addi r4, r4, 0x31E8
    /* 8000AEF0 00007EF0  80 04 01 18 */	lwz r0, 0x118(r4)
    /* 8000AEF4 00007EF4  7C 00 1B 78 */	or r0, r0, r3
    /* 8000AEF8 00007EF8  90 04 01 18 */	stw r0, 0x118(r4)
    /* 8000AEFC 00007EFC  4E 80 00 20 */	blr 
}

asm void func_8000AF00(u32)
{
    nofralloc
    /* 8000AF00 00007F00  3C 80 80 22 */	lis r4, 0x8022
    /* 8000AF04 00007F04  38 84 31 E8 */	addi r4, r4, 0x31E8
    /* 8000AF08 00007F08  80 04 01 14 */	lwz r0, 0x114(r4)
    /* 8000AF0C 00007F0C  7C 00 1B 78 */	or r0, r0, r3
    /* 8000AF10 00007F10  90 04 01 14 */	stw r0, 0x114(r4)
    /* 8000AF14 00007F14  4E 80 00 20 */	blr 
}
