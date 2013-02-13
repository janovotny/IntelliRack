UnmarkedObjectFolder := C:/Users/florian/Google Drive/Schule/Projekt/Software/own/IntelliRack/Panel/Logical/LibVisapi5_ST/loadBitmap
MarkedObjectFolder := C:/Users/florian/Google\ Drive/Schule/Projekt/Software/own/IntelliRack/Panel/Logical/LibVisapi5_ST/loadBitmap

$(AS_CPU_PATH)/loadBitmap.br: \
	$(AS_PROJECT_PATH)/Physical/$(AS_CONFIGURATION)/$(AS_PLC)/Cpu.per \
	$(AS_CPU_PATH)/loadBitmap/loadBitmap.ox
	@"$(AS_BIN_PATH)/BR.AS.TaskBuilder.exe" "$(AS_CPU_PATH)/loadBitmap/loadBitmap.ox" -o "$(AS_CPU_PATH)/loadBitmap.br" -v V1.00.0 -f "$(AS_CPU_PATH)/Global.ofs" -T SG4  -B V3.08 -extConstants -d "runtime: V* - V*,asieccon: V* - V*" -r Cyclic2 -p 2 -s LibVisapi5_ST.loadBitmap -L "AsARCfg: V*, AsIecCon: V*, asstring: V*, AsTCP: V*, AsTime: V*, FileIO: V*, Operator: V*, Runtime: V*, visapi: V*" -P "$(AS_PROJECT_PATH)/" -secret "$(AS_PROJECT_PATH)_br.as.taskbuilder.exe"

$(AS_CPU_PATH)/loadBitmap/loadBitmap.ox: \
	$(AS_CPU_PATH)/loadBitmap/a.out
	@"$(AS_BIN_PATH)/BR.AS.Backend.exe" "$(AS_CPU_PATH)/loadBitmap/a.out" -o "$(AS_CPU_PATH)/loadBitmap/loadBitmap.ox" -T SG4 -r Cyclic2   -G V4.1.2  -secret "$(AS_PROJECT_PATH)_br.as.backend.exe"

$(AS_CPU_PATH)/loadBitmap/a.out: \
	$(AS_CPU_PATH)/loadBitmap/loadBitmap.o
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" -link -o "$(AS_CPU_PATH)/loadBitmap/a.out" "$(AS_CPU_PATH)/loadBitmap/loadBitmap.o"  -G V4.1.2  "-Wl,$(AS_VC_PATH)/Firmware/V3.95.0/SG4/libvisapi.a" "-Wl,$(AS_PROJECT_PATH)/AS/System/V0308/SG4/libAsTCP.a" "-Wl,$(AS_PROJECT_PATH)/AS/System/V0308/SG4/libFileIO.a" "-Wl,$(AS_PROJECT_PATH)/AS/System/V0308/SG4/libAsARCfg.a" "-Wl,$(AS_PROJECT_PATH)/AS/System/V0308/SG4/libasstring.a" "-Wl,$(AS_PROJECT_PATH)/AS/System/V0308/SG4/libAsIecCon.a" "-Wl,$(AS_PROJECT_PATH)/AS/System/V0308/SG4/libAsTime.a" "-Wl,$(AS_PROJECT_PATH)/AS/System/V0308/SG4/libRuntime.a" "-Wl,$(AS_PROJECT_PATH)/AS/System/V0308/SG4/libOperator.a" -specs=I386specs -Wl,-q,-T,SG4.x -nostdlib "-Wl,$(AS_GNU_INST_PATH)/i386-elf/lib/libasiec.a" -T SG4  -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

$(AS_CPU_PATH)/loadBitmap/loadBitmap.o: \
	$(AS_PROJECT_PATH)/Logical/LibVisapi5_ST/loadBitmap/loadBitmap.st \
	$(AS_PROJECT_PATH)/Logical/Libraries/visapi/Visapi.fun \
	$(AS_PROJECT_PATH)/Logical/LibVisapi5_ST/loadBitmap/loadBitmap.var \
	$(AS_PROJECT_PATH)/Logical/Global.typ \
	$(AS_PROJECT_PATH)/Logical/Libraries/visapi/Visapi.typ
	@"$(AS_BIN_PATH)/BR.AS.IecCompiler.exe" "$(AS_PROJECT_PATH)/Logical/LibVisapi5_ST/loadBitmap/loadBitmap.st" -o "$(AS_CPU_PATH)/loadBitmap/loadBitmap.o"  -O "$(AS_CPU_PATH)/loadBitmap/loadBitmap.o.opt" -secret "$(AS_PROJECT_PATH)_br.as.ieccompiler.exe"

-include $(AS_CPU_PATH)/Force.mak 

