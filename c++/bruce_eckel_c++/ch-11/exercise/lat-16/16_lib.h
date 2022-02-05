//16_lib.h
#ifndef _16_LIB_H
#define _16_LIB_H
#include <iostream>

class T{
	int a;
	public:
		T(int arg=0):a(arg){}
		T(const T& arg):a(arg.a){std::cout<<"hallo, ini copy"<<std::endl;}
};
void f1(T arg){
	return;
}
T f2(T arg){
	T local = arg;
	return local;
}
#endif
