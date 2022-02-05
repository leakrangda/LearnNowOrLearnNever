//4_lib_test.cpp
#include <iostream>
#include "4_lib_change.h"
using namespace std;

int main()
{
	T t;

	cout<<t.f()<<endl;
	cout<<t.f(1)<<endl;
	cout<<t.f(1,2)<<endl;
	cout<<t.f(3,4,5)<<endl;
	return 0;
}
