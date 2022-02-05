#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main(void)
{
	int number;

	srand(clock());
	number=rand();
	printf("the random number is %d\n",number);

	return 0;
}
