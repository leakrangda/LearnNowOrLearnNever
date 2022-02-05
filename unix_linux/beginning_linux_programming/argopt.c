#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

int main(int argc, char* argv[]){
	int opt;

	while((opt = getopt(argc, argv, ":if:lr")) != -1){
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
