//15_lib.cpp
#include <iostream>
using namespace std;

int main(){
	register int a=2;
	register int b=3;
	register int c=0;
	auto x=10;
	for(int i=0;i < x;i++)
		c+=a+b;
	cout<<"c="<<c;
	cout<<endl;
}
