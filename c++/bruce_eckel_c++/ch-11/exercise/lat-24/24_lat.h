//24_lib.h
//
#ifndef __24_LIB_H
#define __24_LIB_H
#include <iostream>
class T{
	public:
		double d;
		void print()const{std::cout<<"d="<<d<<std::endl;}
};

//defining pointer to member field
double T::*dptr = &T::d;
//defining pointer to member function
void (T::*fptr)()const = &T::print;
#endif
