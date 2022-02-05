#include <stdio.h>
#include <unistd.h>

int main(){
	int i = 5;
	while(--i){
		fprintf(stderr, ".");
		sleep(1);
	}
	return 0;
}
