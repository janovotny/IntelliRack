#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>


//This function calls
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
	return 0;
}

