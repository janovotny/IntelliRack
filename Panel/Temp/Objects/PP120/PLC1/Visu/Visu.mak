######################################################
#                                                    #
# Automatic generated Makefile for Visual Components #
#                                                    #
#                  Do NOT edit!                      #
#                                                    #
######################################################

VCC=@'$(AS_BIN_PATH)/br.vc.pc.exe'
LINK=@'$(AS_BIN_PATH)/BR.VC.Link.exe'
MODGEN=@'$(AS_BIN_PATH)/BR.VC.ModGen.exe'
VCPL=@'$(AS_BIN_PATH)/BR.VC.PL.exe'
VCHWPP=@'$(AS_BIN_PATH)/BR.VC.HWPP.exe'
VCDEP=@'$(AS_BIN_PATH)/BR.VC.Depend.exe'
VCFLGEN=@'$(AS_BIN_PATH)/BR.VC.lfgen.exe'
VCREFHANDLER=@'$(AS_BIN_PATH)/BR.VC.CrossReferenceHandler.exe'
VCXREFEXTENDER=@'$(AS_BIN_PATH)/BR.AS.CrossRefVCExtender.exe'
RM=CMD /C DEL
PALFILE_Visu=$(AS_PROJECT_PATH)/Logical/Visu/Palette.vcr
VCCFLAGS_Visu=-server -proj Visu -vc '$(AS_PROJECT_PATH)/Logical/Visu/VCObject.vc' -prj_path '$(AS_PROJECT_PATH)' -temp_path '$(AS_TEMP_PATH)' -cfg $(AS_CONFIGURATION) -plc $(AS_PLC) -cpu_path '$(AS_CPU_PATH)'
VCFIRMWARE=V3.95.0
VCFIRMWAREPATH=$(AS_VC_PATH)/Firmware/V3.95.0/SG4
VCOBJECT_Visu=$(AS_PROJECT_PATH)/Logical/Visu/VCObject.vc
VCSTARTUP='$(VCFIRMWAREPATH)\vcstart.br'
VCLOD='$(VCFIRMWAREPATH)\vclod.br'
VCSTPOST='$(VCFIRMWAREPATH)\vcstpost.br'
TARGET_FILE_Visu=$(AS_CPU_PATH)/Visu.br
OBJ_SCOPE_Visu=
PRJ_PATH_Visu=$(AS_PROJECT_PATH)
SRC_PATH_Visu=$(AS_PROJECT_PATH)/Logical/$(OBJ_SCOPE_Visu)/Visu
TEMP_PATH_Visu=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_PLC)/Visu
TEMP_PATH_ROOT_Visu=$(AS_TEMP_PATH)
VC_LIBRARY_LIST_Visu=$(TEMP_PATH_Visu)/libraries.vci
VC_XREF_BUILDFILE_Visu=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_PLC)/vcxref.build
VC_XREF_CLEANFILE=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_PLC)/vcxref.clean
VC_LANGUAGES_Visu=$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr
CPUHWC=$(TEMP_PATH_Visu)/cpuhwc.vci
VC_STATIC_OPTIONS_Visu='$(TEMP_PATH_Visu)/vcStaticOptions.xml'
# include Shared and Font Makefile (only once)
	include $(AS_TEMP_PATH)/objects/$(AS_CONFIGURATION)/$(AS_PLC)/VCFntDat/Font_Visu.mak
ifneq ($(VCINC),1)
	VCINC=1
	include $(AS_TEMP_PATH)/objects/$(AS_CONFIGURATION)/$(AS_PLC)/VCShared/VCShared.mak
endif

DEPENDENCIES_Visu=-d vcgclass -profile 'False'
DEFAULT_STYLE_SHEET_Visu=Source[local].StyleSheet[Default]
SHARED_MODULE=$(TEMP_PATH_ROOT_Visu)/Objects/$(AS_CONFIGURATION)/$(AS_PLC)/vcshared.br
LFNTFLAGS_Visu=-P '$(AS_PROJECT_PATH)' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)'
BDRFLAGS_Visu=-P '$(AS_PROJECT_PATH)' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)'

# Local Libs
LIB_LOCAL_OBJ_Visu=$(TEMP_PATH_Visu)/localobj.vca

# KeyMapping flags
KEYMAP_SOURCES_Visu=
KEYMAP_OBJECTS_Visu=

# All Source Objects
TXTGRP_SOURCES_Visu=$(AS_PROJECT_PATH)/Logical/Visu/TextGroups/Buttons_PageTexts.txtgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/TextGroups/HeaderBar.txtgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/TextGroups/InstantMessages.txtgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/TextGroups/PageNames.txtgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/TextGroups/Languages.txtgrp 

FNINFO_SOURCES_Visu=$(AS_PROJECT_PATH)/Logical/Visu/Fonts/Button.fninfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Fonts/Default.fninfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Fonts/Header.fninfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Fonts/Html_SDM.fninfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Fonts/Info.fninfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Fonts/Input.fninfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Fonts/Status.fninfo 

BMINFO_SOURCES_Visu=$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Alarm_AcknowledgeReset.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Alarm_Active.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Alarm_BypassOFF.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Alarm_BypassON.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Alarm_Inactive.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Alarm_Latched.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Alarm_NotQuit.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Alarm_Quit.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Alarm_ResetAcknowledge.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Alarm_Reset.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Alarm_Triggered.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/BRLogo.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_ListPadHor.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_ListPadHor_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_ListPadVer.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_ListPadVer_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_NumPad.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_NumPad_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/ProgressBorder.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Slider_09x09.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Slider_ArrowRightGray.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Slider_ArrowUpGray.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Slider_BallGray.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/alarm.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_backward.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_backward_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_decrease.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_decrease_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_default.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_default_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_forward.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_forward_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_global_area.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_global_area_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_increase.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_increase_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_radio.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_radio_selected.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_down.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_down_multi.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_down_multi_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_down_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_left.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_left_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_right.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_right_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_up.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_up_multi.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_up_multi_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_up_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/checkbox.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/checkbox_checked.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/checkbox_small.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/checkbox_small_checked.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/frame_header.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/global_area_gradient_downside.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/global_area_gradient_upside.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/information.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/warning.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/gauge_200x200_round_nodiv.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/gauge_NeedleRed100x11_1.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/global_area_gradient_downside_0.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/global_area_gradient_upside_0.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_AlphaPadQVGA_Layer1.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_AlphaPadQVGA_Layer1_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_AlphaPadQVGA_Layer2.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_AlphaPadQVGA_Layer2_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_AlphaPadQVGA_Layer3.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_AlphaPadQVGA_Layer3_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/checkbox_small_gray.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/pp420.bminfo 

BMGRP_SOURCES_Visu=$(AS_PROJECT_PATH)/Logical/Visu/BitmapGroups/GlobalArea.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/BitmapGroups/AlarmAcknowledgeState.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/BitmapGroups/AlarmBypassState.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/BitmapGroups/AlarmEvent.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/BitmapGroups/AlarmState.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/BitmapGroups/Borders.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/BitmapGroups/Pads.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/BitmapGroups/Pages.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Visu/BitmapGroups/msgBox.bmgrp 

PAGE_SOURCES_Visu=$(AS_PROJECT_PATH)/Logical/Visu/Pages/PleaseWait.page \
	$(AS_PROJECT_PATH)/Logical/Visu/Pages/Home.page \
	$(AS_PROJECT_PATH)/Logical/Visu/Pages/Lib.page \
	$(AS_PROJECT_PATH)/Logical/Visu/Pages/Title.page \
	$(AS_PROJECT_PATH)/Logical/Visu/Pages/InfoIG.page 

LAYER_SOURCES_Visu=$(AS_PROJECT_PATH)/Logical/Visu/Layers/msgBox.layer \
	$(AS_PROJECT_PATH)/Logical/Visu/Layers/globalArea.layer \
	$(AS_PROJECT_PATH)/Logical/Visu/Layers/globalAreaSDM.layer 

VCS_SOURCES_Visu=$(AS_PROJECT_PATH)/Logical/Visu/StyleSheets/Default.vcs 

BDR_SOURCES_Visu=$(AS_PROJECT_PATH)/Logical/Visu/Borders/Flat_black.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Flat_grey.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/RaisedInner.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Raised.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/SliderBorder09.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/SunkenOuter.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Sunken.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Backward.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Backward_pressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Decrease.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Decrease_pressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Forward.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Forward_pressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Global_Area.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Global_Area_pressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Increase.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Increase_pressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Multi_Scroll_Down.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Multi_Scroll_Down_pressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Multi_Scroll_Up.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Multi_Scroll_Up_pressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Radio.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Radio_selected.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Scoll_Up.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Scoll_Up_pressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Scroll_Down.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Scroll_Down_pressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Scroll_Left.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Scroll_Left_pressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Scroll_Right.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Scroll_Right_pressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_pressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/CheckBox_checked.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/FrameHeader.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/ProgressBarBorder.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/SunkenNG.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu/Borders/SunkenNGgray.bdr 

TPR_SOURCES_Visu=$(AS_PROJECT_PATH)/Logical/Visu/TouchPads/NavigationPad_hor.tpr \
	$(AS_PROJECT_PATH)/Logical/Visu/TouchPads/NavigationPad_ver.tpr \
	$(AS_PROJECT_PATH)/Logical/Visu/TouchPads/NumPad.tpr \
	$(AS_PROJECT_PATH)/Logical/Visu/TouchPads/AlphaPad_QVGA.tpr 

TDC_SOURCES_Visu=$(AS_PROJECT_PATH)/Logical/Visu/Trends/TrendData.tdc 

TRD_SOURCES_Visu=$(AS_PROJECT_PATH)/Logical/Visu/Trends/CPUTemperature.trd \
	$(AS_PROJECT_PATH)/Logical/Visu/Trends/ROOMTemperature.trd 

TRE_SOURCES_Visu=$(AS_PROJECT_PATH)/Logical/Visu/Trends/Trend_Temperature.tre 

VCVK_SOURCES_Visu=$(AS_PROJECT_PATH)/Logical/Visu/VirtualKeys.vcvk 

VCR_SOURCES_Visu=$(AS_PROJECT_PATH)/Logical/Visu/Palette.vcr 

# Hardware sources
PANEL_HW_OBJECT_Visu=$(TEMP_PATH_ROOT_Visu)/Objects/$(AS_CONFIGURATION)/$(AS_PLC)/Visu/dis.Hardware.vco
PANEL_HW_SOURCE_Visu=$(AS_PROJECT_PATH)/Physical/PP120/Hardware.hc $(AS_PROJECT_PATH)/Physical/PP120/PLC1/ArConfig.rtc $(AS_PROJECT_PATH)/Physical/PP120/PLC1/Visual.vcm
DIS_OBJECTS_Visu=$(PANEL_HW_OBJECT_Visu) $(KEYMAP_OBJECTS_Visu)

# Runtime Object sources
VCR_OBJECT_Visu=$(TEMP_PATH_Visu)/vcrt.vco
VCR_SOURCE_Visu=$(SRC_PATH_Visu)/package.vcp
# All Source Objects END

#Panel Hardware
$(PANEL_HW_OBJECT_Visu): $(PANEL_HW_SOURCE_Visu) $(PALFILE_Visu) $(VC_LIBRARY_LIST_Visu) $(KEYMAP_SOURCES_Visu)
	$(VCHWPP) -f '$<' -o '$(subst .vco,.vci,$@)' -n Visu -d Visu -m '$(AS_PROJECT_PATH)/Physical/$(AS_CONFIGURATION)/$(AS_PLC)/Visual.vcm' -pal '$(PALFILE_Visu)' -c '$(AS_CONFIGURATION)' -p '$(AS_PLC)' -B V3.08.0 -L ' visapi: V*' -verbose 'False' -profile 'False' -hw '$(CPUHWC)' -warninglevel 2 -so $(VC_STATIC_OPTIONS_Visu) -sfas
	$(VCC) -f '$(subst .vco,.vci,$@)' -o '$@' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -k '$(VCVK_SOURCES_Visu)' $(VCCFLAGS_Visu) -p Visu


# Pages
PAGE_OBJECTS_Visu = $(addprefix $(TEMP_PATH_Visu)/page., $(notdir $(PAGE_SOURCES_Visu:.page=.vco)))

$(TEMP_PATH_Visu)/page.PleaseWait.vco: $(AS_PROJECT_PATH)/Logical/Visu/Pages/PleaseWait.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Default.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/page.Home.vco: $(AS_PROJECT_PATH)/Logical/Visu/Pages/Home.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Default.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/page.Lib.vco: $(AS_PROJECT_PATH)/Logical/Visu/Pages/Lib.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Default.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/page.Title.vco: $(AS_PROJECT_PATH)/Logical/Visu/Pages/Title.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Default.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/page.InfoIG.vco: $(AS_PROJECT_PATH)/Logical/Visu/Pages/InfoIG.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Default.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


#Pages END




# Stylesheets
VCS_OBJECTS_Visu = $(addprefix $(TEMP_PATH_Visu)/vcs., $(notdir $(VCS_SOURCES_Visu:.vcs=.vco)))

$(TEMP_PATH_Visu)/vcs.Default.vco: $(AS_PROJECT_PATH)/Logical/Visu/StyleSheets/Default.vcs
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds $(DEFAULT_STYLE_SHEET_Visu) -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


#Stylesheets END




# Layers
LAYER_OBJECTS_Visu = $(addprefix $(TEMP_PATH_Visu)/layer., $(notdir $(LAYER_SOURCES_Visu:.layer=.vco)))

$(TEMP_PATH_Visu)/layer.msgBox.vco: $(AS_PROJECT_PATH)/Logical/Visu/Layers/msgBox.layer $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -ds $(DEFAULT_STYLE_SHEET_Visu) -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/layer.globalArea.vco: $(AS_PROJECT_PATH)/Logical/Visu/Layers/globalArea.layer $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -ds $(DEFAULT_STYLE_SHEET_Visu) -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/layer.globalAreaSDM.vco: $(AS_PROJECT_PATH)/Logical/Visu/Layers/globalAreaSDM.layer $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -ds $(DEFAULT_STYLE_SHEET_Visu) -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


#Layers END




# Virtual Keys
VCVK_OBJECTS_Visu = $(addprefix $(TEMP_PATH_Visu)/vcvk., $(notdir $(VCVK_SOURCES_Visu:.vcvk=.vco)))

$(TEMP_PATH_Visu)/vcvk.VirtualKeys.vco: $(AS_PROJECT_PATH)/Logical/Visu/VirtualKeys.vcvk
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950

$(VCVK_OBJECTS_Visu): $(VC_LANGUAGES_Visu)

#Virtual Keys END




# Touch Pads
TPR_OBJECTS_Visu = $(addprefix $(TEMP_PATH_Visu)/tpr., $(notdir $(TPR_SOURCES_Visu:.tpr=.vco)))

$(TEMP_PATH_Visu)/tpr.NavigationPad_hor.vco: $(AS_PROJECT_PATH)/Logical/Visu/TouchPads/NavigationPad_hor.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -prj '$(AS_PROJECT_PATH)/Logical/Visu' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/tpr.NavigationPad_ver.vco: $(AS_PROJECT_PATH)/Logical/Visu/TouchPads/NavigationPad_ver.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -prj '$(AS_PROJECT_PATH)/Logical/Visu' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/tpr.NumPad.vco: $(AS_PROJECT_PATH)/Logical/Visu/TouchPads/NumPad.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -prj '$(AS_PROJECT_PATH)/Logical/Visu' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/tpr.AlphaPad_QVGA.vco: $(AS_PROJECT_PATH)/Logical/Visu/TouchPads/AlphaPad_QVGA.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -prj '$(AS_PROJECT_PATH)/Logical/Visu' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


#Touch Pads END




# Text Groups
TXTGRP_OBJECTS_Visu = $(addprefix $(TEMP_PATH_Visu)/txtgrp., $(notdir $(TXTGRP_SOURCES_Visu:.txtgrp=.vco)))

$(TEMP_PATH_Visu)/txtgrp.Buttons_PageTexts.vco: $(AS_PROJECT_PATH)/Logical/Visu/TextGroups/Buttons_PageTexts.txtgrp $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/txtgrp.HeaderBar.vco: $(AS_PROJECT_PATH)/Logical/Visu/TextGroups/HeaderBar.txtgrp $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/txtgrp.InstantMessages.vco: $(AS_PROJECT_PATH)/Logical/Visu/TextGroups/InstantMessages.txtgrp $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/txtgrp.PageNames.vco: $(AS_PROJECT_PATH)/Logical/Visu/TextGroups/PageNames.txtgrp $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/txtgrp.Languages.vco: $(AS_PROJECT_PATH)/Logical/Visu/TextGroups/Languages.txtgrp $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


#Text Groups END




# BitmapGroups
BMGRP_OBJECTS_Visu = $(addprefix $(TEMP_PATH_Visu)/bmgrp., $(notdir $(BMGRP_SOURCES_Visu:.bmgrp=.vco)))

$(TEMP_PATH_Visu)/bmgrp.GlobalArea.vco: $(AS_PROJECT_PATH)/Logical/Visu/BitmapGroups/GlobalArea.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bmgrp.AlarmAcknowledgeState.vco: $(AS_PROJECT_PATH)/Logical/Visu/BitmapGroups/AlarmAcknowledgeState.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bmgrp.AlarmBypassState.vco: $(AS_PROJECT_PATH)/Logical/Visu/BitmapGroups/AlarmBypassState.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bmgrp.AlarmEvent.vco: $(AS_PROJECT_PATH)/Logical/Visu/BitmapGroups/AlarmEvent.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bmgrp.AlarmState.vco: $(AS_PROJECT_PATH)/Logical/Visu/BitmapGroups/AlarmState.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bmgrp.Borders.vco: $(AS_PROJECT_PATH)/Logical/Visu/BitmapGroups/Borders.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bmgrp.Pads.vco: $(AS_PROJECT_PATH)/Logical/Visu/BitmapGroups/Pads.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bmgrp.Pages.vco: $(AS_PROJECT_PATH)/Logical/Visu/BitmapGroups/Pages.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bmgrp.msgBox.vco: $(AS_PROJECT_PATH)/Logical/Visu/BitmapGroups/msgBox.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


#BitmapGroups END




# Bitmaps
BMINFO_OBJECTS_Visu = $(addprefix $(TEMP_PATH_Visu)/bminfo., $(notdir $(BMINFO_SOURCES_Visu:.bminfo=.vco)))

$(TEMP_PATH_Visu)/bminfo.Alarm_AcknowledgeReset.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Alarm_AcknowledgeReset.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Alarm_AcknowledgeReset.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.Alarm_Active.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Alarm_Active.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Alarm_Active.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.Alarm_BypassOFF.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Alarm_BypassOFF.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Alarm_BypassOFF.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.Alarm_BypassON.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Alarm_BypassON.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Alarm_BypassON.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.Alarm_Inactive.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Alarm_Inactive.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Alarm_Inactive.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.Alarm_Latched.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Alarm_Latched.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Alarm_Latched.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.Alarm_NotQuit.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Alarm_NotQuit.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Alarm_NotQuit.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.Alarm_Quit.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Alarm_Quit.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Alarm_Quit.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.Alarm_ResetAcknowledge.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Alarm_ResetAcknowledge.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Alarm_ResetAcknowledge.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.Alarm_Reset.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Alarm_Reset.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Alarm_Reset.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.Alarm_Triggered.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Alarm_Triggered.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Alarm_Triggered.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.BRLogo.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/BRLogo.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/BRLogo.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.Key_ListPadHor.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_ListPadHor.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_ListPadHor.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.Key_ListPadHor_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_ListPadHor_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_ListPadHor_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.Key_ListPadVer.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_ListPadVer.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_ListPadVer.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.Key_ListPadVer_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_ListPadVer_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_ListPadVer_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.Key_NumPad.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_NumPad.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_NumPad.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.Key_NumPad_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_NumPad_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_NumPad_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.ProgressBorder.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/ProgressBorder.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/ProgressBorder.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.Slider_09x09.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Slider_09x09.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Slider_09x09.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.Slider_ArrowRightGray.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Slider_ArrowRightGray.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Slider_ArrowRightGray.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.Slider_ArrowUpGray.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Slider_ArrowUpGray.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Slider_ArrowUpGray.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.Slider_BallGray.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Slider_BallGray.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Slider_BallGray.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.alarm.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/alarm.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/alarm.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.button_backward.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_backward.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_backward.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.button_backward_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_backward_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_backward_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.button_decrease.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_decrease.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_decrease.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.button_decrease_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_decrease_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_decrease_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.button_default.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_default.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_default.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.button_default_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_default_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_default_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.button_forward.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_forward.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_forward.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.button_forward_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_forward_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_forward_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.button_global_area.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_global_area.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_global_area.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.button_global_area_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_global_area_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_global_area_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.button_increase.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_increase.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_increase.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.button_increase_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_increase_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_increase_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.button_radio.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_radio.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_radio.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.button_radio_selected.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_radio_selected.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_radio_selected.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.button_scroll_down.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_down.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_down.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.button_scroll_down_multi.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_down_multi.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_down_multi.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.button_scroll_down_multi_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_down_multi_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_down_multi_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.button_scroll_down_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_down_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_down_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.button_scroll_left.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_left.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_left.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.button_scroll_left_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_left_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_left_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.button_scroll_right.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_right.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_right.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.button_scroll_right_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_right_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_right_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.button_scroll_up.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_up.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_up.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.button_scroll_up_multi.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_up_multi.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_up_multi.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.button_scroll_up_multi_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_up_multi_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_up_multi_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.button_scroll_up_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_up_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/button_scroll_up_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.checkbox.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/checkbox.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/checkbox.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.checkbox_checked.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/checkbox_checked.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/checkbox_checked.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.checkbox_small.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/checkbox_small.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/checkbox_small.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.checkbox_small_checked.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/checkbox_small_checked.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/checkbox_small_checked.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.frame_header.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/frame_header.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/frame_header.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.global_area_gradient_downside.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/global_area_gradient_downside.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/global_area_gradient_downside.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.global_area_gradient_upside.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/global_area_gradient_upside.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/global_area_gradient_upside.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.information.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/information.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/information.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.warning.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/warning.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/warning.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.gauge_200x200_round_nodiv.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/gauge_200x200_round_nodiv.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/gauge_200x200_round_nodiv.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.gauge_NeedleRed100x11_1.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/gauge_NeedleRed100x11_1.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/gauge_NeedleRed100x11_1.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.global_area_gradient_downside_0.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/global_area_gradient_downside_0.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/global_area_gradient_downside_0.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.global_area_gradient_upside_0.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/global_area_gradient_upside_0.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/global_area_gradient_upside_0.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.Key_AlphaPadQVGA_Layer1.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_AlphaPadQVGA_Layer1.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_AlphaPadQVGA_Layer1.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.Key_AlphaPadQVGA_Layer1_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_AlphaPadQVGA_Layer1_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_AlphaPadQVGA_Layer1_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.Key_AlphaPadQVGA_Layer2.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_AlphaPadQVGA_Layer2.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_AlphaPadQVGA_Layer2.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.Key_AlphaPadQVGA_Layer2_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_AlphaPadQVGA_Layer2_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_AlphaPadQVGA_Layer2_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.Key_AlphaPadQVGA_Layer3.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_AlphaPadQVGA_Layer3.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_AlphaPadQVGA_Layer3.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.Key_AlphaPadQVGA_Layer3_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_AlphaPadQVGA_Layer3_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/Key_AlphaPadQVGA_Layer3_pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.checkbox_small_gray.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/checkbox_small_gray.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/checkbox_small_gray.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/bminfo.pp420.vco: $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/pp420.bminfo $(AS_PROJECT_PATH)/Logical/Visu/Bitmaps/pp420.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


#Bitmaps END




# Trend Configuration
TRE_OBJECTS_Visu = $(addprefix $(TEMP_PATH_Visu)/tre., $(notdir $(TRE_SOURCES_Visu:.tre=.vco)))

$(TEMP_PATH_Visu)/tre.Trend_Temperature.vco: $(AS_PROJECT_PATH)/Logical/Visu/Trends/Trend_Temperature.tre
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


#Trend Configuration END




# Trend Data
TRD_OBJECTS_Visu = $(addprefix $(TEMP_PATH_Visu)/trd., $(notdir $(TRD_SOURCES_Visu:.trd=.vco)))

$(TEMP_PATH_Visu)/trd.CPUTemperature.vco: $(AS_PROJECT_PATH)/Logical/Visu/Trends/CPUTemperature.trd
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


$(TEMP_PATH_Visu)/trd.ROOMTemperature.vco: $(AS_PROJECT_PATH)/Logical/Visu/Trends/ROOMTemperature.trd
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


#Trend Data END




# Trend Data Configuration
TDC_OBJECTS_Visu = $(addprefix $(TEMP_PATH_Visu)/tdc., $(notdir $(TDC_SOURCES_Visu:.tdc=.vco)))

$(TEMP_PATH_Visu)/tdc.TrendData.vco: $(AS_PROJECT_PATH)/Logical/Visu/Trends/TrendData.tdc
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 3950


#Trend Data Configuration END


#
# Borders
#
BDR_SOURCES_Visu=$(AS_PROJECT_PATH)/Logical/Visu/Borders/Flat_black.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Flat_grey.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/RaisedInner.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Raised.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/SliderBorder09.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/SunkenOuter.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Sunken.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Backward.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Backward_pressed.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Decrease.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Decrease_pressed.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Forward.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Forward_pressed.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Global_Area.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Global_Area_pressed.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Increase.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Increase_pressed.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Multi_Scroll_Down.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Multi_Scroll_Down_pressed.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Multi_Scroll_Up.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Multi_Scroll_Up_pressed.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Radio.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Radio_selected.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Scoll_Up.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Scoll_Up_pressed.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Scroll_Down.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Scroll_Down_pressed.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Scroll_Left.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Scroll_Left_pressed.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Scroll_Right.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_Scroll_Right_pressed.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/Button_pressed.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/CheckBox_checked.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/FrameHeader.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/ProgressBarBorder.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/SunkenNG.bdr $(AS_PROJECT_PATH)/Logical/Visu/Borders/SunkenNGgray.bdr 
BDR_OBJECTS_Visu=$(TEMP_PATH_Visu)/bdr.Bordermanager.vco
$(TEMP_PATH_Visu)/bdr.Bordermanager.vco: $(BDR_SOURCES_Visu)
	$(VCC) -f '$<' -o '$@' -pkg '$(SRC_PATH_Visu)' $(BDRFLAGS_Visu) $(VCCFLAGS_Visu) -p Visu
#
# Logical fonts
#
$(TEMP_PATH_Visu)/lfnt.en.vco: $(TEMP_PATH_Visu)/en.lfnt
	 $(VCC) -f '$<' -o '$@' $(LFNTFLAGS_Visu) $(VCCFLAGS_Visu) -p Visu
$(TEMP_PATH_Visu)/lfnt.de.vco: $(TEMP_PATH_Visu)/de.lfnt
	 $(VCC) -f '$<' -o '$@' $(LFNTFLAGS_Visu) $(VCCFLAGS_Visu) -p Visu
LFNT_OBJECTS_Visu=$(TEMP_PATH_Visu)/lfnt.en.vco $(TEMP_PATH_Visu)/lfnt.de.vco 

#Runtime Object
$(VCR_OBJECT_Visu) : $(VCR_SOURCE_Visu)
	$(VCC) -f '$<' -o '$@' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -sl de $(VCCFLAGS_Visu) -rt  -p Visu -so $(VC_STATIC_OPTIONS_Visu)
# Local resources Library rules
LIB_LOCAL_RES_Visu=$(TEMP_PATH_Visu)/localres.vca
$(LIB_LOCAL_RES_Visu) : $(TEMP_PATH_Visu)/Visu02.ccf

# Bitmap Library rules
LIB_BMP_RES_Visu=$(TEMP_PATH_Visu)/bmpres.vca
$(LIB_BMP_RES_Visu) : $(TEMP_PATH_Visu)/Visu03.ccf
$(BMGRP_OBJECTS_Visu) : $(PALFILE_Visu) $(VC_LANGUAGES_Visu)
$(BMINFO_OBJECTS_Visu) : $(PALFILE_Visu)

BUILD_FILE_Visu=$(TEMP_PATH_Visu)/BuildFiles.arg
$(BUILD_FILE_Visu) : BUILD_FILE_CLEAN_Visu $(BUILD_SOURCES_Visu)
BUILD_FILE_CLEAN_Visu:
	$(RM) /F /Q '$(BUILD_FILE_Visu)' 2>nul
#All Modules depending to this project
PROJECT_MODULES_Visu=$(AS_CPU_PATH)/Visu01.br $(AS_CPU_PATH)/Visu02.br $(AS_CPU_PATH)/Visu03.br $(FONT_MODULES_Visu) $(SHARED_MODULE)

# General Build rules

$(TARGET_FILE_Visu): $(PROJECT_MODULES_Visu) $(TEMP_PATH_Visu)/Visu.prj
	$(MODGEN) -m $(VCSTPOST) -v V1.00.0 -f '$(TEMP_PATH_Visu)/Visu.prj' -o '$@' -vc '$(VCOBJECT_Visu)' $(DEPENDENCIES_Visu) $(addprefix -d ,$(notdir $(PROJECT_MODULES_Visu:.br=)))

$(AS_CPU_PATH)/Visu01.br: $(TEMP_PATH_Visu)/Visu01.ccf
	$(MODGEN) -m $(VCLOD) -v V1.00.0 -b -vc '$(VCOBJECT_Visu)' -f '$<' -o '$@' $(DEPENDENCIES_Visu)

$(AS_CPU_PATH)/Visu02.br: $(TEMP_PATH_Visu)/Visu02.ccf
	$(MODGEN) -m $(VCLOD) -v V1.00.0 -b -vc '$(VCOBJECT_Visu)' -f '$<' -o '$@' $(DEPENDENCIES_Visu)

$(AS_CPU_PATH)/Visu03.br: $(TEMP_PATH_Visu)/Visu03.ccf
	$(MODGEN) -m $(VCLOD) -v V1.00.0 -b -vc '$(VCOBJECT_Visu)' -f '$<' -o '$@' $(DEPENDENCIES_Visu)

# General Build rules END
$(LIB_LOCAL_OBJ_Visu) : $(TEMP_PATH_Visu)/Visu01.ccf

# Main Module
$(TEMP_PATH_ROOT_Visu)/Objects/$(AS_CONFIGURATION)/$(AS_PLC)/VCShared/Visu.vcm:
$(TEMP_PATH_Visu)/Visu.prj: $(TEMP_PATH_ROOT_Visu)/Objects/$(AS_CONFIGURATION)/$(AS_PLC)/VCShared/Visu.vcm
	$(VCDEP) -m '$(TEMP_PATH_ROOT_Visu)/Objects/$(AS_CONFIGURATION)/$(AS_PLC)/VCShared/Visu.vcm' -s '$(AS_CPU_PATH)/VCShared/Shared.vcm' -p '$(AS_PATH)/AS/VC/Firmware' -c '$(AS_CPU_PATH)' -o Visu -proj Visu -fw '$(VCFIRMWAREPATH)' -hw '$(CPUHWC)'
	$(VCPL) $(notdir $(PROJECT_MODULES_Visu:.br=,4)) Visu,2 -o '$@' -p Visu -vc 'Visu' -verbose 'False' -fl '$(TEMP_PATH_ROOT_Visu)/Objects/$(AS_CONFIGURATION)/$(AS_PLC)/VCShared/Visu.vcm' -vcr '$(VCR_SOURCE_Visu)' -prj '$(AS_PROJECT_PATH)' -warningLevel2 -sfas

# 01 Module

DEL_TARGET01_LFL=$(TEMP_PATH_Visu)\Visu01.ccf.lfl
$(TEMP_PATH_Visu)/Visu01.ccf: $(LIB_SHARED) $(SHARED_CCF) $(LIB_BMP_RES_Visu) $(TEMP_PATH_Visu)/Visu03.ccf $(LIB_LOCAL_RES_Visu) $(TEMP_PATH_Visu)/Visu02.ccf $(DIS_OBJECTS_Visu) $(PAGE_OBJECTS_Visu) $(VCS_OBJECTS_Visu) $(VCVK_OBJECTS_Visu) $(VCRT_OBJECTS_Visu) $(TPR_OBJECTS_Visu) $(TXTGRP_OBJECTS_Visu) $(LAYER_OBJECTS_Visu) $(VCR_OBJECT_Visu) $(TDC_OBJECTS_Visu) $(TRD_OBJECTS_Visu) $(TRE_OBJECTS_Visu) $(PRC_OBJECTS_Visu) $(SCR_OBJECTS_Visu)
	-@CMD if exist /Q "$(DEL_TARGET01_LFL)" /C DEL /F /Q "$(DEL_TARGET01_LFL)" 2>nul
	@$(VCFLGEN) '$@.lfl' '$(LIB_SHARED)' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)'
	@$(VCFLGEN) '$@.lfl' '$(LIB_BMP_RES_Visu)' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)'
	@$(VCFLGEN) '$@.lfl' '$(LIB_LOCAL_RES_Visu)' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)'
	@$(VCFLGEN) '$@.lfl' '$(DIS_OBJECTS_Visu:.vco=.vco,)' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)'
	@$(VCFLGEN) '$@.lfl' -mask .page -vcp '$(AS_PROJECT_PATH)/Logical/Visu/Package.vcp' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)'
	@$(VCFLGEN) '$@.lfl' '$(VCS_OBJECTS_Visu:.vco=.vco,)' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)'
	@$(VCFLGEN) '$@.lfl' -mask .vcvk -vcp '$(AS_PROJECT_PATH)/Logical/Visu/Package.vcp' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)'
	@$(VCFLGEN) '$@.lfl' '$(VCRT_OBJECTS_Visu:.vco=.vco,)' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)'
	@$(VCFLGEN) '$@.lfl' '$(TPR_OBJECTS_Visu:.vco=.vco,)' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)'
	@$(VCFLGEN) '$@.lfl' -mask .txtgrp -vcp '$(AS_PROJECT_PATH)/Logical/Visu/Package.vcp' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)'
	@$(VCFLGEN) '$@.lfl' -mask .layer -vcp '$(AS_PROJECT_PATH)/Logical/Visu/Package.vcp' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)'
	@$(VCFLGEN) '$@.lfl' '$(VCR_OBJECT_Visu:.vco=.vco,)' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)'
	@$(VCFLGEN) '$@.lfl' -mask .tdc -vcp '$(AS_PROJECT_PATH)/Logical/Visu/Package.vcp' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)'
	@$(VCFLGEN) '$@.lfl' -mask .trd -vcp '$(AS_PROJECT_PATH)/Logical/Visu/Package.vcp' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)'
	@$(VCFLGEN) '$@.lfl' '$(TRE_OBJECTS_Visu:.vco=.vco,)' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)'
	@$(VCFLGEN) '$@.lfl' '$(PRC_OBJECTS_Visu:.vco=.vco,)' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)'
	@$(VCFLGEN) '$@.lfl' '$(SCR_OBJECTS_Visu:.vco=.vco,)' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)'
	$(LINK) '$@.lfl' -o '$@' -p Visu -lib '$(LIB_LOCAL_OBJ_Visu)' -P '$(AS_PROJECT_PATH)' -m 'local objects' -profile 'False' -warningLevel2 -sfas
# 01 Module END

# 02 Module

DEL_TARGET02_LFL=$(TEMP_PATH_Visu)\Visu02.ccf.lfl
$(TEMP_PATH_Visu)/Visu02.ccf: $(LIB_SHARED) $(SHARED_CCF) $(LIB_BMP_RES_Visu) $(TEMP_PATH_Visu)/Visu03.ccf $(BDR_OBJECTS_Visu) $(LFNT_OBJECTS_Visu) $(CLM_OBJECTS_Visu)
	-@CMD if exist /Q "$(DEL_TARGET02_LFL)" /C DEL /F /Q "$(DEL_TARGET02_LFL)" 2>nul
	@$(VCFLGEN) '$@.lfl' '$(LIB_SHARED)' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)'
	@$(VCFLGEN) '$@.lfl' '$(LIB_BMP_RES_Visu)' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)'
	@$(VCFLGEN) '$@.lfl' '$(BDR_OBJECTS_Visu:.vco=.vco,)' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)'
	@$(VCFLGEN) '$@.lfl' '$(LFNT_OBJECTS_Visu:.vco=.vco,)' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)'
	@$(VCFLGEN) '$@.lfl' '$(CLM_OBJECTS_Visu:.vco=.vco,)' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)'
	$(LINK) '$@.lfl' -o '$@' -p Visu -lib '$(LIB_LOCAL_RES_Visu)' -P '$(AS_PROJECT_PATH)' -m 'local resources' -profile 'False' -warningLevel2 -sfas
# 02 Module END

# 03 Module

DEL_TARGET03_LFL=$(TEMP_PATH_Visu)\Visu03.ccf.lfl
$(TEMP_PATH_Visu)/Visu03.ccf: $(LIB_SHARED) $(SHARED_CCF) $(BMGRP_OBJECTS_Visu) $(BMINFO_OBJECTS_Visu) $(PALFILE_Visu)
	-@CMD if exist /Q "$(DEL_TARGET03_LFL)" /C DEL /F /Q "$(DEL_TARGET03_LFL)" 2>nul
	@$(VCFLGEN) '$@.lfl' '$(LIB_SHARED)' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)'
	@$(VCFLGEN) '$@.lfl' -mask .bmgrp -vcp '$(AS_PROJECT_PATH)/Logical/Visu/Package.vcp' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)'
	@$(VCFLGEN) '$@.lfl' -mask .bminfo -vcp '$(AS_PROJECT_PATH)/Logical/Visu/Package.vcp' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)'
	$(LINK) '$@.lfl' -o '$@' -p Visu -lib '$(LIB_BMP_RES_Visu)' -P '$(AS_PROJECT_PATH)' -m 'bitmap resources' -profile 'False' -warningLevel2 -sfas
# 03 Module END

# Post Build Steps

.PHONY : vcPostBuild_Visu

vcPostBuild_Visu :
	$(VCC) -pb -vcm '$(TEMP_PATH_Visu)/MODULEFILES.vcm' -fw '$(VCFIRMWAREPATH)' $(VCCFLAGS_Visu) -p Visu

# Post Build Steps END
