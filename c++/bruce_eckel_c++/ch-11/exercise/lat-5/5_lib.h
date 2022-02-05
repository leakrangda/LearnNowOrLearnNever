//5_lib.h
#ifndef __5_LIB_H
#define __5_LIB_H
#include <iostream>
class T{
	public:
		void f(){std::cout<<"function f()"<<std::endl;}
		void g(){std::cout<<"function g()"<<std::endl;}
		void h()const{std::cout<<"function h()"<<std::endl;}
		void i()const{std::cout<<"function i()"<<std::endl;}
};
inline T& fungsiLuar(const T* arg){
	//arg->f();		//error! pointer const akses terhadap const member
	//(*arg).g();		//error! pointer const akses terhadap const member
	arg->h();
	arg->i();
}
#endif
