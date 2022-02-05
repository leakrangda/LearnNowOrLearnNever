#ifndef __21_LIB_H
#define __21_LIB_H

class T{
	int a;
	T(const T& arg);
	public:
		T(int arg=0):a(arg){}
};

inline void f1(T arg){
	return;
}
#endif
