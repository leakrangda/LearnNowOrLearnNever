//6_lib.cpp
#include <iostream>
#include "6_lib.h"

void Egg::display(){
	std::cout<<"inside egg class"<<std::endl;
}
void Nest::display(){
	std::cout<<"inside Nest class"<<std::endl;
}
void Hen::display(){
	std::cout<<"inside Hen class"<<std::endl;
}
void Hen::printAll(){
	display();
	n.display();
	n.g.display();
}
