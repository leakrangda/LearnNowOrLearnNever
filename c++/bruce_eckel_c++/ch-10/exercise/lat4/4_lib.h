//4_lib.h
#ifndef __4_LIB_H
#define __4_LIB_H
#include <iostream>

class Monitor{
	static int count;
	public:
		void incident(){count++;}
		void print(){
			std::cout<<"incident: "<<count<<std::endl;
		}
};
#endif	//end of 4_lib.h
void f();
