#include <stdio.h>
#include <unistd.h>

/* demonstrate how buffered output of stdout */
int main(){
	int i=5;
	while(--i){
		printf(".");
		sleep(1);
	}
	return 0;
}
