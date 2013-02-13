#! /bin/bash
cd "$(dirname "$(type -p "$0")")"

std=`./ReadDrivePV.sh $1`;

while [ "$std" != "$2" ]; do
	std=`./ReadDrivePV.sh $1`;
	wget -O- 192.168.0.101/goform/ReadWrite?redirect="/value.asp"\&write=1\&variable=$1\&value=$2 1>/dev/null 2>/dev/null
done

echo $std
