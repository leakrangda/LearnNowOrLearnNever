//2_lib_test.cpp
#include <iostream>
#include <string>
#include "2_lib.h"
using namespace std;

int main()
{
	Message message;
	message.print();
	message.print("with overloaded function");
	return 0;
}
