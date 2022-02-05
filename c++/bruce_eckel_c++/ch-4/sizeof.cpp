//sizeof.cpp
//size of structs
#include "clib.h"
#include "cpplib.h"
#include <iostream>
using namespace std;

struct A{
	int i[100];
};
struct B{
	void f();
};
void B::f(){}
int main(){
	cout<<"sizeof struct A = "<<sizeof(A)
		<<" Bytes"<<endl;
	cout<<"sizeof struct B = "<<sizeof(B)
		<<" Bytes"<<endl;
	cout<<"sizeof CStash in C = "
		<<sizeof(CStash)<<" Bytes"<<endl;
	cout<<"sizeof CStash in c++ = "
		<<sizeof(Stash) <<" Bytes"<<endl;
}
