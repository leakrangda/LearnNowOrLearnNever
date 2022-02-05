//30_lib.cpp
#include "30_lib.h"
#include <iostream>
const static int size=5;

void f(){
	T arr[size];
	for(int i=0;i < size;i++)
		std::cout<<"arr["<<i<<"]="<<arr[i].value<<std::endl;
	return;
}
int main(){
	f();
	return 0;
}
