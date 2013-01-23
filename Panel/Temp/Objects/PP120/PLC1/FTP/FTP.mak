UnmarkedObjectFolder := C:/Users/florian/Google Drive/Schule/Projekt/Software/own/Panel/Logical/FTP/FTP
MarkedObjectFolder := C:/Users/florian/Google\ Drive/Schule/Projekt/Software/own/Panel/Logical/FTP/FTP

$(AS_CPU_PATH)/FTP.br: \
	$(AS_PROJECT_PATH)/Physical/$(AS_CONFIGURATION)/$(AS_PLC)/Cpu.per \
	$(AS_CPU_PATH)/FTP/FTP.ox
	@"$(AS_BIN_PATH)/BR.AS.TaskBuilder.exe" "$(AS_CPU_PATH)/FTP/FTP.ox" -o "$(AS_CPU_PATH)/FTP.br" -v V1.00.0 -f "$(AS_CPU_PATH)/Global.ofs" -T SG4  -B V3.08 -extConstants -d "runtime: V* - V*,asieccon: V* - V*" -r Cyclic3 -p 2 -s FTP.FTP -L "AsARCfg: V*, AsIecCon: V*, asstring: V*, AsTCP: V*, AsTime: V*, FileIO: V*, Operator: V*, Runtime: V*" -P "$(AS_PROJECT_PATH)/" -secret "$(AS_PROJECT_PATH)_br.as.taskbuilder.exe"

$(AS_CPU_PATH)/FTP/FTP.ox: \
	$(AS_CPU_PATH)/FTP/a.out
	@"$(AS_BIN_PATH)/BR.AS.Backend.exe" "$(AS_CPU_PATH)/FTP/a.out" -o "$(AS_CPU_PATH)/FTP/FTP.ox" -T SG4 -r Cyclic3   -G V4.1.2  -secret "$(AS_PROJECT_PATH)_br.as.backend.exe"

$(AS_CPU_PATH)/FTP/a.out: \
	$(AS_CPU_PATH)/FTP/FTP.o
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" -link -o "$(AS_CPU_PATH)/FTP/a.out" "$(AS_CPU_PATH)/FTP/FTP.o"  -G V4.1.2  "-Wl,$(AS_PROJECT_PATH)/AS/System/V0308/SG4/libAsTCP.a" "-Wl,$(AS_PROJECT_PATH)/AS/System/V0308/SG4/libFileIO.a" "-Wl,$(AS_PROJECT_PATH)/AS/System/V0308/SG4/libAsARCfg.a" "-Wl,$(AS_PROJECT_PATH)/AS/System/V0308/SG4/libasstring.a" "-Wl,$(AS_PROJECT_PATH)/AS/System/V0308/SG4/libAsIecCon.a" "-Wl,$(AS_PROJECT_PATH)/AS/System/V0308/SG4/libAsTime.a" "-Wl,$(AS_PROJECT_PATH)/AS/System/V0308/SG4/libRuntime.a" "-Wl,$(AS_PROJECT_PATH)/AS/System/V0308/SG4/libOperator.a" -specs=I386specs -Wl,-q,-T,SG4.x -nostdlib "-Wl,$(AS_GNU_INST_PATH)/i386-elf/lib/libasiec.a" -T SG4  -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

$(AS_CPU_PATH)/FTP/FTP.o: \
	$(AS_PROJECT_PATH)/Logical/FTP/FTP/FTP.st \
	$(AS_PROJECT_PATH)/Logical/Libraries/AsARCfg/AsARCfg.fun \
	$(AS_PROJECT_PATH)/Logical/Libraries/AsARCfg/AsARCfg.var \
	$(AS_PROJECT_PATH)/Logical/FTP/FTP/FTP.var \
	$(AS_PROJECT_PATH)/Logical/FTP/FTP/FTP.typ \
	$(AS_PROJECT_PATH)/Logical/Libraries/Runtime/runtime.var
	@"$(AS_BIN_PATH)/BR.AS.IecCompiler.exe" "$(AS_PROJECT_PATH)/Logical/FTP/FTP/FTP.st" -o "$(AS_CPU_PATH)/FTP/FTP.o"  -O "$(AS_CPU_PATH)/FTP/FTP.o.opt" -secret "$(AS_PROJECT_PATH)_br.as.ieccompiler.exe"

-include $(AS_CPU_PATH)/Force.mak 

