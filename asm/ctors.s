.section .ctors, "wa"  # 0x801FD800 - 0x801FD820

.balign 8

.global lbl_801FD800
lbl_801FD800:
	.incbin "baserom.dol", 0x1FA800, 0x20
