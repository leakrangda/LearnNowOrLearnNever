#include <stdio.h>

int gcd(int u, int v)
{
	int t;
	while(v){
		if(u<v){ 	//swapping routine
			t=u;
			u=v;
			v=t;
		}
		v=u%v;
		u=v;		//euclid teorm by modulus
	}
	return u;
}
int main(void)
{
	int x, y;
	while(scanf("%d %d", &x, &y)==2)
		if(x>0 && y>0)
			printf("%d %d %d\n",x,y,gcd(x,y));
	return 0;
}

