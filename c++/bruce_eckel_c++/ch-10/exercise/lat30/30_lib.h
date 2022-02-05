//30_lib.h
#include <iostream>
#ifndef __30_LIB_H
#define __30_LIB_H
struct T{
	int value;
	T(int arg=0):value(arg){std::cout<<"T object is created."<<std::endl;}
	~T(){std::cout<<"T object is destroyed."<<std::endl;}
};
#endif //endof 30_lib.h
