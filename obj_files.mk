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
	$(BUILD_DIR)/asm/initialize.o                   \
	$(BUILD_DIR)/asm/video.o                        \
	$(BUILD_DIR)/asm/hsdbase_1.o                    \
	$(BUILD_DIR)/src/sysdolphin/random.o            \
	$(BUILD_DIR)/asm/hsdbase_2.o                    \
	$(BUILD_DIR)/asm/code_801d5ed8.o                \
	$(BUILD_DIR)/asm/gobjproc.o                     \
	$(BUILD_DIR)/asm/gobjplink.o                    \
	$(BUILD_DIR)/asm/gobjgxlink.o                   \
	$(BUILD_DIR)/asm/gobjobject.o                   \
	$(BUILD_DIR)/asm/gobjuserdata.o                 \
	$(BUILD_DIR)/asm/gobj.o                         \
	$(BUILD_DIR)/asm/hvqm4dec.o                     \
	$(BUILD_DIR)/asm/hvqm4decsnd.o                  \
	$(BUILD_DIR)/asm/musyx.o                        \

RODATA_O_FILES :=                                   \
    $(BUILD_DIR)/asm/rodata.o

DATA_O_FILES :=                                     \
    $(BUILD_DIR)/asm/data.o

SDATA_O_FILES :=                                    \
    $(BUILD_DIR)/asm/sdata.o

SDATA2_1_O_FILES :=                                 \
    $(BUILD_DIR)/asm/sdata2_1.o

SDATA2_2_O_FILES :=                                 \
    $(BUILD_DIR)/asm/sdata2_2.o 

BSS_O_FILES :=                                      \
    $(BUILD_DIR)/asm/bss.o

SBSS_O_FILES :=                                     \
    $(BUILD_DIR)/asm/sbss.o

SBSS2_O_FILES :=                                    \
    $(BUILD_DIR)/asm/sbss2.o
