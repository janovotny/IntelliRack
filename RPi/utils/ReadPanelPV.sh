#! /bin/bash
cd "$(dirname "$(type -p "$0")")"

wget -O- 192.168.0.102/goform/ReadWrite?redirect="/value.asp"\&read=1\&variable=$1 2>/dev/null
