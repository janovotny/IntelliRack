#ifndef __INTELLI_UTILS_H__
#define __INTELLI_UTILS_H__

char* dvd_name();

FILE* system_out(char *command);

#define PANEL_READ "./utils/ReadPanelPV.sh %s"
#define PANEL_WRITE "./utils/WritePanelPV.sh %s %s"

#define DRIVE_READ "./utils/ReadPanelPV.sh %s"
#define DRIVE_WRITE "./utils/WritePanelPV.sh %s %s"

#endif
