//26_lib.h
#ifndef __26_LIB_H
#define __26_LIB_H
#include <iostream>

class T{
	static double d;
	static long int l;
	public:
		print(){
			std::cout<<"double d :"<<std::endl;
			std::cout<<"long int l: "<<std::endl;
		}
};
static double T::d = 2.0;
static long int T::l = 10l;
#endif		//--endof 26_lib.h
