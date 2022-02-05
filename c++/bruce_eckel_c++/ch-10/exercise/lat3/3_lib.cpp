#include "3_lib.h"
#include <iostream>
int T::statis = 5;
void T::printStatic(){
	std::cout<<"static:"<<statis<<std::endl;
}
