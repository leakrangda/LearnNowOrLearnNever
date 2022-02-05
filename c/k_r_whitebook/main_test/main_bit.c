#include "k_r-bitfield.h"
#include <stdio.h>

int main(){
	unsigned int a=0;
	unsigned int b=0xffffffff;
	unsigned int c=0x00008888;

	printf("pola bit sebelum:a= ");
	showbit(a);
	printf("pola bit sesudah:a= ");
	a=setbits(b,10,5,a);
	showbit(a);
	printf("pola bit sebelum:b= ");
	showbit(b);
	b=invert(b,24,16);
	printf("pola bit sesudah:b= ");
	showbit(b);
	printf("pola bit sebelum rotasi:c= ");
	showbit(c);
	printf("pola bit sesudah rotasi:c= ");
	c=rightrot(c, 5);
	showbit(c);

	printf("pola bit sebelum rotasi:c= ");
	showbit(c);
	printf("pola bit sesudah rotasi:c, other right rot\n");
	for(int i = 0;i < 10; i++){
		c=otherrightrot(c, 5);
		showbit(c);
	}
	printf("jumlah bit dalam c=%d\n", bitcount(c));
	printf("jumlah bit dalam b=%d\n", bitcount(b));
	printf("jumlah bit dalam a=%d\n", bitcount(a));
	return 0;
}
