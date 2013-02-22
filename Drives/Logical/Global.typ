(********************************************************************
 * COPYRIGHT --  
 ********************************************************************
 * File: Global.typ
 * Author: florian
 * Created: February 05, 2013
 ********************************************************************
 * Global data types of project Drives
 ********************************************************************)

TYPE
	tDrive : 	STRUCT 
		ZeroOffset : DINT;
		SetPos : DINT;
		Ctrl : UINT;
		Mode : SINT;
		Brake : BOOL;
		GetPos : DINT;
		Status : UINT;
		Case : USINT;
	END_STRUCT;
END_TYPE
