#ifndef __INTELLI_UTILS_H__
#define __INTELLI_UTILS_H__

char* dvd_name();

FILE* system_out(char *command);

#define PANEL_READ "http://192.168.0.101/goforms/ReadWrite?read=1&variable=%s"
#define PANEL_WRITE "http://192.168.0.101/goforms/ReadWrite?write=1&variable=%s&value=%s"

#endif
