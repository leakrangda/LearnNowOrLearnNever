//2_lib.cpp
#include "2_lib.h"
#include <iostream>
#include <string>

Message::Message(std::string argument){
	data=argument;
}
Message::~Message(){
	std::cout<<"argument will be delete\n"<<std::endl;
}
void Message::print(){
	std::cout<<data<<std::endl;
}
void Message::print(std::string str){
	std::cout<<data<<" "<<str<<std::endl;
}
