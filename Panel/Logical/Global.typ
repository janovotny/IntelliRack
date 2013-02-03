(********************************************************************
 * COPYRIGHT --  
 ********************************************************************
 * File: Global.typ
 * Author: florian
 * Created: November 16, 2012
 ********************************************************************
 * Global data types of project CANOpenMaster
 ********************************************************************)

TYPE
	LibVisapi5_ST_state_type : 	STRUCT  (*State variables of VISAPI commands*)
		va_srelease : UINT; (*State variable of command VA_Srelease*)
		va_saccess : UINT; (*State variable of command VA_Saccess*)
		va_loadbitmap : UINT; (*State variable of command VA_LoadBitmap*)
		va_blitbitmap : UINT; (*State variable of command VA_BlitBitmap*)
		va_freebitmap : UINT; (*State variable of command VA_FreeBitmap*)
		va_attach : UINT; (*State variable of command VA_Attach*)
		va_detach : UINT; (*State variable of command VA_Detach*)
		va_redraw : UINT; (*State variable of command VA_Redraw*)
		bmpcase : UINT;
	END_STRUCT;
END_TYPE
