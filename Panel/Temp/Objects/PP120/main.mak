CYGWIN=nontsec
export PATH := C:\Program Files (x86)\Haskell Platform\2012.4.0.0\lib\extralibs\bin;C:\Program Files (x86)\Haskell Platform\2012.4.0.0\bin;C:\Program Files (x86)\NVIDIA Corporation\PhysX\Common;C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Program Files\Intel\WiFi\bin\;C:\Program Files\Common Files\Intel\WirelessCommon\;C:\Program Files (x86)\Microsoft SQL Server\100\Tools\Binn\;C:\Program Files\Microsoft SQL Server\100\Tools\Binn\;C:\Program Files\Microsoft SQL Server\100\DTS\Binn\;C:\Program Files (x86)\Git\cmd;C:\Program Files (x86)\proeWildfire 4.0\bin;C:\Program Files (x86)\proeWildfire 4.0\mech\bin;C:\Program Files (x86)\Calibre2\;D:\Dwimperl\perl\bin;D:\Dwimperl\perl\site\bin;D:\Dwimperl\c\bin;C:\Program Files (x86)\Haskell Platform\2012.4.0.0\mingw\bin;C:\Program Files (x86)\GTK2-Runtime\lib;C:\Program Files\Intel\WiFi\bin\;C:\Program Files\Common Files\Intel\WirelessCommon\;C:\Program Files (x86)\Nmap;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode;C:\Program Files\Intel\WiFi\bin\;C:\Program Files\Common Files\Intel\WirelessCommon\;C:\Program Files (x86)\Nmap;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode
export AS_COMPANY_NAME :=  
export AS_USER_NAME := florian
export AS_PATH := D:/BrAutomation/AS30090
export AS_BIN_PATH := D:/BrAutomation/AS30090/Bin-en
export AS_PROJECT_PATH := C:/Users/florian/Google\ Drive/Schule/Projekt/Software/own/Panel
export AS_PROJECT_NAME := Panel
export AS_SYSTEM_PATH := D:/BrAutomation/AS/System
export AS_VC_PATH := D:/BrAutomation/AS30090/AS/VC
export AS_TEMP_PATH := C:/Users/florian/Google\ Drive/Schule/Projekt/Software/own/Panel/Temp
export AS_CONFIGURATION := PP120
export AS_BINARIES_PATH := C:/Users/florian/Google\ Drive/Schule/Projekt/Software/own/Panel/Binaries
export AS_GNU_INST_PATH := D:/BrAutomation/AS30090/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH := $(AS_GNU_INST_PATH)/bin
export AS_GNU_INST_PATH_SUB_MAKE := D:/BrAutomation/AS30090/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH_SUB_MAKE := $(AS_GNU_INST_PATH_SUB_MAKE)/bin
export AS_INSTALL_PATH := D:/BrAutomation/AS30090
export WIN32_AS_PATH := D:\\BrAutomation\\AS30090
export WIN32_AS_BIN_PATH := D:\\BrAutomation\\AS30090\\Bin-en
export WIN32_AS_PROJECT_PATH := C:\\Users\\florian\\Google Drive\\Schule\\Projekt\\Software\\own\\Panel
export WIN32_AS_SYSTEM_PATH := D:\\BrAutomation\\AS\\System
export WIN32_AS_VC_PATH := D:\\BrAutomation\\AS30090\\AS\\VC
export WIN32_AS_TEMP_PATH := C:\\Users\\florian\\Google Drive\\Schule\\Projekt\\Software\\own\\Panel\\Temp
export WIN32_AS_BINARIES_PATH := C:\\Users\\florian\\Google Drive\\Schule\\Projekt\\Software\\own\\Panel\\Binaries
export WIN32_AS_GNU_INST_PATH := D:\\BrAutomation\\AS30090\\AS\\GnuInst\\V4.1.2
export WIN32_AS_GNU_BIN_PATH := $(WIN32_AS_GNU_INST_PATH)\\bin
export WIN32_AS_INSTALL_PATH := D:\\BrAutomation\\AS30090

.suffixes:

ProjectMakeFile:

	@"$(AS_BIN_PATH)/BR.AS.AnalyseProject.exe" "$(AS_PROJECT_PATH)/Panel.apj" -t "$(AS_TEMP_PATH)" -c "$(AS_CONFIGURATION)" -o "$(AS_BINARIES_PATH)"   -sfas -buildMode "BuildAndTransfer"

	@$(AS_GNU_BIN_PATH)/mingw32-make.exe -r -f 'C:/Users/florian/Google Drive/Schule/Projekt/Software/own/Panel/Temp/Objects/$(AS_CONFIGURATION)/PLC1/#cpu.mak' -k

