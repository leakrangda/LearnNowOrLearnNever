#include <iostream>
#include "Stash4.h"
using namespace std;

int main()
{
	Stash stash(sizeof(int));
	int i=10;
	stash.add(&i);
	cout<<"address:"<<stash.top()<<endl;
	stash.add(&i);
	cout<<"address:"<<stash.top()<<endl;
	stash.add(&i);
	cout<<"address:"<<stash.top()<<endl;
	stash.add(&i);
	cout<<"address:"<<stash.top()<<endl;
	
	cout<<stash.count()<<endl;
	cout<<*(int*)stash.fetch(0)<<"=di:"<<(int*)stash.fetch(0)<<endl;
	cout<<*(int*)stash.fetch(1)<<"=di:"<<(int*)stash.fetch(1)<<endl;
	cout<<*(int*)stash.fetch(2)<<"=di:"<<(int*)stash.fetch(2)<<endl;
	cout<<*(int*)stash.fetch(3)<<"=di:"<<(int*)stash.fetch(3)<<endl;

	return 0;
}
