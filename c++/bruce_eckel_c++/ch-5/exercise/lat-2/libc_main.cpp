//lib_main.cpp
//testing lib.h
#include <iostream>
#include <string>
#include "lib.h"

using namespace std;

int main()
{
	//make lib object
	Libc x;
	x.seta("ini");
	x.setb("hanya");
	x.setc("percobaan");

	cout<<x.geta()<<" "<<x.getb()<<" "<<x.getc()<<endl;
}
