//lib_main
#include <iostream>
#include "4_lib.h"

using namespace std;

int main()
{
	U u;
	T t;

	u.setPtr(&t);
	t.setPtr(&u);
	cout<<"U obj has address of T obj in "<<u.ptr<<endl;
	cout<<"T obj has address of U obj in "<<t.ptr<<endl;

	return 0;
}
