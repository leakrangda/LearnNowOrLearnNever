//17_lib_new.h
#ifndef _17_LIB_N_H
#define _17_LIB_N_H
#include <iostream>
class T{
	double* ptr;
	public:
		T(double arg=0.0){			//contructor
			ptr = new double;
			*ptr = arg;
		}
		T(const T& arg):ptr(arg.ptr){}		//copy constructor
		~T(){					//destructor
			std::cout<<"ptr = "<<*ptr<<std::endl;
			*ptr = -1;
			delete ptr;
			ptr = 0;
		}
};

void f(T arg){
	std::cout<<"f just been called."<<std::endl;
}
#endif
