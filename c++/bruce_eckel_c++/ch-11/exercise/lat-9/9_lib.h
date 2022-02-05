//9_lib.h
#ifndef __9_LIB_H
#define __9_LIB_H
#include <iostream>
class T{
	int a;
	public:
		T(int arg=0):a(arg){}
		int f()const{
			return a;
		}
		void g(){
			std::cout<<"a = "<<a<<std::endl;
		}
};	
void func1(T t){
	std::cout<<"a="<<t.f()<<std::endl;
	t.g();
}
void func2(T& arg){
	std::cout<<"a="<<arg.f()<<std::endl;
	arg.g();
}
void func3(const T& arg){
	std::cout<<"a="<<arg.f()<<std::endl;
	arg.g();
}
#endif
