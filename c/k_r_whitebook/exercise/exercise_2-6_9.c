#include <stdio.h>

/* take bit x in position p with sum of n to the rightmost bit y */
/* leaving other bits unchanged */
unsigned int setbits(unsigned int x, int p, int n, unsigned int y){
	return (x >> (p+1 -n)) & (~(~0 << n)) | y & (~0 << n);
}

/* show the bit representation of x */
void showbit(unsigned int x){
	int i;
	i=sizeof(x) * 8;
	while(--i >= 0){
		if(x & (1 << i))
			putchar('1');
		else
			putchar('0');
	}
	putchar('\n');
}

/* take bit x from position p with sum of n and invert it*/
unsigned int invert(unsigned int x, int p, int n){
	unsigned int a= x & (~(~0 << n) << (p - n));
	
	a = ~a & ~(~0 << n) << (p - n);
	return x & ~(~(~0 << n) << (p - n)) | a;
}

/* rotating bit position of x value to the right */
unsigned int rightrot(unsigned int x, int n){
	unsigned int a = 0x80000000;		//set the highest bit
	unsigned int carry=x & 1;		//AND the carry bit
	while(n--){
		x >>= 1;
		if(carry){
			x |= a;
			carry &= 0;
		}
		carry = x & 1;
	}
	return x;
}

unsigned int otherrightrot(unsigned int x, int n){
	unsigned int mask = x & (~(~0 << n));

	return (x >> n) | (mask << 32 - n);
}
unsigned int bitcount(int x){
	int count=0;
	while(x &= (x - 1))	//while x is not all zero bit
		count++;	//count it
	return ++count;		//last count
}
