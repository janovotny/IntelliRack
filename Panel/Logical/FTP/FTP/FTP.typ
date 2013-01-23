(********************************************************************
 * COPYRIGHT -- Bernecker + Rainer
 ********************************************************************
 * Program: NwFileSystem
 * File: NwFileSystem.typ
 * Author: Bernecker + Rainer
 * Created: April 21, 2009
 ********************************************************************
 * Local data types of program NwFileSystem
 ********************************************************************)

TYPE
	Network_typ : 	STRUCT 
		Command : Network_Command_typ; (*Structure Command (contains all command elements)*)
		Data : Network_Data_typ; (*Structure Data (contains all data informations)*)
		Functionblocks : Network_Functionblocks_typ; (*Structure Functionblocks (contains all FuBs)*)
	END_STRUCT;
	Network_Command_typ : 	STRUCT 
		bCfgSetFTPServer : BOOL; (*Command: Start the FTP server*)
		bCfgGetCIFSDefaultuser : BOOL; (*Command: Get CIFS default user settings*)
		bCfgSetCIFSDefaultuser : BOOL; (*Command: Set CIFS default user settings*)
		bCfgGetCIFSDomain : BOOL; (*Command: Get CIFS domain configuration*)
		bCfgSetCIFSDomain : BOOL; (*Command: Set CIFS domain configuration*)
	END_STRUCT;
	Network_Data_typ : 	STRUCT 
		DefaultUser : STRING[80]; (*Data variable for CfgGetCIFSDefaultuser() and CfgSetCIFSDefaultuser()*)
		DefaultPassword : STRING[80]; (*Data variable for CfgGetCIFSDefaultuser() and CfgSetCIFSDefaultuser()*)
		Domain : STRING[80]; (*Data variable for CfgGetCIFSDomain() and CfgSetCIFSDomain()*)
		Workgroup : USINT; (*Data variable for CfgGetCIFSDomain() and CfgSetCIFSDomain()*)
		Device : STRING[80]; (*Device string (contains the device path)*)
		Step : USINT; (*Step variable*)
	END_STRUCT;
	Network_Functionblocks_typ : 	STRUCT 
		CfgSetFTPServer_0 : CfgSetFTPServer; (*Functionblock CfgSetFTPServer()*)
		CfgGetCIFSDefaultuser_0 : CfgGetCIFSDefaultuser; (*Functionblock CfgGetCIFSDefaultuser()*)
		CfgSetCIFSDefaultuser_0 : CfgSetCIFSDefaultuser; (*Functionblock CfgSetCIFSDefaultuser()*)
		CfgGetCIFSDomain_0 : CfgGetCIFSDomain; (*Functionblock CfgGetCIFSDomain()*)
		CfgSetCIFSDomain_0 : CfgSetCIFSDomain; (*Functionblock CfgSetCIFSDomain()*)
	END_STRUCT;
END_TYPE
