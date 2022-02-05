//1_lib_test.cpp
#include "1_lib.h"
#include <iostream>
#include <string>
using namespace std;

int main()
{
	Text text("1_lib.h");
	//print the result;
	cout<<"the content is"<<endl;
	cout<<text.content()<<endl;
	return 0;
}
