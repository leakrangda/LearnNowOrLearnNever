//2_lib.h
#ifndef _2_LIB_H
#define _2_LIB_H
#include <iostream>
#include <string>

class Message{
	std::string data;
	public:
		Message(std::string="this is default argument");
		void print();
		void print(std::string);
		~Message();
};
#endif
