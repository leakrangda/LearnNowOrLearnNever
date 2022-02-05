#include "24_lat.h"
#include <iostream>
using namespace std;
int main(){
	T test;
	T* ptest = &test;

	cout<<"d="<<test.*dptr<<endl;
	(ptest->*fptr)();

	return 0;
}
