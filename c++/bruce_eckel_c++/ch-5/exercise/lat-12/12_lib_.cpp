//12_lib_main.cpp

#include <iostream>
#include "../lat-11/stack.h"
#include "../lat-10/6_lib.h"
using namespace std;

int main()
{
	Stack stack;

	stack.initialize();
	stack.push((void *)new Hen);
	((Hen *)stack.pop())->printAll();
	return 0;
}

