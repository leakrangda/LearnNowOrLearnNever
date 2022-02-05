//1_lib.cpp

#include "1_lib.h"
#include <iostream>

T::T(int i){
	std::cout<<"inside i is "<<i<<std::endl;
	this->i=i;
	std::cout<<"this function is been called"<<std::endl;
}
T::~T(){
	std::cout<<"inside i is "<<i<<std::endl;
	std::cout<<"this function is been deleted"<<std::endl;

}
