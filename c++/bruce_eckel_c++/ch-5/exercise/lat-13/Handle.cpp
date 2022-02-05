//:c05:Handle.cpp{0}
//handle implementation
#include "Handle.h"
#include "../../../require.h"
#include <iostream>

//define Handle's implementation:
struct Handle::Cheshire{
	int i;
};
void Handle::initialize(){
	smile= new Cheshire;
	smile->i=1;
}
void Handle::cleanup(){
	delete smile;
}
int Handle::read(){
	std::cout<<"i = "<<smile->i<<std::endl;
	return smile->i;
}
void Handle::change(int x){
	smile->i=x;
}///
