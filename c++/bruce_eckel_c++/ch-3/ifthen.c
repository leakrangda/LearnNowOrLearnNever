//c03:ifthen.cpp
//
#include <stdio.h>

int main(){
	int i;
	printf("type a number and enter");
	scanf("%d",&i);
	if(i > 5)
		printf("%d it's greater than 5",i);
	else
		if(i < 5 )
			printf("%d it's less than 5",i);
		else
			printf("%d it's equal to 5",i);
	putchar('\n');
	printf(" type a number and enter");
	scanf("%d",&i);
	if(i < 10)
		if(i > 5)
			printf("5 < i < 10");
		else
			printf("i <= 5");
	else
		printf("i >= 10");
	putchar('\n');
}

