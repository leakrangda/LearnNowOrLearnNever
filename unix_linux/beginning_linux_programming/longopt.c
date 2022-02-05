#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

#define _GNU_SOURCE
#include <getopt.h>

int main(int argc, char* argv[]){
	int opt;
	struct option longopts[] = {
		{"initialize",0,NULL,'i'},
		{"file",1,NULL,'f'},
		{"list",0,NULL,'l'},
		{"restart",0,NULL,'r'},
		{0,0,0,0}
	};

	while((opt = getopt_long(argc, argv, ":if:lr", longopts, NULL)) != -1){
		switch(opt){
			case 'i':	/*jika option i*/
			case 'l':	/*jika option l*/
			case 'r':	/*jika option r*/
				printf("option: %c\n", opt);
				break;
			case 'f':
				printf("filename: %s\n", optarg);
				break;
			case ':':
				printf("option needs a value\n");
			case '?':
				printf("unknown option: %c\n", optopt);
				break;
		}
	}
	for(;optind < argc; optind++)	/*jika masih ada argument*/
		printf("argument: %s\n", argv[optind]);
	return 0;
}
