//3_lib.h
#ifndef __3_LIB_H
#define __3_LIB_H
#include <iostream>

class T{
	const static int size= 10;
	const int tetap;
	static int statis;
	int ar[size]={0};
	public:
		T(int a=0, int b=0):tetap(a){}
		static void printStatic();
		void print(){
			for(int j=0;j<size;j++){
				std::cout<<ar[j]<<" ";
			}
			printStatic();
		}
};
#endif
