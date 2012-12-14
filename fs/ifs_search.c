/*
Intelli File System
Copyright (c) 2012 Florian Wernli

This program can be distributed under the terms of the GNU GPLv3.

*/

#include "ifs_search.h"


struct ifs_search *new_search(const char *hay, char type, FILE* needlestack){
	struct ifs_search *search_data=malloc(sizeof(struct ifs_search));
	char section_cnt=0, buf;
	int start=0, ctu=0,i,n;
	unsigned char cmp[256]={0}, running_cmps=0;

	for(i=0;hay[i]!='/'&&hay[i]!='\\';i++);
	search_data->hay=calloc(i+5, 1);
	for(i=0;hay[i]!='/'&&hay[i]!='\\';i++)search_data->hay[i]=hay[i];

	hay=search_data->hay;	

	for(i=0;i<256;i++)search_data->results[i]=-1;

	search_data->type=type;

	rewind(needlestack);
	
	while((buf=fgetc(needlestack))!=EOF){
		if(buf==EOT){
			section_cnt++;
			running_cmps=0;
			continue;
		}

		if(buf==ETX){
			running_cmps=0;
			continue;
		}

		if(buf==ACK){
			_ack_:
			running_cmps=0;
			section_cnt=0;
			start=ctu+1;
			continue;
		}

		for(i=0;i<running_cmps;i++){
			if(hay[++cmp[i]]==0){
				i=0;
				while(search_data->results[i]>=0)i++;
				search_data->results[i]=start;
				running_cmps=0;
	fprintf(stderr, "\n\n!!!!!!!\n%s..%d\n!!!!!!!!!\n", hay, section_cnt);
				_next_entry_:
					buf=fgetc(needlestack);
					if(buf==ACK) goto _ack_;
					if(buf==EOF) return search_data;
				goto _next_entry_;
			}
			if(buf!=hay[cmp[i]]){
				for(n=i;n<running_cmps-1;n++){
					cmp[n]=cmp[n+1];
				}
				running_cmps--;
				i--;
			}
		}
		if(buf==hay[0]){
			cmp[running_cmps]=0;
	fprintf(stderr, "\n\n!!!!!!!\n%s..%d\n!!!!!!!!!\n", hay, section_cnt);
			if((RIGHT(type, section_cnt)) )
				running_cmps++;
		}
		ctu++;
	}

	if(search_data->results[0]>=0) return search_data;
	return NULL;
}

char *search_result(FILE* needlestack, struct ifs_search *search, int offset, int len){
	return NULL;
}

void end_search(struct ifs_search *freewilli){
	
}

