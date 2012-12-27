#!/usr/bin/env python

import socket
import ftplib
from os import system

data = "" 
def cat(new): 
	global data 
	data += new 

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM);
s.bind(("", 7747))
s.listen(1)

while True:
	data = ""
	
	try:
		tmp, adresse = s.accept()	
		
		ftppi = ftplib.FTP("ftp://192.168.55.1")
		ftp.login()
		ftppi.retrbinary("RETR RPI.CMD", cat)
		tmp.close()
		
		lines = data.split("\n")
		for line in lines:
			frags = line.split(" ")
			if frags[0] == "INSERT":
				system("eject -i on -t /dev/sr0")
			elif frags[0] == "EJECT":
				system("eject -i on /dev/sr0")
			elif frags[0] == "SELECT":
				pass
			elif frags[0] == "UPDATE":
				pass
			elif frags[0] == "ADD":
				pass
			elif frags[0] == "ACK":
				pass
			elif frags[0] == "EDIT":
				pass
			
	except KeyboardInterrupt:
		s.close()
		break
