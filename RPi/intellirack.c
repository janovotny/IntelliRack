#include <stdio.h>
#include <stdlib.h>

#include "intelli-utils.h"

/****h* RPi/IntelliRack
* NAME
* 	Mainfile
* FUNCTION
* 	This module contains the sequence control.
*
*****/

enum panel_pages{
	PAGE_WAIT, PAGE_HOME, PAGE_LIB, PAGE_TITLE, PAGE_INFO_IG, PAGE_DISKREADY, PAGE_SETTINGS=8, PAGE_ABOUT  
};

enum panel_actions{
	LIB=1, PLACE, SET, ABOUT, SELECT, CONFIRM_TITLE, CONFIRM_INFORMATIONS, CONFIRM_DISK_IN_DRIVE, HOME=22 
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
		printf("Read %i from Panelvariable %s\n",panel, variable);
		printf("Read %i from Textfile %s\n", com, query);
		if(panel>=0){
			intellidata.panel=panel;
		} else if(com>=0){
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
	intellidata.panel=-2;
	intellidata.searchstring[0]=0;
	
	//Wait for connection
	printf("[Booting]\n");
	while(intellidata.panel==-2)read_inputs(PANEL_READ, "Action");	
	printf("[Connected]\n");
	
	write_outputs(PANEL_WRITE, "Action", "0");
	write_outputs(PANEL_WRITE, "SetPage", "1");
	
	while(1){
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
			case CONFIRM_TITLE:
				write_outputs(PANEL_WRITE, "Action","0");
				write_outputs(PANEL_WRITE, "SetPage","4");
			break;
			case CONFIRM_INFORMATIONS:
				//get|place dvd then back to menu
				write_outputs(PANEL_WRITE, "Action","0");
				write_outputs(PANEL_WRITE, "SetPage","1");
			break;
			case CONFIRM_DISK_IN_DRIVE:
				system("eject /dev/sr0 -tq");
				char name[1024]={0};

				FILE* tmp;
				sprintf(name, "./utils/disk_analytic.sh \"%s\"", dvd_name());
				tmp=system_out(name);
				fread(name, 1024, 1, tmp);
				fclose(tmp);
				while((tmp=fopen(name,"r"))==NULL)
				send_disc_data(tmp);
				close(tmp);

				write_outputs(PANEL_WRITE, "Action","0");
				write_outputs(PANEL_WRITE, "SetPage","3");
			break;
		}
	}	
}
/*****/
