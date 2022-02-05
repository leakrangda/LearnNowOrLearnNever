//lib_main.cpp
//testing lib.h
#include <iostream>
#include <string>
#include "lib.h"

using namespace std;

int main()
{
	//make lib object
	T x;
	x.a="ini";
	x.b="hanya";
	x.c="percobaan";

	cout<<x.a<<" "<<x.b<<" "<<x.c<<endl;
}
