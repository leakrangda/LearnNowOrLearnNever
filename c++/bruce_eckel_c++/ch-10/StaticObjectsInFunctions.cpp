//: C10:StaticObjectsInFunctions.cpp
#include <iostream>
using namespace std;

class X{
	int i;
	public:
		X(int ii=0): i(ii){}//default
		~X(){cout<<" X::~X()"<<endl;}
};
void f(){
	static X x1(47);	//constructor with argument
	static X x2;	//default construtor required
}
int main(){
	f();
}
