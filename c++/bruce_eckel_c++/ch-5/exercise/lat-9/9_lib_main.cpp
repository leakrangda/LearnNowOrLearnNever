//9_lib_main.cpp

#include <iostream>
#include "cpplib.h"
using namespace std;

int main()
{
	Stash s;

	s.initialize(sizeof(int));
	for(int i=0;i < 10; i++)
		s.add(&i);
	for(int i=0;i < 10; i++)
		cout<<"data ["<<i<<"]= "<<*(int *)s.fetch(i)<<endl;
	return 0;
}

