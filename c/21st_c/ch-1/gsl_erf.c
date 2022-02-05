#include <stdio.h>
#include <gsl/gsl_cdf.h>

int main(){

	double bottom_tail = gsl_cdf_gaussian_Q(-1.96,1);
	printf("Area between [-1.96, 1.96: %g]\n", 1-2*bottom_tail);
	return 0;
}
