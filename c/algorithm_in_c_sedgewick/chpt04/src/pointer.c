#include <stdio.h>
#include <stdlib.h>

struct tag{
	int number;
	struct tag *next;
	};
typedef struct tag TAG;

int main(void)
{
	int counter=0;
	int *temp=(int *)malloc(sizeof(int) * 4);
	
	/*real address*/
	for(counter=0;counter < 4;counter++)
		printf("address :%p\nnilai=%d\n",temp+counter,*(temp+counter));
	/*unreal address*/
	for(;counter < 8;counter++)
		printf("address :%p\nnilai=%d\n",temp+counter,*(temp+counter));
	return 0;
}
