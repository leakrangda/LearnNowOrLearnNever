#include <limits.h>
#include <float.h>
#include <stdio.h>

int main(){
	unsigned int a=0;
	unsigned long b=0;
	unsigned char c=0;
	float d=0;
	double e=0;

	printf("max unsigned int %u\n",~a);
	printf("max unsigned long %lu\n",~b);
	printf("max unsigned char %hhu\n", ~c);
	//printf("max float %f\n", ~d);
	//printf("max double %e\n",~e);
}
