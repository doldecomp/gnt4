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
	$(BUILD_DIR)/asm/sysdolphin/particle.o          \
	$(BUILD_DIR)/asm/sysdolphin/psinterpret.o       \
	$(BUILD_DIR)/asm/sysdolphin/generator.o         \
	$(BUILD_DIR)/asm/sysdolphin/psdisp.o            \
	$(BUILD_DIR)/asm/sysdolphin/psdisptev.o         \
	$(BUILD_DIR)/asm/sysdolphin/psappsrt.o          \
	$(BUILD_DIR)/asm/sysdolphin/pslist.o            \
	$(BUILD_DIR)/asm/sysdolphin/audio.o             \
	$(BUILD_DIR)/asm/sysdolphin/dobj.o              \
	$(BUILD_DIR)/asm/sysdolphin/tobj.o              \
	$(BUILD_DIR)/asm/sysdolphin/state.o             \
	$(BUILD_DIR)/asm/sysdolphin/tev.o               \
	$(BUILD_DIR)/asm/sysdolphin/mobj.o              \
	$(BUILD_DIR)/asm/sysdolphin/aobj.o              \
	$(BUILD_DIR)/asm/sysdolphin/lobj.o              \
	$(BUILD_DIR)/asm/sysdolphin/cobj.o              \
	$(BUILD_DIR)/asm/sysdolphin/fobj.o              \
	$(BUILD_DIR)/asm/sysdolphin/pobj.o              \
	$(BUILD_DIR)/asm/sysdolphin/jobj.o              \
	$(BUILD_DIR)/asm/sysdolphin/displayfunc.o       \
	$(BUILD_DIR)/asm/sysdolphin/initialize.o        \
	$(BUILD_DIR)/asm/sysdolphin/video.o             \
	$(BUILD_DIR)/asm/sysdolphin/controller.o        \
	$(BUILD_DIR)/asm/sysdolphin/rumble.o            \
	$(BUILD_DIR)/asm/sysdolphin/spline.o            \
	$(BUILD_DIR)/asm/sysdolphin/mtx.o               \
	$(BUILD_DIR)/asm/sysdolphin/util.o              \
	$(BUILD_DIR)/asm/sysdolphin/objalloc.o          \
	$(BUILD_DIR)/asm/sysdolphin/robj.o              \
	$(BUILD_DIR)/asm/sysdolphin/id.o                \
	$(BUILD_DIR)/asm/sysdolphin/wobj.o              \
	$(BUILD_DIR)/asm/sysdolphin/fog.o               \
	$(BUILD_DIR)/asm/sysdolphin/perf.o              \
	$(BUILD_DIR)/asm/sysdolphin/list.o              \
	$(BUILD_DIR)/asm/sysdolphin/object.o            \
	$(BUILD_DIR)/asm/sysdolphin/memory.o            \
	$(BUILD_DIR)/asm/sysdolphin/shadow.o            \
	$(BUILD_DIR)/asm/sysdolphin/archive.o           \
	$(BUILD_DIR)/src/sysdolphin/random.o            \
	$(BUILD_DIR)/asm/sysdolphin/bytecode.o          \
	$(BUILD_DIR)/asm/sysdolphin/class.o             \
	$(BUILD_DIR)/asm/sysdolphin/hash.o              \
	$(BUILD_DIR)/asm/sysdolphin/texp.o              \
	$(BUILD_DIR)/asm/sysdolphin/texpdag.o           \
	$(BUILD_DIR)/asm/sysdolphin/texpopt.o           \
	$(BUILD_DIR)/asm/sysdolphin/debug.o             \
	$(BUILD_DIR)/asm/sysdolphin/code_801d5ed8.o     \
	$(BUILD_DIR)/asm/sysdolphin/gobjproc.o          \
	$(BUILD_DIR)/asm/sysdolphin/gobjplink.o         \
	$(BUILD_DIR)/asm/sysdolphin/gobjgxlink.o        \
	$(BUILD_DIR)/asm/sysdolphin/gobjobject.o        \
	$(BUILD_DIR)/asm/sysdolphin/gobjuserdata.o      \
	$(BUILD_DIR)/asm/sysdolphin/gobj.o              \
	$(BUILD_DIR)/asm/hvqm/hvqm4dec.o                \
	$(BUILD_DIR)/asm/hvqm/hvqm4decsnd.o             \
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
