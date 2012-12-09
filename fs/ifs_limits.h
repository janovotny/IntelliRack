/*
Intelli File System
Copyright (c) 2012 Florian Wernli

This program can be distributed under the terms of the GNU GPLv3.

*/

#ifndef __LIMITS_H__
#define __LIMITS_H__

#define SIZE_YEAR	5
#define SIZE_PLOT	1000
#define SIZE_GENRES	200
#define SIZE_TITLE	100
#define SIZE_IMDB_URL	100
#define SIZE_DIRECTOR	200
#define SIZE_WRITERS	200
#define SIZE_ACTORS	200
#define SIZE_TYPE	20
#define SIZE_LANG	20
#define SIZE_COUNTRY	20
#define SIZE_TIME	20
#define SIZE_HASH	100

#define SIZE_OF_ENTRY (SIZE_YEAR+SIZE_PLOT+SIZE_GENRES+SIZE_TITLE \
	+SIZE_IMDB_URL+SIZE_DIRECTOR+SIZE_WRITERS+SIZE_ACTORS \
	+SIZE_TYPE+SIZE_LANG+SIZE_COUNTRY+SIZE_TIME)

#endif

