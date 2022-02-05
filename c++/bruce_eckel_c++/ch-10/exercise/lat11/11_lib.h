//11_lib.h
#ifndef __11_LIB_H
#define __11_LIB_H
#include <iostream>

class T{
	int i;
	public:
		T(int arg=0):i(arg){}
		void setVar(int arg){i=arg;}
		void print(){std::cout<<"i = "<<i<<std::endl;}
};
#endif
