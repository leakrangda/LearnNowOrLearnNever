//testing intstack object
#include <iostream>
#include "14_lib.h"

using namespace std;

int main()
{
	IntStack stack;

	for(int i=0;i < 20; i++)
		stack.push(i);
	for(int i=0;i < 25; i++)
		cout<<"data in top "<<i<<"="<<stack.pop()<<endl;
	cout<<"current top="<<stack.peek();
	return 0;
}

