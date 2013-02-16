#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "intelli-utils.h"

/****h* RPi/IntelliRack
* NAME
* 	Mainfile
* FUNCTION
* 	This module contains the sequence control.
*
*****/

enum panel_pages{
	PAGE_WAIT, PAGE_HOME, PAGE_LIB, PAGE_TITLE, PAGE_INFO_IG, PAGE_DISKREADY, PAGE_EDIT, PAGE_SETTINGS=8, PAGE_ABOUT  
};

enum panel_actions{
	LIB=1, PLACE, SET, ABOUT, SELECT, PLACE_HOLDER, CONFIRM_INFORMATIONS, CONFIRM_DISK_IN_DRIVE, EDIT=20, SAFE_EDIT, HOME 
};

struct {
	int panel;
	char searchstring[1024];
	int motion;
	int move_pos;
	int start_movement;
} intellidata;

/****f* RPi/read_inputs
* FUNCTION
* 	Function reads input.
* SOURCE
*/ 
void read_inputs(char *source, char *variable){
	int panel, com;
	char query[1024];
	FILE* tmp;
	
	sprintf(query, source, variable);
	
	tmp=system_out(query);
	if(EOF==fscanf(tmp, "%i", &panel))panel=-2;
	fclose(tmp);

	sprintf(query, "/tmp/%s", variable);

	tmp=fopen(query, "ab+");
	if(EOF==fscanf(tmp, "%i", &com))com=-2;
	fclose(tmp);

	if(strcmp(source, PANEL_READ)==0)
	{
		if(panel>0){
			printf("Read %i from Panelvariable %s\n",panel, variable);
			intellidata.panel=panel;
		} else if(com>0){
			printf("Read %i from Textfile %s\n", com, query);
			intellidata.panel=com;
		} else {
			intellidata.panel=panel;
		}
	} else {
		printf("Read %i from Drivevariable %s\n",panel, variable);
		printf("Read %i from Textfile %s\n", com, query);		
	}
	return;
}
/*****/


/****f* RPi/write_outputs
* FUNCTION
* 	Function writes the data to the panel and the drive.
* SOURCE
*/ 
void write_outputs(char *destination, char* variable, char* value){
	static int panel;
	char query[1024];
	FILE* tmp;
	
	sprintf(query, destination, variable, value);
	
	tmp=system_out(query);
	fclose(tmp);
	
	sprintf(query, "/tmp/%s", variable);
	tmp=fopen(query, "w");
	fputs(value, tmp);
	fclose(tmp);

	return;
}
/*****/

/****f* RPi/main
* FUNCTION
* 	Main function with cyclic calls.
* SOURCE
*/ 
int main(){
	char read_search=0;
	char write_db=0;
	//Vars for new disk cmd and edit req
	char name[4096]={0};
	char exec[4096]={0};
	char *title;

	int disc_pos,i;

	FILE* FilePtr;

	intellidata.panel=-2;
	intellidata.searchstring[0]=0;
	
	//Wait for connection
	printf("[Booting]\n");
	while(intellidata.panel==-2)read_inputs(PANEL_READ, "Action");	
	printf("[Connected]\n");
	
	write_outputs(PANEL_WRITE, "Action", "0");
	write_outputs(PANEL_WRITE, "SetPage", "1");
	
	while(1){
		char edited_title[64]={0};
		char tags[64]={0};
		char query[1024]={0};

		read_inputs(PANEL_READ, "Action");

		if(read_search){
			//Not implemented yet
		}

		switch(intellidata.panel){
			case HOME:
				system("eject /dev/sr0 -tq");
				write_outputs(PANEL_WRITE, "Action","0");
				write_outputs(PANEL_WRITE, "SetPage","1");
				read_search=0;
			break;
			case LIB:
				write_outputs(PANEL_WRITE, "Action","0");
				write_outputs(PANEL_WRITE, "SetPage","2");
			break;
			case PLACE:
				if(secure_position()){
					system("eject /dev/sr0");
					write_outputs(PANEL_WRITE, "Action","0");
					write_outputs(PANEL_WRITE, "SetPage","5");
				}
			break;
			case SET:
					write_outputs(PANEL_WRITE, "Action","0");
					write_outputs(PANEL_WRITE, "SetPage","8");
			break;
			case ABOUT:
					write_outputs(PANEL_WRITE, "Action","0");
					write_outputs(PANEL_WRITE, "SetPage","9");
			break;
			case SELECT:
				//Analyse selection
				write_outputs(PANEL_WRITE, "Action","0");	
				write_outputs(PANEL_WRITE, "SetPage","3");
			break;
			case CONFIRM_INFORMATIONS:
				if(read_search){
					get_disc(disc_pos);
				} else {
					set_disc(name);
				}
			break;
			case CONFIRM_DISK_IN_DRIVE:
				system("eject /dev/sr0 -tq");
				title=dvd_name();
				title[strlen(title)+1]=0;

				sprintf(name, "./utils/disk_analytic.sh \"%s\"", title);

				FilePtr=system_out(name);
				fread(name, 4090, 1, FilePtr);
				fclose(FilePtr);

				write_outputs(PANEL_WRITE, "Action","0");
				write_outputs(PANEL_WRITE, "SetPage","3");
				write_outputs(PANEL_WRITE, "Edit","0");

				sprintf(exec, "./utils/send_file.pl \"%s\"", name);
				
				
				//Chunk filter, because of strange sprintf behavior
				i=0;
				while(exec[i]!=0){
					if(exec[i]=='\n'){
						exec[i]='"';
						exec[i+1]='\0';
						break;
					}
					i++;
				}
				
				i=0;
				while(name[i]!=0){
					if(name[i]=='\n'){
						name[i]=0;
						break;
					}
					i++;
				}
				
				fclose(system_out(exec));

			break;
			case EDIT:
				write_outputs(PANEL_WRITE, "Action","0");
				write_outputs(PANEL_WRITE, "SetPage","6");
			break;
			case SAFE_EDIT:
				sprintf(query, PANEL_READ, "Strings[0]");
				FilePtr=system_out(query);
				fread(edited_title, 1, 40, FilePtr);
				fclose(FilePtr);

				sprintf(query, PANEL_READ, "Strings[1]");
				FilePtr=system_out(query);
				fread(tags, 1, 40, FilePtr);
				fclose(FilePtr);

				fprintf(stderr,"Name: %s\nTitle: %s\nTags: %s\n",name, edited_title, tags);
				FilePtr=fopen(name,"w");
				fprintf(FilePtr, "%s\nTitle: %s\nTags: %s\n",edited_title,edited_title, tags);
				fclose(FilePtr);
				
				write_outputs(PANEL_WRITE, "Action","0");
				write_outputs(PANEL_WRITE, "SetPage","3");
				system(exec);
			break;
		}
	}	
}
/*****/
