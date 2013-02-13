UnmarkedObjectFolder := C:/Users/florian/Google Drive/Schule/Projekt/Software/own/IntelliRack/Drives/Logical/drvman
MarkedObjectFolder := C:/Users/florian/Google\ Drive/Schule/Projekt/Software/own/IntelliRack/Drives/Logical/drvman

$(AS_CPU_PATH)/drvman.br: \
	$(AS_PROJECT_PATH)/Physical/$(AS_CONFIGURATION)/$(AS_PLC)/Cpu.per \
	$(AS_CPU_PATH)/drvman/drvman.ox
	@"$(AS_BIN_PATH)/BR.AS.TaskBuilder.exe" "$(AS_CPU_PATH)/drvman/drvman.ox" -o "$(AS_CPU_PATH)/drvman.br" -v V1.00.0 -f "$(AS_CPU_PATH)/Global.ofs" -T SG4  -B V3.08 -extConstants -r Cyclic2 -p 2 -s drvman -L "Acp10man: V2.28.2, Acp10par: V2.28.2, Acp10sdc: V2.28.2, AsIecCon: V*, AsIO: V*, AsIOAcc: V*, asstring: V*, AsTime: V*, NcGlobal: V2.28.2, Operator: V*, Runtime: V*" -P "$(AS_PROJECT_PATH)/" -secret "$(AS_PROJECT_PATH)_br.as.taskbuilder.exe"

$(AS_CPU_PATH)/drvman/drvman.ox: \
	$(AS_CPU_PATH)/drvman/a.out
	@"$(AS_BIN_PATH)/BR.AS.Backend.exe" "$(AS_CPU_PATH)/drvman/a.out" -o "$(AS_CPU_PATH)/drvman/drvman.ox" -T SG4 -r Cyclic2   -G V4.1.2  -secret "$(AS_PROJECT_PATH)_br.as.backend.exe"

$(AS_CPU_PATH)/drvman/a.out: \
	$(AS_CPU_PATH)/drvman/drvman.o
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" -link -o "$(AS_CPU_PATH)/drvman/a.out" "$(AS_CPU_PATH)/drvman/drvman.o"  -G V4.1.2  "-Wl,$(AS_PROJECT_PATH)/Logical/Libraries/Acp10sdc/SG4/libAcp10sdc.a" "-Wl,$(AS_PROJECT_PATH)/Logical/Libraries/Acp10man/SG4/libAcp10man.a" "-Wl,$(AS_PROJECT_PATH)/AS/System/V0308/SG4/libAsIO.a" "-Wl,$(AS_PROJECT_PATH)/AS/System/V0308/SG4/libAsIOAcc.a" "-Wl,$(AS_PROJECT_PATH)/AS/System/V0308/SG4/libasstring.a" "-Wl,$(AS_PROJECT_PATH)/Logical/Libraries/NcGlobal/SG4/libNcGlobal.a" "-Wl,$(AS_PROJECT_PATH)/Logical/Libraries/Acp10par/SG4/libAcp10par.a" "-Wl,$(AS_PROJECT_PATH)/AS/System/V0308/SG4/libAsIecCon.a" "-Wl,$(AS_PROJECT_PATH)/AS/System/V0308/SG4/libAsTime.a" "-Wl,$(AS_PROJECT_PATH)/AS/System/V0308/SG4/libRuntime.a" "-Wl,$(AS_PROJECT_PATH)/AS/System/V0308/SG4/libOperator.a" -specs=I386specs -Wl,-q,-T,SG4.x -T SG4  -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

$(AS_CPU_PATH)/drvman/drvman.o: \
	$(AS_PROJECT_PATH)/Logical/drvman/drvman.c \
	$(AS_PROJECT_PATH)/Logical/Global.var \
	$(AS_PROJECT_PATH)/Logical/Global.typ
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" "$(AS_PROJECT_PATH)/Logical/drvman/drvman.c" -o "$(AS_CPU_PATH)/drvman/drvman.o"  -T SG4  -B V3.08 -G V4.1.2  -s drvman -t "$(AS_TEMP_PATH)" -I "$(AS_PROJECT_PATH)/Logical/drvman" "$(AS_TEMP_PATH)/Includes/drvman" "$(AS_TEMP_PATH)/Includes" -trigraphs -fno-asm -D _DEFAULT_INCLUDES -D _SG4 -fPIC -O0 -g -nostartfiles -Wall -include "$(AS_CPU_PATH)/Libraries.h" -x c -P "$(AS_PROJECT_PATH)/" -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

-include $(AS_CPU_PATH)/Force.mak 

