//7_lib.h
#ifndef	__7_LIB_H
#define __7_LIB_H
#include <cstring>
#include <iostream>
using namespace std;

class T{
	const static int size=100;
	char ar[size];
	public:
		T(char init=' '){
			memset(ar,init, size);
		}
		void print(){
			for(int i=0; i < 100; i++)
				cout<<ar[i]<<endl;
		}
};
#endif
