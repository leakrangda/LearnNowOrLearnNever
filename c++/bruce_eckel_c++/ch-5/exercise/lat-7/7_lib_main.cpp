//6_lib_main.cpp
#include <iostream>
#include "7_lib.h"
using namespace std;

int main()
{
	Hen n;

	//using display in Hen
	n.display();
	n.setEgg();
	n.setNest();

	//using display in Nest
	n.n.display();
	n.n.setEgg();

	//using display in Egg
	n.n.g.display();
	return 0;
}
