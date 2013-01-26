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

enum status{
	STOP, START, QUERY
};

enum panel_actions{
	HOME, SEARCH, TITLE, 
};

struct {
	int panel;
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
	static int panel;
	char query[1024];
	FILE* tmp;
	
	sprintf(query, PANEL_READ, "action");
	
	tmp=system_out(query);
	fscanf(tmp, "%i", &panel);
	fclose(tmp);

	intellidata.panel=panel;

	return;
}
/*****/


/****f* RPi/write_outputs
* FUNCTION
* 	Function writes the data to the panel and the drive.
* SOURCE
*/ 
void write_outputs(){
	static int panel;
	char query[1024];
	FILE* tmp;
	
	sprintf(query, PANEL_READ, "action");
	
	tmp=system_out(query);
	fscanf(tmp, "%i", &panel);
	fclose(tmp);

	intellidata.panel=panel;

	return;
}
/*****/

/****f* RPi/main
* FUNCTION
* 	Main function with cyclic calls.
* SOURCE
*/ 
int main(){
	enum status switcher=STOP;
	while(1){
		read_inputs();
		switch(switcher){
			case STOP:
				if(intellidata.panel!=HOME){
					
				} else {
					write_outputs();
				}
				break;

			case START:
				
				break;

			case QUERY:
				
				break;
		}
	}	
}
/*****/
