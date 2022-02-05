#include <time.h>
#include <stdio.h>
#include <stdlib.h>

int main(){
	time_t timeval;

	(void)time(&timeval);
	printf("the date is: %s", ctime(&timeval));
	return 0;
}
