#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <termios.h>

int main(){
	struct termios term;

	if(tcgetattr(stdout, &term)!=-1)
		printf("berhasil mendapatkan termios\n");
	else
		perror("tidak berhasil mendapatkan settingna");
	exit(0);
}
