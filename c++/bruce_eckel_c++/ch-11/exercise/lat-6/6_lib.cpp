//6_lib.cpp
#include <iostream>
using namespace std;

extern void f(int**);

int main(){
	int i =47;
	int *ip = &i;

	cout<<"before i="<<i<<endl;
	f(&ip);
	cout<<"after i="<<i<<endl;
	return 0;
}
void f(int** i){
	**i+=2;		//tambahkan angka 2
}
