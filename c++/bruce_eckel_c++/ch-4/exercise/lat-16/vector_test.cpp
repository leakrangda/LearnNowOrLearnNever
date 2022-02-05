#include <iostream>
#include "vector_cpplib.h"
using namespace std;

int main()
{
	Stash object;

	object.initialize(sizeof(int));
	for(int i=0;i < 100;i++)
		object.add(&i);
	for(int i=0;i < 100;i++)
		cout<<"indexs ["<<i<<"]="<<*(int *)object.fetch(i)<<endl;
	cout<<"object size="<<object.count();
	cout<<endl;
	return 0;
}
