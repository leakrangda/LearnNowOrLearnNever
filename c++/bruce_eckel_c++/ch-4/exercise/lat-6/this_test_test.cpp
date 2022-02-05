//this_test_test.cpp
//testing
//
#include <iostream>
#include "this_test.h"
using namespace std;

int main()
{
	UseThis s;
	s.isiInt(1);
	s.isiFloat(4.0);
	cout<<"hasilnya data1 = "<<s.getInt()<<endl;
	cout<<"hasilnya data2 = "<<s.getFloat()<<endl;
	return 0;
}
