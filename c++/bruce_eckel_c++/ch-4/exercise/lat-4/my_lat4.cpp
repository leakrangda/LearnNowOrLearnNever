//my_lat4.cpp
//implementation
#include "my_lat4.h"
#include <iostream>

void function_1(Data *h, int b){
	h->dat=b;
}
void function_2(Data *h){
	std::cout<<" data yang ada: "<<h->dat<<std::endl;
}
