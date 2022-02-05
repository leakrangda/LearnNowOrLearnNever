#ifndef __15_LIB_H
#define __15_LIB_H
#include <iostream>
class T{
	int a;
	int b;
	public:
		T(int arg1=0, int arg2=0):a(arg1), b(arg2){}
};
class U{
	int a;
	int b;
	public:
		U(int arg1=0, int arg2=0):a(arg1), b(arg2){}
		U(const U& arg):a(arg.a),b(arg.b){std::cout<<"copied"<<std::endl;}
};
T f(T arg){
	return arg;
}
U f2(U arg){
	return arg;
}
#endif
