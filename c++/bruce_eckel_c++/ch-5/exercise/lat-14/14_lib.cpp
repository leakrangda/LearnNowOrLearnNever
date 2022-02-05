#include "14_lib.h"
#include <iostream>

void IntStack::push(int x){
	if(top < sz)
		ar[++top]=x;
	else
		std::cout<<"its cramped."<<std::endl;
}
int IntStack::pop(){
	if(top > -1)
		return ar[top--];
	std::cout<<"its empty."<<std::endl;
}
int IntStack::peek(){
	return ar[top];
}
