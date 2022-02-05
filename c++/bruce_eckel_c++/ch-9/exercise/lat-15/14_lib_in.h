//14_lib.h
#ifndef __14_LIB_H_IN
#define __14_LIB_H_IN
#include <iostream>

class A{
	public:
		A(){
			std::cout<<"ini class A"<<std::endl;
		}
};
class B{
	A a;
	public:
		B(){
			std::cout<<"ini class B"<<std::endl;
		}
};
#endif
