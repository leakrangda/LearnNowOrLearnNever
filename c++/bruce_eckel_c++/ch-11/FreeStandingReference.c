//c type
#include <stdio.h>

int y;

int* r = &y;
const int* q = (int*)12;
int x = 0;
int* a = &x;
int main(){
	printf("x = %d, a = %d\n",x,*a);
	(*a)++;
	printf("x = %d, a = %d\n",x,*a);
}
