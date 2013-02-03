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
	HOME, LIB, PLACE, SET, ABOUT, SELECT, CONFIRM_TITLE, CONFIRM_INFORMATIONS 
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
* 	Function reads panel input.
* SOURCE
*/ 
void read_inputs(){
	int panel, com;
	char query[1024];
	FILE* tmp;
	
	sprintf(query, PANEL_READ, "action");
	
	tmp=system_out(query);
	if(EOF==fscanf(tmp, "%i", &panel))panel=-2;
	fclose(tmp);

	tmp=system_out("touch /tmp/irin; cat /tmp/irin");
	if(EOF==fscanf(tmp, "%i", &com))com=-2;
	fclose(tmp);

	if(panel>=0){
		intellidata.panel=panel;
	} else if(com>=0){
		intellidata.panel=com;
	} else {
		intellidata.panel=panel;
	}

	return;
}
/*****/


/****f* RPi/write_outputs
* FUNCTION
* 	Function writes the data to the panel and the drive.
* SOURCE
*/ 
void write_outputs(char* variable, char* value){
	static int panel;
	char query[1024];
	FILE* tmp;
	
	sprintf(query, PANEL_WRITE, variable, value);
	
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
	while(intellidata.panel==-2)read_inputs();	
	printf("[Connected]\n");
	
	write_outputs("action","-1");
	write_outputs("SetPage","1");
	
	while(1){
		read_inputs();

		if(read_search){
			//Not implemented yet
		}

		switch(intellidata.panel){
			case HOME:
				system("eject -t");
				write_outputs("action","-1");
				write_outputs("SetPage","1");
				read_search=0;
			break;
			case LIB:
				write_outputs("action","-1");
				write_outputs("SetPage","2");
			break;
			case PLACE:
				if(secure_position()){
					system("eject");
					write_outputs("action","-1");
					write_outputs("SetPage","5");
				}
			break;
			case SET:
					write_outputs("action","-1");
					write_outputs("SetPage","8");
			break;
			case ABOUT:
					write_outputs("action","-1");
					write_outputs("SetPage","9");
			break;
			case SELECT:
				//get selection
				write_outputs("action","-1");
				write_outputs("SetPage","3");
			break;
			case CONFIRM_TITLE:
				system("eject -t");
				write_outputs("action","-1");
				write_outputs("SetPage","4");
			break;
			case CONFIRM_INFORMATIONS:
				//get|place dvd then back to menu
				write_outputs("action","-1");
				write_outputs("SetPage","0");
			break;
		}
	}	
}
/*****/
