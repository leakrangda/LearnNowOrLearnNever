//25_lib.h
#ifndef	_25_LIB_H
#define _25_LIB_H

class T{
	public:
		int ar[]={1,2,3,4,5};
};

//define pointer to member field
int T::*par = &T::ar;
#endif
