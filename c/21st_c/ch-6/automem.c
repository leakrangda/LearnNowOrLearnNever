#include <stdio.h>

typedef struct powers{
	double base, square, cube;
}powers;

powers get_power(double in){
	powers out = {.base = in,
		.square = in*in,
		.cube = in*in*in};
	return out;
}

int *get_even(int count){
	int out[count];
	for(int i=0;i < count; i++)
		out[i] = 2*i;
	return out;		//bad.
}

int main(){
	powers threes = get_power(3);
	int *evens = get_even(3);
	printf("thress: %g\t%g\t%g\n", threes.base, threes.square, threes.cube);
	printf("evens: %i\t%i\t%i\n", evens[0], evens[1], evens[2]);
}
