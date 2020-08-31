#include "unlock.h"

// 0x8000ABA8 - 0x8000AF18

#pragma push
#pragma peephole off
#pragma optimization_level 1

/**
 * This file contains methods for setting and retrieving unlocks in the game. This includes unlocks such as
 * which characters or stages are available.
 */

u32 func_8000ABA8(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    return *(save_data_ptr + 0x58) & mask;
}

void func_8000ABBC(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    *(save_data_ptr + 0x58) = *(save_data_ptr + 0x58) | mask;
}

u32 func_8000ABD4(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    return *(save_data_ptr + 0x57) & mask;
}

u32 func_8000ABE8(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    return *(save_data_ptr + 0x56) & mask;
}

void func_8000ABFC(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    *(save_data_ptr + 0x57) = *(save_data_ptr + 0x57) | mask;
}

void func_8000AC14(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    *(save_data_ptr + 0x56) = *(save_data_ptr + 0x56) | mask;
}

u32 func_8000AC2C(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    return *(save_data_ptr + 0x55) & mask;
}

u32 func_8000AC40(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    return *(save_data_ptr + 0x54) & mask;
}

void func_8000AC54(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    *(save_data_ptr + 0x55) = *(save_data_ptr + 0x55) | mask;
}

void func_8000AC6C(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    *(save_data_ptr + 0x54) = *(save_data_ptr + 0x54) | mask;
}

u32 func_8000AC84(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    return *(save_data_ptr + 0x53) & mask;
}

u32 func_8000AC98(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    return *(save_data_ptr + 0x52) & mask;
}

void func_8000ACAC(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    *(save_data_ptr + 0x53) = *(save_data_ptr + 0x53) | mask;
}

void func_8000ACC4(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    *(save_data_ptr + 0x52) = *(save_data_ptr + 0x52) | mask;
}

u32 func_8000ACDC(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    return *(save_data_ptr + 0x51) & mask;
}

u32 func_8000ACF0(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    return *(save_data_ptr + 0x50) & mask;
}

u32 func_8000AD04(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    return *(save_data_ptr + 0x4F) & mask;
}

void func_8000AD18(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    *(save_data_ptr + 0x51) = *(save_data_ptr + 0x51) | mask;
}

void func_8000AD30(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    *(save_data_ptr + 0x50) = *(save_data_ptr + 0x50) | mask;
}

void func_8000AD48(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    *(save_data_ptr + 0x4F) = *(save_data_ptr + 0x4F) | mask;
}

u32 func_8000AD60(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    return *(save_data_ptr + 0x4E) & mask;
}

u32 func_8000AD74(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    return *(save_data_ptr + 0x4D) & mask;
}

void func_8000AD88(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    *(save_data_ptr + 0x4E) = *(save_data_ptr + 0x4E) | mask;
}

void func_8000ADA0(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    *(save_data_ptr + 0x4D) = *(save_data_ptr + 0x4D) | mask;
}

u32 func_8000ADB8(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    return *(save_data_ptr + 0x4C) & mask;
}

u32 func_8000ADCC(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    return *(save_data_ptr + 0x4B) & mask;
}

void func_8000ADE0(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    *(save_data_ptr + 0x4C) = *(save_data_ptr + 0x4C) | mask;
}

void func_8000ADF8(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    *(save_data_ptr + 0x4B) = *(save_data_ptr + 0x4B) | mask;
}

u32 func_8000AE10(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    return *(save_data_ptr + 0x4A) & mask;
}

u32 func_8000AE24(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    return *(save_data_ptr + 0x49) & mask;
}

void func_8000AE38(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    *(save_data_ptr + 0x4A) = *(save_data_ptr + 0x4A) | mask;
}

void func_8000AE50(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    *(save_data_ptr + 0x49) = *(save_data_ptr + 0x49) | mask;
}

u32 func_8000AE68(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    return *(save_data_ptr + 0x48) & mask;
}

u32 func_8000AE7C(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    return *(save_data_ptr + 0x47) & mask;
}

void func_8000AE90(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    *(save_data_ptr + 0x48) = *(save_data_ptr + 0x48) | mask;
}

void func_8000AEA8(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    *(save_data_ptr + 0x47) = *(save_data_ptr + 0x47) | mask;
}

u32 func_8000AEC0(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    return *(save_data_ptr + 0x46) & mask;
}

u32 func_8000AED4(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    return *(save_data_ptr + 0x45) & mask;
}

void func_8000AEE8(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    *(save_data_ptr + 0x46) = *(save_data_ptr + 0x46) | mask;
}

void func_8000AF00(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    *(save_data_ptr + 0x45) = *(save_data_ptr + 0x45) | mask;
}
#pragma pop
