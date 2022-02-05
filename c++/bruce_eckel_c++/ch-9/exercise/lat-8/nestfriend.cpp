//c05:nestFriend.cpp
//nested friends
#include <iostream>
#include "NestFriend.h"
using namespace std;

int main()
{
	Holder h;
	Holder::Pointer hp(&h), hp2(&h);
	int i;
	for(i=0;i < sz;i++){
		cout<<"hp = "<<hp.read()
			<<", hp2 = " <<hp2.read()<<endl;
		hp.next();
		hp2.previous();
	}
}
