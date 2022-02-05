//1_lib.cpp
#include "1_lib.h"
#include <fstream>

Text::Text(){
	data="";
}
Text::Text(std::string text){
	std::ifstream in(text);
	std::string temp;
	while(getline(in,temp)){
		data+=temp;
		data+="\n";
	}
}
std::string Text::content(){
	return data;
}

