# Linker order for every file, passed to the Metrowerks linker.

INIT_O_FILES := 						                       \
    $(BUILD_DIR)/asm/init.o

CTORS_O_FILES :=                                               \
    $(BUILD_DIR)/asm/ctors.o

TEXT_O_FILES := 						                       \
	$(BUILD_DIR)/asm/text_1.o                                  \
	$(BUILD_DIR)/src/unlock.o                                  \
	$(BUILD_DIR)/asm/text_2.o                                  \
	$(BUILD_DIR)/asm/base/PPCArch.o                            \
	$(BUILD_DIR)/asm/os/OS.o                                   \
	$(BUILD_DIR)/asm/os/OSAlarm.o                              \
	$(BUILD_DIR)/asm/os/OSAlloc.o                              \
	$(BUILD_DIR)/asm/os/OSArena.o                              \
	$(BUILD_DIR)/asm/os/OSAudioSystem.o                        \
	$(BUILD_DIR)/asm/os/OSCache.o                              \
	$(BUILD_DIR)/asm/os/OSContext.o                            \
	$(BUILD_DIR)/asm/os/OSError.o                              \
	$(BUILD_DIR)/asm/os/OSExec.o                               \
	$(BUILD_DIR)/asm/os/OSFont.o                               \
	$(BUILD_DIR)/asm/os/OSInterrupt.o                          \
	$(BUILD_DIR)/asm/os/OSLink.o                               \
	$(BUILD_DIR)/asm/os/OSMemory.o                             \
	$(BUILD_DIR)/asm/os/OSMutex.o                              \
	$(BUILD_DIR)/asm/os/OSReboot.o                             \
	$(BUILD_DIR)/asm/os/OSReset.o                              \
	$(BUILD_DIR)/asm/os/OSResetSW.o                            \
	$(BUILD_DIR)/asm/os/OSRtc.o                                \
	$(BUILD_DIR)/asm/os/OSSync.o                               \
	$(BUILD_DIR)/asm/os/OSThread.o                             \
	$(BUILD_DIR)/asm/os/OSTime.o                               \
	$(BUILD_DIR)/asm/os/__start.o                              \
	$(BUILD_DIR)/asm/os/__ppc_eabi_init.o                      \
	$(BUILD_DIR)/asm/db/db.o                                   \
	$(BUILD_DIR)/asm/mtx/mtx.o                                 \
	$(BUILD_DIR)/asm/mtx/mtxvec.o                              \
	$(BUILD_DIR)/asm/mtx/mtx44.o                               \
	$(BUILD_DIR)/asm/mtx/vec.o                                 \
	$(BUILD_DIR)/asm/dvd/dvdlow.o                              \
	$(BUILD_DIR)/asm/dvd/dvdfs.o                               \
	$(BUILD_DIR)/asm/dvd/dvd.o                                 \
	$(BUILD_DIR)/asm/dvd/dvdqueue.o                            \
	$(BUILD_DIR)/asm/dvd/dvderror.o                            \
	$(BUILD_DIR)/asm/dvd/dvdidutils.o                          \
	$(BUILD_DIR)/asm/dvd/dvdFatal.o                            \
	$(BUILD_DIR)/asm/dvd/fstload.o                             \
	$(BUILD_DIR)/asm/vi/vi.o                                   \
	$(BUILD_DIR)/asm/pad/Pad.o                                 \
	$(BUILD_DIR)/asm/ai/ai.o                                   \
	$(BUILD_DIR)/asm/ar/ar.o                                   \
	$(BUILD_DIR)/asm/ar/arq.o                                  \
	$(BUILD_DIR)/asm/dsp/dsp.o                                 \
	$(BUILD_DIR)/asm/dsp/dsp_debug.o                           \
	$(BUILD_DIR)/asm/dsp/dsp_task.o                            \
	$(BUILD_DIR)/asm/card/CARDBios.o                           \
	$(BUILD_DIR)/asm/card/CARDUnlock.o                         \
	$(BUILD_DIR)/asm/card/CARDRdwr.o                           \
	$(BUILD_DIR)/asm/card/CARDBlock.o                          \
	$(BUILD_DIR)/asm/card/CARDDir.o                            \
	$(BUILD_DIR)/asm/card/CARDCheck.o                          \
	$(BUILD_DIR)/asm/card/CARDMount.o                          \
	$(BUILD_DIR)/asm/card/CARDFormat.o                         \
	$(BUILD_DIR)/asm/card/CARDOpen.o                           \
	$(BUILD_DIR)/asm/card/CARDCreate.o                         \
	$(BUILD_DIR)/asm/card/CARDRead.o                           \
	$(BUILD_DIR)/asm/card/CARDWrite.o                          \
	$(BUILD_DIR)/asm/card/CARDDelete.o                         \
	$(BUILD_DIR)/asm/card/CARDStat.o                           \
	$(BUILD_DIR)/asm/card/CARDNet.o                            \
	$(BUILD_DIR)/asm/gx/GXInit.o                               \
	$(BUILD_DIR)/asm/gx/GXFifo.o                               \
	$(BUILD_DIR)/asm/gx/GXAttr.o                               \
	$(BUILD_DIR)/asm/gx/GXMisc.o                               \
	$(BUILD_DIR)/asm/gx/GXGeometry.o                           \
	$(BUILD_DIR)/asm/gx/GXFrameBuf.o                           \
	$(BUILD_DIR)/asm/gx/GXLight.o                              \
	$(BUILD_DIR)/asm/gx/GXTexture.o                            \
	$(BUILD_DIR)/asm/gx/GXBump.o                               \
	$(BUILD_DIR)/asm/gx/GXTev.o                                \
	$(BUILD_DIR)/asm/gx/GXPixel.o                              \
	$(BUILD_DIR)/asm/gx/GXDisplayList.o                        \
	$(BUILD_DIR)/asm/gx/GXTransform.o                          \
	$(BUILD_DIR)/asm/gx/GXPerf.o                               \
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/mainloop.o             \
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/nubevent.o             \
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/msg.o                  \
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/msgbuf.o               \
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/serpoll.o              \
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/usr_put.o              \
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/dispatch.o             \
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/msghndlr.o             \
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/support.o              \
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/mutex_TRK.o            \
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/notify.o               \
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/flush_cache.o          \
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/mem_TRK.o              \
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/targimpl.o             \
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/targsupp.o             \
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/dolphin_trk.o          \
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/mpc_7xx_603e.o         \
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/main_TRK.o             \
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/dolphin_trk_glue.o     \
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/targcont.o             \
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/target_options.o       \
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/mslsupp.o              \
	$(BUILD_DIR)/asm/PPCEABI/Runtime/__va_arg.o                \
	$(BUILD_DIR)/asm/PPCEABI/Runtime/global_destructor_chain.o \
	$(BUILD_DIR)/asm/PPCEABI/Runtime/runtime.o                 \
	$(BUILD_DIR)/asm/PPCEABI/Runtime/GCN_mem_alloc.o           \
	$(BUILD_DIR)/asm/PPCEABI/MSL_C/abort_exit.o                \
	$(BUILD_DIR)/asm/PPCEABI/MSL_C/alloc.o                     \
	$(BUILD_DIR)/asm/PPCEABI/MSL_C/ansi_files.o                \
	$(BUILD_DIR)/asm/PPCEABI/MSL_C/ansi_fp.o                   \
	$(BUILD_DIR)/asm/PPCEABI/MSL_C/buffer_io.o                 \
	$(BUILD_DIR)/asm/PPCEABI/MSL_C/ctype.o                     \
	$(BUILD_DIR)/asm/PPCEABI/MSL_C/direct_io.o                 \
	$(BUILD_DIR)/asm/PPCEABI/MSL_C/file_io.o                   \
	$(BUILD_DIR)/asm/PPCEABI/MSL_C/FILE_POS.o                  \
	$(BUILD_DIR)/asm/PPCEABI/MSL_C/mbstring.o                  \
	$(BUILD_DIR)/asm/PPCEABI/MSL_C/mem.o                       \
	$(BUILD_DIR)/asm/PPCEABI/MSL_C/mem_funcs.o                 \
	$(BUILD_DIR)/asm/PPCEABI/MSL_C/misc_io.o                   \
	$(BUILD_DIR)/asm/PPCEABI/MSL_C/printf.o                    \
	$(BUILD_DIR)/asm/PPCEABI/MSL_C/rand.o                      \
	$(BUILD_DIR)/asm/PPCEABI/MSL_C/string.o                    \
	$(BUILD_DIR)/asm/PPCEABI/MSL_C/uart_console_io.o           \
	$(BUILD_DIR)/asm/PPCEABI/MSL_C/wchar_io.o                  \
	$(BUILD_DIR)/asm/PPCEABI/MSL_C/e_acos.o                    \
	$(BUILD_DIR)/asm/PPCEABI/MSL_C/e_asin.o                    \
	$(BUILD_DIR)/asm/PPCEABI/MSL_C/e_atan2.o                   \
	$(BUILD_DIR)/asm/PPCEABI/MSL_C/e_exp.o                     \
	$(BUILD_DIR)/asm/PPCEABI/MSL_C/e_fmod.o                    \
	$(BUILD_DIR)/asm/PPCEABI/MSL_C/e_log.o                     \
	$(BUILD_DIR)/asm/PPCEABI/MSL_C/e_pow.o                     \
	$(BUILD_DIR)/asm/PPCEABI/MSL_C/e_rem_pio2.o                \
	$(BUILD_DIR)/asm/PPCEABI/MSL_C/k_cos.o                     \
	$(BUILD_DIR)/asm/PPCEABI/MSL_C/k_rem_pio2.o                \
	$(BUILD_DIR)/asm/PPCEABI/MSL_C/k_sin.o                     \
	$(BUILD_DIR)/asm/PPCEABI/MSL_C/k_tan.o                     \
	$(BUILD_DIR)/asm/PPCEABI/MSL_C/s_atan.o                    \
	$(BUILD_DIR)/asm/PPCEABI/MSL_C/s_copysign.o                \
	$(BUILD_DIR)/asm/PPCEABI/MSL_C/s_cos.o                     \
	$(BUILD_DIR)/asm/PPCEABI/MSL_C/s_floor.o                   \
	$(BUILD_DIR)/asm/PPCEABI/MSL_C/s_frexp.o                   \
	$(BUILD_DIR)/asm/PPCEABI/MSL_C/s_ldexp.o                   \
	$(BUILD_DIR)/asm/PPCEABI/MSL_C/s_modf.o                    \
	$(BUILD_DIR)/asm/PPCEABI/MSL_C/s_sin.o                     \
	$(BUILD_DIR)/asm/PPCEABI/MSL_C/s_tan.o                     \
	$(BUILD_DIR)/asm/PPCEABI/MSL_C/w_acos.o                    \
	$(BUILD_DIR)/asm/PPCEABI/MSL_C/w_asin.o                    \
	$(BUILD_DIR)/asm/PPCEABI/MSL_C/w_atan2.o                   \
	$(BUILD_DIR)/asm/PPCEABI/MSL_C/w_exp.o                     \
	$(BUILD_DIR)/asm/PPCEABI/MSL_C/w_fmod.o                    \
	$(BUILD_DIR)/asm/PPCEABI/MSL_C/w_log.o                     \
	$(BUILD_DIR)/asm/PPCEABI/MSL_C/w_pow.o                     \
	$(BUILD_DIR)/asm/PPCEABI/MSL_C/math_ppc.o                  \
	$(BUILD_DIR)/asm/exi/AmcExi2Stubs.o                        \
	$(BUILD_DIR)/asm/exi/odenotstub.o                          \
	$(BUILD_DIR)/asm/exi/DebuggerDriver.o                      \
	$(BUILD_DIR)/asm/exi/EXIBios.o                             \
	$(BUILD_DIR)/asm/exi/EXIUart.o                             \
	$(BUILD_DIR)/asm/si/SIBios.o                               \
	$(BUILD_DIR)/asm/si/SISamplingRate.o                       \
	$(BUILD_DIR)/asm/sysdolphin/particle.o                     \
	$(BUILD_DIR)/asm/sysdolphin/psinterpret.o                  \
	$(BUILD_DIR)/asm/sysdolphin/generator.o                    \
	$(BUILD_DIR)/asm/sysdolphin/psdisp.o                       \
	$(BUILD_DIR)/asm/sysdolphin/psdisptev.o                    \
	$(BUILD_DIR)/asm/sysdolphin/psappsrt.o                     \
	$(BUILD_DIR)/asm/sysdolphin/pslist.o                       \
	$(BUILD_DIR)/asm/sysdolphin/audio.o                        \
	$(BUILD_DIR)/asm/sysdolphin/dobj.o                         \
	$(BUILD_DIR)/asm/sysdolphin/tobj.o                         \
	$(BUILD_DIR)/asm/sysdolphin/state.o                        \
	$(BUILD_DIR)/asm/sysdolphin/tev.o                          \
	$(BUILD_DIR)/asm/sysdolphin/mobj.o                         \
	$(BUILD_DIR)/asm/sysdolphin/aobj.o                         \
	$(BUILD_DIR)/asm/sysdolphin/lobj.o                         \
	$(BUILD_DIR)/asm/sysdolphin/cobj.o                         \
	$(BUILD_DIR)/asm/sysdolphin/fobj.o                         \
	$(BUILD_DIR)/asm/sysdolphin/pobj.o                         \
	$(BUILD_DIR)/asm/sysdolphin/jobj.o                         \
	$(BUILD_DIR)/asm/sysdolphin/displayfunc.o                  \
	$(BUILD_DIR)/asm/sysdolphin/initialize.o                   \
	$(BUILD_DIR)/asm/sysdolphin/video.o                        \
	$(BUILD_DIR)/asm/sysdolphin/controller.o                   \
	$(BUILD_DIR)/asm/sysdolphin/rumble.o                       \
	$(BUILD_DIR)/asm/sysdolphin/spline.o                       \
	$(BUILD_DIR)/asm/sysdolphin/mtx.o                          \
	$(BUILD_DIR)/asm/sysdolphin/util.o                         \
	$(BUILD_DIR)/asm/sysdolphin/objalloc.o                     \
	$(BUILD_DIR)/asm/sysdolphin/robj.o                         \
	$(BUILD_DIR)/asm/sysdolphin/id.o                           \
	$(BUILD_DIR)/asm/sysdolphin/wobj.o                         \
	$(BUILD_DIR)/asm/sysdolphin/fog.o                          \
	$(BUILD_DIR)/asm/sysdolphin/perf.o                         \
	$(BUILD_DIR)/asm/sysdolphin/list.o                         \
	$(BUILD_DIR)/asm/sysdolphin/object.o                       \
	$(BUILD_DIR)/asm/sysdolphin/memory.o                       \
	$(BUILD_DIR)/asm/sysdolphin/shadow.o                       \
	$(BUILD_DIR)/asm/sysdolphin/archive.o                      \
	$(BUILD_DIR)/src/sysdolphin/random.o                       \
	$(BUILD_DIR)/asm/sysdolphin/bytecode.o                     \
	$(BUILD_DIR)/asm/sysdolphin/class.o                        \
	$(BUILD_DIR)/asm/sysdolphin/hash.o                         \
	$(BUILD_DIR)/asm/sysdolphin/texp.o                         \
	$(BUILD_DIR)/asm/sysdolphin/texpdag.o                      \
	$(BUILD_DIR)/asm/sysdolphin/texpopt.o                      \
	$(BUILD_DIR)/asm/sysdolphin/debug.o                        \
	$(BUILD_DIR)/asm/sysdolphin/code_801d5ed8.o                \
	$(BUILD_DIR)/asm/sysdolphin/gobjproc.o                     \
	$(BUILD_DIR)/asm/sysdolphin/gobjplink.o                    \
	$(BUILD_DIR)/asm/sysdolphin/gobjgxlink.o                   \
	$(BUILD_DIR)/asm/sysdolphin/gobjobject.o                   \
	$(BUILD_DIR)/asm/sysdolphin/gobjuserdata.o                 \
	$(BUILD_DIR)/asm/sysdolphin/gobj.o                         \
	$(BUILD_DIR)/asm/hvqm/hvqm4dec.o                           \
	$(BUILD_DIR)/asm/hvqm/hvqm4decsnd.o                        \
	$(BUILD_DIR)/asm/musyx/seq.o                               \
	$(BUILD_DIR)/asm/musyx/synth.o                             \
	$(BUILD_DIR)/asm/musyx/seq_api.o                           \
	$(BUILD_DIR)/asm/musyx/snd_synthapi.o                      \
	$(BUILD_DIR)/asm/musyx/stream.o                            \
	$(BUILD_DIR)/asm/musyx/synthdata.o                         \
	$(BUILD_DIR)/asm/musyx/synthmacros.o                       \
	$(BUILD_DIR)/asm/musyx/synthvoice.o                        \
	$(BUILD_DIR)/asm/musyx/synth_ac.o                          \
	$(BUILD_DIR)/asm/musyx/synth_adsr.o                        \
	$(BUILD_DIR)/asm/musyx/synth_vsamples.o                    \
	$(BUILD_DIR)/asm/musyx/s_data.o                            \
	$(BUILD_DIR)/asm/musyx/hw_dspctrl.o                        \
	$(BUILD_DIR)/asm/musyx/hw_volconv.o                        \
	$(BUILD_DIR)/asm/musyx/snd3d.o                             \
	$(BUILD_DIR)/asm/musyx/snd_init.o                          \
	$(BUILD_DIR)/asm/musyx/snd_math.o                          \
	$(BUILD_DIR)/asm/musyx/snd_midictrl.o                      \
	$(BUILD_DIR)/asm/musyx/snd_service.o                       \
	$(BUILD_DIR)/asm/musyx/HARDWARE.o                          \
	$(BUILD_DIR)/asm/musyx/hw_aramdma.o                        \
	$(BUILD_DIR)/asm/musyx/hw_dolphin.o                        \
	$(BUILD_DIR)/asm/musyx/hw_memory.o                         \
	$(BUILD_DIR)/asm/musyx/reverb_fx.o                         \
	$(BUILD_DIR)/asm/musyx/reverb.o                            \
	$(BUILD_DIR)/asm/musyx/delay_fx.o                          \

RODATA_O_FILES :=                                              \
    $(BUILD_DIR)/asm/rodata.o

DATA_O_FILES :=                                                \
    $(BUILD_DIR)/asm/data.o

SDATA_O_FILES :=                                               \
    $(BUILD_DIR)/asm/sdata.o

SDATA2_O_FILES :=                                              \
    $(BUILD_DIR)/asm/sdata2.o

BSS_O_FILES :=                                                 \
    $(BUILD_DIR)/asm/bss.o

SBSS_O_FILES :=                                                \
    $(BUILD_DIR)/asm/sbss.o
