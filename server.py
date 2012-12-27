#!/usr/bin/env python

import socket
import ftplib
from os import system

data = "" 
def cat(new): 
	global data 
	data += new 

ftppi = ftplib.FTP()

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM);
s.bind(("", 7747))
s.listen(1)

while True:
	data = ""
	
	try:
		tmp, adresse = s.accept()	
		
		ftppi.connect("192.168.55.1")
		print ftppi.getwelcome()
		
		ftppi.login()
		ftppi.retrbinary("RETR RPI.CMD", cat)
		ftppi.quit()
		
		tmp.close()
		
		lines = data.split(chr(0x03))
		for line in lines:
			frags = line.split(" ", 1)
			if frags[0] == "INSERT":
				system("eject -i on -t /dev/sr0")
			elif frags[0] == "EJECT":
				system("eject -i on /dev/sr0")
			elif frags[0] == "SELECT":
				pass
			elif frags[0] == "UPDATE":
				pass
			elif frags[0] == "ADD":
				system("perl imdb/CreatetempDbEntry.pl")
				
				ftppi.connect("192.168.55.1")
				ftppi.login()
				entry = open("NonConfirmedEntry", "rb")
				ftppi.storbinary("STOR NonConfirmedEntry", entry)
				entry.close()

				entry = open("0.jpg", "rb")
				ftppi.storbinary("STOR 0.jpg", entry)
				entry.close()
				
				ftppi.quit()
			elif frags[0] == "ACK":
				# Entry accepted
				# insert to db
				pass
				
			elif frags[0] == "EDIT":
				# Some changes
				pass
			
	except KeyboardInterrupt:
		s.close()
		break
