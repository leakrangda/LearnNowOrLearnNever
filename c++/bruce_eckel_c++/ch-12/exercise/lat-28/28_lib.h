//28_lib.h
#ifndef _28_LIB_H
#define _28_LIB_H
#include <iostream>

class Orange{
};
class Apple{
	Orange obj;
	public:
		Apple(Orange arg):obj(arg){}
};

inline void func(Apple arg){
	std::cout<<"berhasil dipanggil"<<std::endl;
}
#endif
