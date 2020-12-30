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

/**
 * 0x00000001 Jirobo's Voice Samples Unlocked
 * 0x00000002 Kidomaru's Voice Samples Unlocked
 * 0x00000004 Sakon's Voice Samples Unlocked
 * 0x00000008 Tayuya's Voice Samples Unlocked
 * 0x00000010 Kisame's Voice Samples Unlocked
 * 0x00000020 CS2 Sasuke's Voice Samples Unlocked
 * 0x00000040 OTK Naruto's Voice Samples Unlocked
 * 0x00000080 Kabuto's Voice Samples Unlocked
 * 0x00000100 Awakened Hinata's Voice Samples Unlocked
 */
u32 get_voice_samples_2(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    return *(save_data_ptr + 0x55) & mask;
}

/**
 * 0x00000002 Sasuke's Voice Samples Unlocked
 * 0x00000004 Haku's Voice Samples Unlocked
 * 0x00000008 Kakashi's Voice Samples Unlocked
 * 0x00000010 Lee's Voice Samples Unlocked
 * 0x00000020 Iruka's Voice Samples Unlocked
 * 0x00000040 Zabuza's Voice Samples Unlocked
 * 0x00000080 Sakura's Voice Samples Unlocked
 * 0x00000100 Naruto's Voice Samples Unlocked
 * 0x00000200 Ino's Voice Samples Unlocked
 * 0x00000400 Shikamaru's Voice Samples Unlocked
 * 0x00000800 Neji's Voice Samples Unlocked
 * 0x00001000 Hinata's Voice Samples Unlocked
 * 0x00002000 Might Guy's Voice Samples Unlocked
 * 0x00004000 Kankuro's Voice Samples Unlocked
 * 0x00010000 Kiba's Voice Samples Unlocked
 * 0x00040000 Gaara's Voice Samples Unlocked
 * 0x00080000 Orochimaru's Voice Samples Unlocked
 * 0x00200000 Mizuki's Voice Samples Unlocked
 * 0x00400000 Anko's Voice Samples Unlocked
 * 0x00800000 Jiraiya's Voice Samples Unlocked
 * 0x01000000 Choji's Voice Samples Unlocked
 * 0x02000000 Tenten's Voice Samples Unlocked
 * 0x04000000 Temari's Voice Samples Unlocked
 * 0x08000000 Shino's Voice Samples Unlocked
 * 0x10000000 Itachi's Voice Samples Unlocked
 * 0x20000000 Tsunade's Voice Samples Unlocked
 * 0x40000000 Sarutobi's Voice Samples Unlocked
 * 0x80000000 Kimimaro's Voice Samples Unlocked
 */
u32 get_voice_samples_1(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    return *(save_data_ptr + 0x54) & mask;
}

/**
 * See getter
 */
void set_voice_samples_2(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    *(save_data_ptr + 0x55) = *(save_data_ptr + 0x55) | mask;
}

/**
 * See getter
 */
void set_voice_samples_1(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    *(save_data_ptr + 0x54) = *(save_data_ptr + 0x54) | mask;
}

/**
 * 0x00000001 Jirobo's File Unlocked
 * 0x00000002 Kidomaru's File Unlocked
 * 0x00000004 Sakon's File Unlocked
 * 0x00000008 Tayuya's File Unlocked
 * 0x00000010 Kisame's File Unlocked
 * 0x00000020 CS2 Sasuke's File Unlocked
 * 0x00000040 OTK Naruto's File Unlocked
 * 0x00000080 Kabuto's File Unlocked
 * 0x00000100 Awakened Hinata's File Unlocked
 */
u32 get_chr_file_2(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    return *(save_data_ptr + 0x53) & mask;
}

/**
 * 0x00000002 Sasuke's File Unlocked
 * 0x00000004 Haku's File Unlocked
 * 0x00000008 Kakashi's File Unlocked
 * 0x00000010 Lee's File Unlocked
 * 0x00000020 Iruka's File Unlocked
 * 0x00000040 Zabuza's File Unlocked
 * 0x00000080 Sakura's File Unlocked
 * 0x00000100 Naruto's File Unlocked
 * 0x00000200 Ino's File Unlocked
 * 0x00000400 Shikamaru's File Unlocked
 * 0x00000800 Neji's File Unlocked
 * 0x00001000 Hinata's File Unlocked
 * 0x00002000 Might Guy's File Unlocked
 * 0x00004000 Kankuro's File Unlocked
 * 0x00010000 Kiba's File Unlocked
 * 0x00040000 Gaara's File Unlocked
 * 0x00080000 Orochimaru's File Unlocked
 * 0x00200000 Mizuki's File Unlocked
 * 0x00400000 Anko's File Unlocked
 * 0x00800000 Jiraiya's File Unlocked
 * 0x01000000 Choji's File Unlocked
 * 0x02000000 Tenten's File Unlocked
 * 0x04000000 Temari's File Unlocked
 * 0x08000000 Shino's File Unlocked
 * 0x10000000 Itachi's File Unlocked
 * 0x20000000 Tsunade's File Unlocked
 * 0x40000000 Sarutobi's File Unlocked
 * 0x80000000 Kimimaro's File Unlocked
 */
u32 get_chr_file_1(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    return *(save_data_ptr + 0x52) & mask;
}

/**
 * See getter
 */
void set_chr_file_2(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    *(save_data_ptr + 0x53) = *(save_data_ptr + 0x53) | mask;
}

/**
 * See getter
 */
void set_chr_file_1(u32 mask)
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

/**
 * 0x00000001 Jirobo Unlocked
 * 0x00000002 Kidomaru Unlocked
 * 0x00000004 Sakon Unlocked
 * 0x00000008 Tayuya Unlocked
 * 0x00000010 Kisame Unlocked
 * 0x00000020 CS2 Sasuke Unlocked
 * 0x00000040 OTK Naruto Unlocked
 * 0x00000080 Kabuto Unlocked
 * 0x00000100 Awakened Hinata Unlocked
 */
u32 get_chr_unlocked_2(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    return *(save_data_ptr + 0x4C) & mask;
}
/**
 * 0x00000002 Sasuke Unlocked
 * 0x00000004 Haku Unlocked
 * 0x00000008 Kakashi Unlocked
 * 0x00000010 Lee Unlocked
 * 0x00000020 Iruka Unlocked
 * 0x00000040 Zabuza Unlocked
 * 0x00000080 Sakura Unlocked
 * 0x00000100 Naruto Unlocked
 * 0x00000200 Ino Unlocked
 * 0x00000400 Shikamaru Unlocked
 * 0x00000800 Neji Unlocked
 * 0x00001000 Hinata Unlocked
 * 0x00002000 Might Guy Unlocked
 * 0x00004000 Kankuro Unlocked
 * 0x00010000 Kiba Unlocked
 * 0x00040000 Gaara Unlocked
 * 0x00080000 Orochimaru Unlocked
 * 0x00200000 Mizuki Unlocked
 * 0x00400000 Anko Unlocked
 * 0x00800000 Jiraiya Unlocked
 * 0x01000000 Choji Unlocked
 * 0x02000000 Tenten Unlocked
 * 0x04000000 Temari Unlocked
 * 0x08000000 Shino Unlocked
 * 0x10000000 Itachi Unlocked
 * 0x20000000 Tsunade Unlocked
 * 0x40000000 Sarutobi Unlocked
 * 0x80000000 Kimimaro Unlocked
 */
u32 get_chr_unlocked_1(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    return *(save_data_ptr + 0x4B) & mask;
}

/**
 * See getter
 */
void set_chr_unlocked_2(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    *(save_data_ptr + 0x4C) = *(save_data_ptr + 0x4C) | mask;
}

/**
 * See getter
 */
void set_chr_unlocked_1(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    *(save_data_ptr + 0x4B) = *(save_data_ptr + 0x4B) | mask;
}

u32 func_8000AE10(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    return *(save_data_ptr + 0x4A) & mask;
}

/**
 * 0x00000001 Watching Mode Unlocked
 * 0x00000002 Kumite Unlocked
 * 0x00000004 Damage 4 Unlocked
 * 0x00000008 Difficult 4 Unlocked
 * 0x00000010 Sound Test Unlocked (BGM)
 * 0x00000020 Sound Test Unlocked (Sound Effects)
 * 0x00000040 Story Backgrounds Unlocked
 * 0x00000080 Play Data Unlocked
 * 0x00000400 2P Survival Unlocked
 * 0x00000800 Wallpaper Option Unlocked
 * 0x00001000 Handicap Unlocked
 * 0x00002000 Extra Menu Unlocked
 */
u32 get_options_unlocked(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    return *(save_data_ptr + 0x49) & mask;
}

/**
 * See getter
 */
void func_8000AE38(u32 mask)
{
    u32* save_data_ptr = (u32*) 0x802231E8;
    *(save_data_ptr + 0x4A) = *(save_data_ptr + 0x4A) | mask;
}

/**
 * See getter
 */
void set_options_unlocked(u32 mask)
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
