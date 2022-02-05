#include <stdio.h>
#include <stdlib.h>

#include "../../chpt03/header/sedgewick_source.h"

#define	MAX	10
int main(int argc, char **argv)
{
	int a[MAX][MAX];
	int counter;

	for(counter=0;counter < MAX;counter++){
		int index;
		for(index=0;index < MAX;index++){
			if(gcd_mod(index+1,counter+1)==1)
				a[counter][index]=1;
			else
				a[counter][index]=0;
		}
	}
	for(counter=0;counter < MAX;counter++){
		int index;
		for(index=0;index < MAX;index++)
			printf("[%3d]",a[counter][index]);
		printf("\n");
	}
	return 0;
}
