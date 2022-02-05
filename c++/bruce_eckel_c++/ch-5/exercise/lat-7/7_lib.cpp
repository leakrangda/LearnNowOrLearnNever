//6_lib.cpp
#include <iostream>
#include "7_lib.h"

void Hen::Nest::Egg::display(){
	std::cout<<"inside egg class"<<std::endl;
}
void Hen::Nest::display(){
	std::cout<<"inside Nest class"<<std::endl;
}
void Hen::display(){
	std::cout<<"inside Hen class"<<std::endl;
}
void Hen::setEgg(){
	std::cout<<"setting Egg class private data to 10"<<std::endl;
	this->n.g.a=10;
}
void Hen::setNest(){
	std::cout<<"setting Nest class private data to 20"<<std::endl;
	this->n.b=20;
}
void Hen::Nest::setEgg(){
	std::cout<<"setting Egg class private data to 30"<<std::endl;
	this->g.a=30;
}
