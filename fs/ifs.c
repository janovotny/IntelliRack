/*
Intelli File System
Copyright (c) 2012 Florian Wernli

This program can be distributed under the terms of the GNU GPLv3.

gcc -Wall `pkg-config fuse --cflags --libs` -o ifs ifs.c
*/

#define FUSE_USE_VERSION 26

#include "ifs_limits.h"
#include "ifs_search.h"

#include <ctype.h>
#include <dirent.h>
#include <errno.h>
#include <fcntl.h>
#include <fuse.h>
#include <libgen.h>
#include <limits.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/xattr.h>

FILE* IFS;

int ifs_getattr(const char *path, struct stat *statbuf){
	int retstat = 0;
	int pathlen=strlen(path);
	

	if(pathlen<4 || (pathlen>=4 && path[pathlen-4]!='.')){
		statbuf->st_mode=S_IRWXU|S_IRWXG|S_IRWXO|S_IFDIR;
		statbuf->st_nlink=2;
	}
	else{
		statbuf->st_mode=S_IRWXU|S_IRWXG|S_IRWXO|S_IFREG;
		statbuf->st_nlink=1;
		statbuf->st_size=SIZE_OF_ENTRY;
	}
	
	return retstat;
}

int ifs_open(const char *path, struct fuse_file_info *fi){
	int retstat = 0;
	int i;
	char type=0;
	const char* hay;

	for(i=1;;i++){
		if(path[i]==0) return -1; 
		if(path[i]=='/'||path[i]=='\\'){
			hay=&path[++i];
			break;
		}
		if(i>5) return -1;
		switch(path[i]){
			case 'y': //search by year
				type|=1<<0;
				break;
			case 'p': //search plot
				type|=1<<1;
				break;
			case 'g': //search genre
				type|=1<<2;
				break;
			case 't': //search by title
				type|=1<<3;
				break;
			case 'a': //search by actor
				type|=1<<4;
				break;
			case 'd': //search by director
				type|=1<<5;
				break;
			default:
				return -1;
		}
	}

	if(fi->fh=(int)new_search(hay, type, (FILE*)fuse_get_context()->private_data)==NULL)return -1;
	
	return retstat;
}

int ifs_read(const char *path, char *buf, size_t size, off_t offset, struct fuse_file_info *fi){
	int retstat = 1;
	return 0;
	char * sr=search_result((FILE*) fuse_get_context()->private_data,fi->fh, offset, size);
	strncpy(buf, sr, size);
	return retstat;
}


int ifs_release(const char *path, struct fuse_file_info *fi){ 
	end_search(fi->fh);
}

void* ifs_init(){return IFS;}

int ifs_readdir(const char *path, void *buf, fuse_fill_dir_t filler, off_t offset, struct fuse_file_info *fi){
	int pathlen=strlen(path);
	
	if(pathlen>=4 && path[pathlen-4]=='.') return -2;	
	
	filler(buf, "index.php", NULL, 0);
	return 0;
}

struct fuse_operations ifs_oper = {
	.getattr = ifs_getattr,
	.open = ifs_open,
	.read = ifs_read,
	.release = ifs_release,
	.init = ifs_init,
	.readdir=ifs_readdir,
};

void ifs_usage(){
	fprintf(stderr, "usage:  ifs [FUSE and mount options] rootDev mountPoint\n");
	abort();
}

int main(int argc, char *argv[]){
	int fuse_stat;
	
	if ((argc < 3) || (argv[argc-2][0] == '-') || (argv[argc-1][0] == '-'))
		ifs_usage();

	if((IFS=fopen(argv[argc-2],"rb"))==NULL) ifs_usage();
	
	argv[argc-2] = argv[argc-1];
	argv[argc-1] = NULL;
	argc--;

	fprintf(stderr, "about to call fuse_main\n");
	fuse_stat = fuse_main(argc, argv, &ifs_oper, NULL);
	fprintf(stderr, "fuse_main returned %d\n", fuse_stat);
	
	return fuse_stat;
}
