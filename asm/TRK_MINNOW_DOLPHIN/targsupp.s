.include "macros.inc"

.section .text  # 0x8018D430 - 0x8018D450

.global TRKAccessFile
TRKAccessFile:
/* 8018D430 0018A430  0F E0 00 00 */	twui r0, 0
/* 8018D434 0018A434  4E 80 00 20 */	blr 

.global TRKOpenFile
TRKOpenFile:
/* 8018D438 0018A438  0F E0 00 00 */	twui r0, 0
/* 8018D43C 0018A43C  4E 80 00 20 */	blr 

.global TRKCloseFile
TRKCloseFile:
/* 8018D440 0018A440  0F E0 00 00 */	twui r0, 0
/* 8018D444 0018A444  4E 80 00 20 */	blr 

.global TRKPositionFile
TRKPositionFile:
/* 8018D448 0018A448  0F E0 00 00 */	twui r0, 0
/* 8018D44C 0018A44C  4E 80 00 20 */	blr 
