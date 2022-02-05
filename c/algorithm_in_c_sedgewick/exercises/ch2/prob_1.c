#include <stdio.h>
#include "../../sedgewick_source.h"

#define MAX	10

int main(void)
{
	int x[MAX][MAX];
	int counter;
	int inner_counter;

	for(counter=0;counter < MAX;counter++){
		for(inner_counter=0;inner_counter < MAX;inner_counter++){
			if(gcd_mod(counter+1,inner_counter+1)==1)
				x[counter][inner_counter]=1;
			else
				x[counter][inner_counter]=0;
			printf("[%d]",x[counter][inner_counter]);
		}
		printf("\n");
	}
	return 0;
}
