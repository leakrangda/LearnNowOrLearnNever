//:c06:multiarg.cpp
//Mulitiple constructor arguments
//with aggregate initialization
#include <stdio.h>
struct Z{
		int i, j;
		void print();
};
typedef struct Z TAG;
void Z::print(){
	printf("i = %d, j = %d\n",i,j);
}
int main(){
	TAG zz[]={{1,2},{3,4},{5,6},{7,8}};
	for(int i=0;i < sizeof zz/sizeof *zz; i++)
		zz[i].print();
}///
