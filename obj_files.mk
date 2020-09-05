# Linker order for every file, passed to the Metrowerks linker.

INIT_O_FILES := 						            \
    $(BUILD_DIR)/asm/init.o

CTORS_O_FILES :=                                    \
    $(BUILD_DIR)/asm/ctors.o

DTORS_O_FILES :=                                    \
    $(BUILD_DIR)/asm/dtors.o

TEXT_O_FILES := 						            \
	$(BUILD_DIR)/asm/text_1.o                       \
	$(BUILD_DIR)/src/unlock.o                       \
	$(BUILD_DIR)/asm/text_2.o                       \
	$(BUILD_DIR)/src/sysdolphin/rand.o                     \
	$(BUILD_DIR)/asm/text_3.o                       \

RODATA_O_FILES :=                                   \
    $(BUILD_DIR)/asm/rodata.o

DATA_O_FILES :=                                     \
    $(BUILD_DIR)/asm/data.o

SDATA_O_FILES :=                                    \
    $(BUILD_DIR)/asm/sdata.o

SDATA2_O_FILES :=                                   \
    $(BUILD_DIR)/asm/sdata2.o

BSS_O_FILES :=                                      \
    $(BUILD_DIR)/asm/bss.o

SBSS_O_FILES :=                                     \
    $(BUILD_DIR)/asm/sbss.o

SBSS2_O_FILES :=                                    \
    $(BUILD_DIR)/asm/sbss2.o
