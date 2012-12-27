#include <stdio.h>
#include <stdlib.h>
#include "ifs_search.h"

int main(int argc, char** argv){
	if(argc<3)return;
	int i;

	FILE* db;
	db=fopen(argv[1], "rb");
	
	struct ifs_search *results=new_search(argv[2],SEARCH_BY_PLOT,db); 

	if(results==NULL) return -1;
	
	
	printf("%s\n",results->hay);
	
	i=0;
	do{
		printf("%i\n",results->results[0]);
		i++;
	}while(results->results[i]!=0);

	return 0;
}
