#include <stdio.h>
#include <ctype.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>
int main()
{
	char banner[100];
	printf("put your name:");
	fgets(banner,100,stdin);
	for(;;){
		for(int i=0;i < strlen(banner);i++){
			char temp[100];
			strcpy(temp,banner);
			temp[i]=toupper(temp[i]);
			printf("%s\n",temp);
			usleep((useconds_t) 1000);
		}
	}
}

