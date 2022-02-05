//27_lib.h
#ifndef __27_LIB_H
#define __27_LIB_H
#include <iostream>

class T{
	int a;
	public:
		T(int arg=0):a(arg){}
		void print(){
			std::cout<<"a = "<<a<<std::endl;
		}
};
class U{
	static T test;
	public:
		static void print(){
			test.print();
		}
};
T U::test(20);
#endif	//endof 27_lib.h
