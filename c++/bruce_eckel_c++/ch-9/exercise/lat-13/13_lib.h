//13_lib.h
#ifndef __13_LIB_H
#define __13_LIB_H
#include <iostream>

class T{
	public:
		void second(){
			std::cout<<"ini fungsi kedua"<<std::endl;
		}
		void first(){
			second();
		}
};
#endif
