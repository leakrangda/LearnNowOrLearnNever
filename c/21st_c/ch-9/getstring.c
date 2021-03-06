#define _GNU_SOURCE	// cause stdio.h to include vasprintf
#include <stdio.h>
#include <stdlib.h>	//free

void get_strings(char const *in){
	char *cmd;
	asprintf(&cmd, "strings %s", in);
	if(system(cmd))fprintf(stderr, "something went wrong running %s.\n",cmd);
	free(cmd);
}

int main(int argc, char **argv){
	get_strings(argv[0]);
}
