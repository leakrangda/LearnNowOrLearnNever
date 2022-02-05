#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>

#define BUFSIZE	324
int main(){
	char* filename="text.dat";
	FILE* buka;
	char buf[BUFSIZE];
	int offset_age = 

	buka = fopen(filename, "r");	/* buka file */
	while(fread(buf, BUFSIZE, BUFSIZE,buka)<BUFSIZE)
		printf("%d\n",(int)320+buf);
	return 0;
}
