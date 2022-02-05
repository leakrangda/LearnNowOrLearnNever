//20_lib.h
#ifndef _20_LIB_H
#define _20_LIB_H
#include <iostream>

class T{
	public:
		T(){std::cout<<"hallo"<<std::endl;}
		~T(){std::cout<<"dadah"<<std::endl;}
};
T f1(){
	T object;
	std::cout<<"didalam fungsi1."<<std::endl;
	return object;
}
void f2(const T& arg){		//harus const jika menerima dari temporary value
	std::cout<<"didalam fungsi2."<<std::endl;
}
#endif
