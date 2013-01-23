#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char title[56]={0};
char *dvd_device="/dev/sr0";

int main(){
	FILE *filehandle = 0;
	int  i;

	if (! (filehandle = fopen(dvd_device, "r"))) {
		fprintf(stderr, "Couldn't open %s for title\n", dvd_device);
		strcpy(title, "unknown");
		return -1;
	}

	if ( fseek(filehandle, 32808, SEEK_SET )) {
		fclose(filehandle);
		fprintf(stderr, "Couldn't seek in %s for title\n", dvd_device);
		strcpy(title, "unknown");
		return -1;
	}

	if ( 32 != (i = fread(title, 1, 32, filehandle)) ) {
		fclose(filehandle);
		fprintf(stderr, "Couldn't read enough bytes for title.\n");
		strcpy(title, "unknown");
		return -1;
	}

	fclose (filehandle);

	title[32] = '\0';
	while(i-- > 2)
	if(title[i] == ' ') title[i] = '\0';

	printf("%s", title);

	return 0;
}
