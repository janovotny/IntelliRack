#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "intelli-utils.h"

/****h* IntelliRack/Utils
* NAME
* 	Utils -- Collection of functions 
* FUNCTION
* 	This module provides multiple functions
*
*****

/****f* IntelliRack/Utils/DVDName
* FUNCTION
* 	This function reads out the DVD label
* OUTPUT
* 	- Pointer to DVD-name
* SOURCE
*/ 
  char* DVDName(){
	FILE *filehandle = NULL;
	static char title[56]={0};
	char *dvd_device="/dev/dvd";

	int  i;

	if (! (filehandle = fopen(dvd_device, "r"))) {
		fprintf(stderr, "Couldn't open %s for title\n", dvd_device);
		strcpy(title, "unknown");
	}

	if ( fseek(filehandle, 32808, SEEK_SET )) {
		fclose(filehandle);
		fprintf(stderr, "Couldn't seek in %s for title\n", dvd_device);
		strcpy(title, "unknown");
	}

	if ( 32 != (i = fread(title, 1, 32, filehandle)) ) {
		fclose(filehandle);
		fprintf(stderr, "Couldn't read enough bytes for title.\n");
		strcpy(title, "unknown");
	}

	fclose (filehandle);

	title[32] = '\0';
	while(i-- > 2)
	if(title[i] == ' ') title[i] = '\0';

	printf("%s", title);
	
	return title;
}
/*****/ 


FILE* system_out(char *command){
	
	int sout1;
	fpos_t pos;
	char buffer [L_tmpnam];	
	FILE* tmp_file;

	tmp_file=tmpfile();

	printf("stdout, ");
	fflush(stdout);

	fgetpos(stdout, &pos);
	sout1=dup(1);

	tmp_file=fopen(buffer, "wb+");
	dup2(fileno(tmp_file), 1);

	system("echo Hallo XD");

	fclose(tmp_file);

	dup2(sout1, 1);
	close(sout1);

	fsetpos(stdout, &pos);
	
	printf("stdout again\n");
	fflush(stdout);
	getc(stdin);
	rewind(tmp_file);
	return tmp_file;
}
