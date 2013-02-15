#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "intelli-utils.h"

/****h* RPi/utils
* NAME
* 	Utils -- Collection of functions 
* FUNCTION
* 	This module provides multiple functions.
*
*****

/****f* RPi/dvd_name
* FUNCTION
* 	This function reads out the DVD label.
* OUTPUT
* 	- Pointer to the dvd's name
* SOURCE
*/ 
 char* dvd_name(){
	FILE *filehandle = NULL;
	static char title[256]={0};
	char *dvd_device="/dev/sr0";

	int i=40, fail_ctu=0;

try_open_disc:
	fail_ctu++;

	if (! (filehandle = fopen(dvd_device, "r"))) {
		fprintf(stderr, "Couldn't open %s for title\n", dvd_device);
		strcpy(title, "unknown\0");
if(fail_ctu<100)goto try_open_disc;
	} else {
		if ( fseek(filehandle, 32808, SEEK_SET )) {
			fprintf(stderr, "Couldn't seek in %s for title\n", dvd_device);
			strcpy(title, "unknown\0");
			fclose (filehandle);
if(fail_ctu<100)goto try_open_disc;
		} else {
			if ( 32 != (i = fread(title, 1, 32, filehandle)) ) {
				fprintf(stderr, "Couldn't read enough bytes for title.\n");
				strcpy(title, "unknown\0");
				fclose (filehandle);
if(fail_ctu<100)goto try_open_disc;
			}
		}
		fclose (filehandle);
	}


	title[32] = '\0';
	while(i-- > 2)
	if(title[i] == ' '||title[i] == '\n') title[i] = '\0';

	return title;
}
/*****/ 

       
/****f* RPi/system_out
* FUNCTION
* 	Executes a shell command.
* INPUTS
*	char *command - Command to execute
* OUTPUT
*	Pointer to tmpfile containing the command's stdout.
* SOURCE
*/
FILE* system_out(char *command){
	
	int sout1,i;
	fpos_t pos;
	char buffer[]="sysout.stdout";	
	FILE* tmp_file;
	
	fprintf(stdout, "%s\n", command);

	fflush(stdout);

	fgetpos(stdout, &pos);
	sout1=dup(1);

	tmp_file=fopen(buffer, "wb+");
	dup2(fileno(tmp_file), 1);

	system(command);

	dup2(sout1, 1);
	close(sout1);

	fsetpos(stdout, &pos);
	
	fflush(stdout);

	rewind(tmp_file);
	return tmp_file;
}
/*****/
