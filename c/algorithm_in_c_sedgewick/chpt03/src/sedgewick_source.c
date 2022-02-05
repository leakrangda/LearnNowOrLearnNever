#include <stdio.h>

int gcd_sub(int u, int v)
{
	int t;
	while(u > 0){
		if(u<v){ //swapping routine
			t=u;
			u=v;
			v=t;
		}
		u=u-v;//euclid teorm by substraction
	}
	return v;
}

int gcd_mod(int u, int v)
{
	int t;
	while(v){
		if(u<v){ 	//swapping routine
			t=u;
			u=v;
			v=t;
		}
		t=u%v;
		u=v;
		v=t;		//euclid teorm by modulus
	}
	return u;
}
void binary(int x)
{
	int range=sizeof(int);
	char *px=(char *)&x;

	while(range){
		int bit=0;
		while(bit<=7){
			if(*(px+range) & 1<<bit)
				printf("1");
			else
				printf("0");
		bit++;
		}
		range--;
	}
}

