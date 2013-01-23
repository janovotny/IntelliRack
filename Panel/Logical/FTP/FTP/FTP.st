(********************************************************************
 * COPYRIGHT -- Bernecker + Rainer
 ********************************************************************
 * Program: NwFileSystem
 * File: NwFileSystem.st
 * Author: Bernecker + Rainer
 * Created: April 21, 2009
 ********************************************************************
 * Implementation of program NwFileSystem
 ********************************************************************)

PROGRAM _INIT


	(* Init values *)
	strcpy(ADR(Network.Data.Device), ADR('IF2'));  (* X20 CPU Ethernet device *)



END_PROGRAM


PROGRAM _CYCLIC


	CASE Network.Data.Step OF
		
		0:	IF Network.Command.bCfgSetFTPServer = 1 THEN
				Network.Data.Step := 10;
			ELSIF Network.Command.bCfgGetCIFSDefaultuser = 1 THEN
				Network.Data.Step := 20;
			ELSIF Network.Command.bCfgSetCIFSDefaultuser = 1 THEN
				Network.Data.Step := 30;
			ELSIF Network.Command.bCfgGetCIFSDomain = 1 THEN
				Network.Data.Step := 40;
			ELSIF Network.Command.bCfgSetCIFSDomain = 1 THEN
				Network.Data.Step := 50;
			END_IF
					
		10:  (* Enable/disable the FTP server *)
			Network.Functionblocks.CfgSetFTPServer_0.enable := 1;  (* Enable the function block *)
			Network.Functionblocks.CfgSetFTPServer_0.Option := cfgOPTION_ENABLE;  (* Enable FTP server *)
		
			Network.Functionblocks.CfgSetFTPServer_0;  (* Function Call *)
		
			IF Network.Functionblocks.CfgSetFTPServer_0.status = 0 THEN  (* CfgSetFTPServer successfull *)
				Network.Command.bCfgSetFTPServer := 0;
				Network.Data.Step := 0;
			ELSIF Network.Functionblocks.CfgSetFTPServer_0.status = ERR_FUB_BUSY THEN  (* CfgSetHostName not finished -> redo *)
				(* Busy *)
			ELSE  (* Goto Error Step *)
				Network.Data.Step := 255;
			END_IF
		
		20:  (* Read the CIFS default user settings *)
			Network.Functionblocks.CfgGetCIFSDefaultuser_0.enable := 1;  (* Enable the function block *)
			Network.Functionblocks.CfgGetCIFSDefaultuser_0.pDefaultuser := ADR(Network.Data.DefaultUser);  (* Address of the DefaultUser string *)
			Network.Functionblocks.CfgGetCIFSDefaultuser_0.lenUser := SIZEOF(Network.Data.DefaultUser);  (* Length of the DefaultUser string *)
			Network.Functionblocks.CfgGetCIFSDefaultuser_0.pDefaultpassword := ADR(Network.Data.DefaultPassword);  (* Address of the DefaultPassword string *)
			Network.Functionblocks.CfgGetCIFSDefaultuser_0.lenPassword := SIZEOF(Network.Data.DefaultPassword);  (* Length of the DefaultPassword string *)
		
			Network.Functionblocks.CfgGetCIFSDefaultuser_0;  (* Function Call *)
		
			IF Network.Functionblocks.CfgGetCIFSDefaultuser_0.status = 0 THEN  (* CfgGetCIFSDefaultuser successfull *)
				Network.Command.bCfgGetCIFSDefaultuser := 0;
				Network.Data.Step := 0;
			ELSIF Network.Functionblocks.CfgGetCIFSDefaultuser_0.status = ERR_FUB_BUSY THEN  (* CfgGetCIFSDefaultuser not finished -> redo *)
				(* Busy *)
			ELSE  (* Goto Error Step *)
				Network.Data.Step := 255;
			END_IF
		
		30:  (* Modify the settings of the CIFS default user *)
			Network.Functionblocks.CfgSetCIFSDefaultuser_0.enable := 1;  (* Enable the function block *)
			Network.Functionblocks.CfgSetCIFSDefaultuser_0.pDefaultuser := ADR(Network.Data.DefaultUser);  (* Address of the DefaultUser string *)
			Network.Functionblocks.CfgSetCIFSDefaultuser_0.pDefaultpassword := ADR(Network.Data.DefaultPassword);  (* Address of the DefaultPassword string *)
			Network.Functionblocks.CfgSetCIFSDefaultuser_0.Option := cfgOPTION_NON_VOLATILE;  (*  Temporarily set the parameter *)
		
			Network.Functionblocks.CfgSetCIFSDefaultuser_0;  (* Function Call *)
		
			IF Network.Functionblocks.CfgSetCIFSDefaultuser_0.status = 0 THEN  (* CfgSetCIFSDefaultuser successfull *)
				Network.Command.bCfgSetCIFSDefaultuser := 0;
				Network.Data.Step := 0;
			ELSIF Network.Functionblocks.CfgSetCIFSDefaultuser_0.status = ERR_FUB_BUSY THEN  (* CfgSetCIFSDefaultuser not finished -> redo *)
				(* Busy *)
			ELSE  (* Goto Error Step *)
				Network.Data.Step := 255;
			END_IF

		40:  (* Read the domain configurations for CIFS *)
			Network.Functionblocks.CfgGetCIFSDomain_0.enable := 1;  (* Enable the function block *)
			Network.Functionblocks.CfgGetCIFSDomain_0.pDomain := ADR(Network.Data.Domain);  (* Address of the Domain string *)
	  		Network.Functionblocks.CfgGetCIFSDomain_0.Len := SIZEOF(Network.Data.Domain);  (* Length of the Domain string *)				
		
			Network.Functionblocks.CfgGetCIFSDomain_0;  (* Function Call *)

			IF Network.Functionblocks.CfgGetCIFSDomain_0.status = 0 THEN  (* CfgGetCIFSDomain successfull *)
				Network.Data.Workgroup := Network.Functionblocks.CfgGetCIFSDomain_0.isWorkgroup;
				Network.Command.bCfgGetCIFSDomain := 0;
				Network.Data.Step := 0;
			ELSIF Network.Functionblocks.CfgGetCIFSDomain_0.status = ERR_FUB_BUSY THEN  (* CfgGetCIFSDomain not finished -> redo *)
				(* Busy *)
			ELSE  (* Goto Error Step *)
				Network.Data.Step := 255;
			END_IF
		
		50:  (* Edit the domain configurations for CIFS *)
			Network.Functionblocks.CfgSetCIFSDomain_0.enable := 1;  (* Enable the function block *)
			Network.Functionblocks.CfgSetCIFSDomain_0.pDomain := ADR(Network.Data.Domain);  (* Address of the Domain string *)
			Network.Functionblocks.CfgSetCIFSDomain_0.isWorkgroup := Network.Data.Workgroup;
			Network.Functionblocks.CfgSetCIFSDomain_0.Option := cfgOPTION_NON_VOLATILE;  (*  Temporarily set the parameter *)
				
			Network.Functionblocks.CfgSetCIFSDomain_0;  (* Function Call *)
		
			IF Network.Functionblocks.CfgSetCIFSDomain_0.status = 0 THEN  (* CfgSetCIFSDomain successfull *)
				Network.Command.bCfgSetCIFSDomain := 0;
				Network.Data.Step := 0;
			ELSIF Network.Functionblocks.CfgSetCIFSDomain_0.status = ERR_FUB_BUSY THEN  (* CfgSetCIFSDomain not finished -> redo *)
				(* Busy *)
			ELSE  (* Goto Error Step *)
				Network.Data.Step := 255;
			END_IF

		255:  (*Error handling*)
			
	END_CASE
	
END_PROGRAM
