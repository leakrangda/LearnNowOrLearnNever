//const_cast.cpp
#include <iostream>
using namespace std;

int main(){
	const int i=0;
	int * j=(int *)&i;//deprecated form
	j=const_cast<int*>(&i);//prefered
	cout<<"address const i="<<&i<<endl;
	cout<<"const i="<<i<<endl;
	*j=7;
	cout<<"const i="<<i<<endl;
	cout<<"address in j="<<j<<endl;
	cout<<"var j="<<*j<<endl;
	//cant do simultanous additional casting:
	//! long * l= const_cast<long*>(&i);//error
	volatile int k=0;
	int *u=const_cast<int *>(&k);
}
