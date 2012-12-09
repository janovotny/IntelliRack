/*
Intelli File System
Copyright (c) 2012 Florian Wernli

This program can be distributed under the terms of the GNU GPLv3.

*/

#ifndef __IFS_SEARCH_H__
#define __IFS_SEARCH_H__

#include <stdio.h>
#include <stdlib.h>

#define ETX 0x3
#define EOT 0x4
#define ACK 0x6

#define SECTION_ACTOR 0
#define SECTION_ALSO_KNOWN_AS 1
#define SECTION_COUNTRY 2
#define SECTION_DIRECTORS 3
#define SECTION_EPISODES 4
#define SECTION_FILM_LOCATIONS 5
#define SECTION_GENRES 6
#define SECTION_IMDB_ID 7
#define SECTION_IMDB_URL 8
#define SECTION_LANGUAGE 9
#define SECTION_PLOT 10
#define SECTION_POSTER 11
#define SECTION_RATED 12
#define SECTION_RATING 13
#define SECTION_RELEASE_DATE 14
#define SECTION_RUNTIME 15
#define SECTION_TITLE 16
#define SECTION_TYPE 17
#define SECTION_WRITERS 18
#define SECTION_YEAR 19

#define SEARCH_BY_YEAR		0x01
#define SEARCH_BY_PLOT		0x02
#define SEARCH_BY_GENRE		0x04
#define SEARCH_BY_TITLE		0x08
#define SEARCH_BY_ACTOR		0x10
#define SEARCH_BY_DIRECTOR	0x20

#define RIGHT(type, section)  ((type&SEARCH_BY_YEAR)>0&&section==SECTION_YEAR) \
	|| ((type&SEARCH_BY_PLOT)>0&&section==SECTION_PLOT) \
	|| ((type&SEARCH_BY_GENRE)>0&&section==SECTION_GENRES) \
	|| ((type&SEARCH_BY_TITLE)>0&&section==SECTION_TITLE) \
	|| ((type&SEARCH_BY_ACTOR)>0&&section==SECTION_ACTOR) \
	|| ((type&SEARCH_BY_DIRECTOR)>0&&section==SECTION_DIRECTORS) \
	|| ((type&SEARCH_BY_YEAR)>0&&section==SECTION_YEAR) \
	|| ((type&SEARCH_BY_YEAR)>0&&section==SECTION_YEAR)
 
struct ifs_search {
	char type;
	int results[256];
	char *hay;
};

struct ifs_search *new_search(const char *hay, char type, FILE* needlestack);
char* search_result(FILE* needlestack, struct ifs_search *search, int offset, int len);
void end_search(struct ifs_search* free_willi);

#endif
