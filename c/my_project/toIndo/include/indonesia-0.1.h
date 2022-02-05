//indonesia
#ifndef INDONESIA_H
#define INDONESIA_H
#include <fstream>
#include <string>
#include <iostream>

const static std::string EnKey[]={"if","case","default","break","else","for","while",
	"do","switch"};
const static std::string InKey[]={"JIKA","KASUS","TETAPAN","REHAT","LAINYA","UNTUK",
	"SELAMA","LAKUKAN","TUKAR"};
class Indo{
	std::ifstream source;
	std::string key;
	std::string getWord(const std::string&,int& index, int& pos);
	public:
		Indo(const std::string arg):source(arg.c_str()){}
		Indo(const char* arg):source(arg){}
		~Indo();	
		std::string convert();	//merubah ke indonesia
		std::string keyword();	//mencari keyword yang telah dirubah
};
#endif
