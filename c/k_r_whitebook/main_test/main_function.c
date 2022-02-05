#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "../include/k_r-function.h"

int main(){
	char s1[] = "12345.678";
	char s2[] = "12.34e-5";
	char s3[] = "-345.056e6";
	char s4[] = "-23.4";
	
	printf("the string %s = %f\n", s1, atof_i(s1));
	printf("the string %s = %f\n", s2, atof_i(s2));
	printf("the string %s = %f\n", s3, atof_i(s3));
	printf("the string %s = %f\n", s4, atof_i(s4));

	return 0;
}
