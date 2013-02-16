#! /bin/bash

dir="$(dirname "$(type -p "$0")")"
cd $dir

mdir=db/`head /dev/sr0 -n100|sha1sum|cut -c1-40`
subdir=`head /dev/sr0 -n1000|sha1sum|cut -c1-40`

mkdir -p $mdir/$subdir/

if [ -f $mdir/$subdir/$1 ]; then
	echo $dir/$mdir/$subdir/$1
else
	./CreateTempDbEntry.pl $1
	mv NonConfirmedEntry $mdir/$subdir/$1
	mv 0.jpg $mdir/$subdir/$1 || cp default.jpg $mdir/$subdir/$1/0.jpg
	echo $dir/$mdir/$subdir/$1
fi

chmod 777 . -R
