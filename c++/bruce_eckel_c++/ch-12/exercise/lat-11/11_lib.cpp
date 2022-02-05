//11_lib.cpp
#include <iostream>
#include "11_lib.h"
using namespace std;

int main(){
	Number a,b,c,d,e,f;
	a=2.0;
	b=3.0;
	c=5.0;
	d=7.0;
	e=11.0;

	cout<<"a=["<<a<<"]"<<endl;
	cout<<"b=["<<b<<"]"<<endl;
	cout<<"c=["<<c<<"]"<<endl;
	cout<<"d=["<<d<<"]"<<endl;
	cout<<"e=["<<e<<"]"<<endl;

	f= a + b - c * d / e;

	cout<<"f=["<<f<<"]"<<endl;
}
