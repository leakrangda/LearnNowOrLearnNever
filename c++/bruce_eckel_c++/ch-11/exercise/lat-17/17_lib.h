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
		T(const T&arg){				//copy constructor
		       	ptr = new double;
			*ptr = *arg.ptr;
			std::cout<<"ini di copy"<<std::endl;
		}	
		~T(){					//destructor
			std::cout<<"ptr = "<<*ptr<<std::endl;
			*ptr = -1;
			delete ptr;
			ptr = 0;
		}
};
T f(T arg){
	std::cout<<"f just been called."<<std::endl;
	return arg;
}
#endif
