#include <stdio.h>

int main(void)
{
	int x, y;
	while(scanf("%d %d", &x, &y)==2)
			printf("%d %d %d\n",x,y,x%y);
	return 0;
}

