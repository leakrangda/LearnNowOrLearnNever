//5_lib.c
//
#include <iostream>
#include "5_lib.h"

void R::f(T *x){
	std::cout<<"didalam class R, mengganti a->10"<<std::endl;
	x->a=10;
}
void S::g(T *x){
	std::cout<<"didalam class S, mengganti a->20"<<std::endl;
	x->a=20;
}
void T::show(){
	std::cout<<"nilai a dalam T, a= "<<a<<std::endl;
}
