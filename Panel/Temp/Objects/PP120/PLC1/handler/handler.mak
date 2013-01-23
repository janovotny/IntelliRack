UnmarkedObjectFolder := C:/Users/florian/Google Drive/Schule/Projekt/Software/own/Panel/Logical/handler
MarkedObjectFolder := C:/Users/florian/Google\ Drive/Schule/Projekt/Software/own/Panel/Logical/handler

$(AS_CPU_PATH)/handler.br: \
	$(AS_PROJECT_PATH)/Physical/$(AS_CONFIGURATION)/$(AS_PLC)/Cpu.per \
	$(AS_CPU_PATH)/handler/handler.ox
	@"$(AS_BIN_PATH)/BR.AS.TaskBuilder.exe" "$(AS_CPU_PATH)/handler/handler.ox" -o "$(AS_CPU_PATH)/handler.br" -v V1.00.0 -f "$(AS_CPU_PATH)/Global.ofs" -T SG4  -B V3.08 -extConstants -r Cyclic2 -p 2 -s handler -L "AsARCfg: V*, AsIecCon: V*, asstring: V*, AsTCP: V*, AsTime: V*, FileIO: V*, Operator: V*, Runtime: V*" -P "$(AS_PROJECT_PATH)/" -secret "$(AS_PROJECT_PATH)_br.as.taskbuilder.exe"

$(AS_CPU_PATH)/handler/handler.ox: \
	$(AS_CPU_PATH)/handler/a.out
	@"$(AS_BIN_PATH)/BR.AS.Backend.exe" "$(AS_CPU_PATH)/handler/a.out" -o "$(AS_CPU_PATH)/handler/handler.ox" -T SG4 -r Cyclic2   -G V4.1.2  -secret "$(AS_PROJECT_PATH)_br.as.backend.exe"

$(AS_CPU_PATH)/handler/a.out: \
	$(AS_CPU_PATH)/handler/handlerCyclic.o
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" -link -o "$(AS_CPU_PATH)/handler/a.out" "$(AS_CPU_PATH)/handler/handlerCyclic.o"  -G V4.1.2  "-Wl,$(AS_PROJECT_PATH)/AS/System/V0308/SG4/libAsTCP.a" "-Wl,$(AS_PROJECT_PATH)/AS/System/V0308/SG4/libFileIO.a" "-Wl,$(AS_PROJECT_PATH)/AS/System/V0308/SG4/libAsARCfg.a" "-Wl,$(AS_PROJECT_PATH)/AS/System/V0308/SG4/libasstring.a" "-Wl,$(AS_PROJECT_PATH)/AS/System/V0308/SG4/libAsIecCon.a" "-Wl,$(AS_PROJECT_PATH)/AS/System/V0308/SG4/libAsTime.a" "-Wl,$(AS_PROJECT_PATH)/AS/System/V0308/SG4/libRuntime.a" "-Wl,$(AS_PROJECT_PATH)/AS/System/V0308/SG4/libOperator.a" -specs=I386specs -Wl,-q,-T,SG4.x -T SG4  -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

$(AS_CPU_PATH)/handler/handlerCyclic.o: \
	$(AS_PROJECT_PATH)/Logical/handler/handlerCyclic.c \
	$(AS_PROJECT_PATH)/Logical/Global.var
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" "$(AS_PROJECT_PATH)/Logical/handler/handlerCyclic.c" -o "$(AS_CPU_PATH)/handler/handlerCyclic.o"  -T SG4  -B V3.08 -G V4.1.2  -s handler -t "$(AS_TEMP_PATH)" -I "$(AS_PROJECT_PATH)/Logical/handler" "$(AS_TEMP_PATH)/Includes/handler" "$(AS_TEMP_PATH)/Includes" -trigraphs -fno-asm -D _DEFAULT_INCLUDES -D _SG4 -fPIC -O0 -g -nostartfiles -Wall -include "$(AS_CPU_PATH)/Libraries.h" -x c -P "$(AS_PROJECT_PATH)/" -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

-include $(AS_CPU_PATH)/Force.mak 

