//8_lib.cpp

#include <iostream>
#include "8_lib.h"

void T::showMap(){
	std::cout<<"show inside of T class: "<<std::endl;
	std::cout<<"private: int a= "<<&this->a<<std::endl
		 <<"private: float b= "<<&b<<std::endl
		 <<"private: long c= "<<&c<<std::endl
		 <<"protected: int d= "<<&d<<std::endl
		 <<"protected: float e= "<<&e<<std::endl
		 <<"protected: long f= "<<&f<<std::endl
		 <<"public: int g= "<<&g<<std::endl
		 <<"public: long h= "<<&h<<std::endl
		 <<"public: long i= "<<&i<<std::endl;
}
