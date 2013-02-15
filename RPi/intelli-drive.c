#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "intelli-utils.h"

/****h* RPi/drive
* NAME
* 	Drive -- Collection of functions for communication with drives 
* FUNCTION
* 	This module provides multiple functions for communicating with drives.
*
*****/

/****f* RPi/secure_position
* FUNCTION
* 	This function tells the drives to move into a secure position.
* OUTPUT
* 	- Returns 1 if the secure position is reached otherwise 0
* SOURCE
*/ 
 int secure_position(){
	 //Not implemented yet
	return 1;
}
/*****/ 

/****f* RPi/drive_position
* FUNCTION
* 	This function tells the drives to move to a specifig position.
* OUTPUT
* 	- Returns 1 if the position is reached otherwise 0
* SOURCE
*/ 
 int drive_position(long xpos, long ypos){
	 //Not implemented yet
	return 0;
}
/*****/ 



/****f* RPi/get_disc
* FUNCTION
* 	This function tells the drives to move to a specifig position.
* OUTPUT
* 	- Returns 1 if the position is reached otherwise 0
* SOURCE
*/ 
 int get_disc(int pos){
	//Not implemented yet
	char update_index[1024];
	
	fprintf(stderr, "Get disc from %i\n", pos);

	sprintf(update_index, "sed '/^%i:/d' ./storage");
	system(update_index);
	return 0;
}
/*****/ 



/****f* RPi/set_disc
* FUNCTION
* 	This function tells the drives to move to a specifig position.
* OUTPUT
* 	- Returns 1 if the position is reached otherwise 0
* SOURCE
*/ 
int set_disc(char* filepath){
	//Not implemented yet
	FILE* FilePtr;
	int next_free_place=0;
	
	
	fprintf(stderr, "Set disc with data %s\n", filepath);
	FilePtr=fopen("./storage","a");
	fprintf(FilePtr,"%i:%s\n",next_free_place, filepath);
	fclose(FilePtr);

	write_outputs(PANEL_WRITE, "Action","0");
	write_outputs(PANEL_WRITE, "SetPage","1");

	return 0;
}
/*****/ 
