/********************************************************************
 * COPYRIGHT --  
 ********************************************************************
 * Program: handler
 * File: handlerCyclic.c
 * Author: florian
 * Created: January 06, 2013
 ********************************************************************
 * Implementation of program handler
 ********************************************************************/

#include <bur/plctypes.h>

#ifdef _DEFAULT_INCLUDES
	#include <AsDefault.h>
#endif

/****h* Panel/Panelhandler
* NAME
* 	Panelhandler
* FUNCTION
* 	This module contains the slave for the panel.
*
*****/

/****f* Panel/load_image
* FUNCTION
* 	Function loads image from file and display it on screen.
*	Disabled by now because B&R uses a unusual image format
* SOURCE
*/
void load_image(){
	static int handle;
	if(handle == 0){
		handle = VA_Setup(1 , 'Visu'); //Get visualization handle
	} else {
		state.va_saccess = VA_Saccess(1,handle); //Get access to visualization *)
		if(state.va_saccess == 0){ // Check if access is OK *)
			switch(state.bmpcase){
				case 0:
					state.va_loadbitmap = VA_LoadBitmap(1, handle, "IMG", "0.png", &pBitmap);	// Load picture into memory
					if(state.va_loadbitmap == 0){
						//						state.va_redraw = VA_Redraw(1, handle); //Clean page befor drawing a new picture
						state.bmpcase++;
					}
					break;
				case 1:
					state.va_blitbitmap = VA_BlitBitmap(1, handle, pBitmap, 0, 0, 0, 0, 0, 0, 0);//Show picture at specific coordinates
					if(state.va_blitbitmap == 0)state.bmpcase++;
					break;
				case 2:
					state.va_freebitmap = VA_FreeBitmap(1, handle, &pBitmap); //Delete picture from memory
					if(state.va_freebitmap == 0){
					state.bmpcase++;
					}
				case 3:
					state.va_srelease = VA_Srelease(1, handle);
					state.bmpcase++;
					break;
			}
		}
	}
}
/*****/

/****f* Panel/handlerCyclic
* FUNCTION
*	This function is responsible for the page managment.
* SOURCE
*/ 
void _CYCLIC handlerCyclic(void)
{
	int i;

	SetPage=SetPage;
	GetPage=GetPage;
	Limit=Limit;
	Selection=Selection;
	
	for(i=0;i<100;i++){
		Search[i]=Search[i];
	}
	
	if(Action!=0){
		Edit=1;
		SetPage=0;
		Limit=0;
	}
	
	for(i=0;i<42;i++){
		Strings[i][0]=Strings[i][0];
	}
	
	if(GetPage==1){
		Strings[0][0]=0;
		Strings[1][0]=0;	
	}
	
	if(GetPage==3){
//		load_image();
	} else {
		state.bmpcase=0;
	}
}
/*****/