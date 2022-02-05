//10_main_lib.h
#include <iostream>
#include "6_lib.h"
#include "cpplib.h"
using namespace std;

int main()
{
	Stash t;
	Hen hen;

	t.initialize(sizeof(Hen));
	t.add(&hen);
	((Hen *)t.fetch(0))->printAll();
	return 0;
}
