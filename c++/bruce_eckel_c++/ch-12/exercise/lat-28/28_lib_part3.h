//28_lib.h
#ifndef _28_LIB_PART3_H
#define _28_LIB_PART3_H
#include <iostream>

class Apple;	//forward declaration

class Orange{
	public:
		//explicit type conversion, from Orange object to Apple object. 
		operator Apple() const;
};
class Apple{
	Orange obj;
	public:
		//un-explicit constructor needed for explicit type conversion
		Apple(Orange arg):obj(arg){}
};

inline void func(Apple arg){
	std::cout<<"berhasil dipanggil"<<std::endl;
}
#endif
