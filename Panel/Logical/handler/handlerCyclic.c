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

void load_image(){

}

void _CYCLIC handlerCyclic(void)
{
	int i;
	
	
	SetPage=SetPage;
	GetPage=GetPage;
	Limit=Limit;
	Selection=Selection;
	Search[0]=Search[0];
	
	if(Action!=0)SetPage=0;
	
	for(i=0;i<42;i++){
		Strings[i][0]=Strings[i][0];
	}
	
	if(GetPage==3){
		load_image();
	}
}
