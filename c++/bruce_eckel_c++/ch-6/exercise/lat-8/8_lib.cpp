//8_lib.cpp

#include <iostream>
#include <string>
#include "../../Stack3.h"
using namespace std;

int main()
{
	Stack stack;
	string ar[]={"ilham","keren","sekali"};

	for(int i=0;i < sizeof(ar)/sizeof *(ar);i++)
		stack.push(new string(ar[i]));
	string *temp;
	while((temp=(string *)stack.pop())!=NULL){
			cout<<*temp<<endl;
			delete temp;
	}
	return 0;
}
