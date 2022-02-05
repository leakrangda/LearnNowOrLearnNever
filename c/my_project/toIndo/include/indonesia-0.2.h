//indonesia
#ifndef INDONESIA_H
#define INDONESIA_H
#include <fstream>
#include <string>
#include <iostream>

static std::string EnKey[]={"if","case","default","break","else","for","while",
	"do","switch"};
static std::string InKey[]={"JIKA","KASUS","TETAPAN","REHAT","LAINYA","UNTUK",
	"SELAMA","LAKUKAN","TUKAR"};
class Indo{
	std::ifstream source;
	std::string waduk;
	std::string key;
	std::string getWord(const std::string&, int& index, int& pos);
	std::string convert(std::string*, std::string*);
	public:
		Indo(const std::string arg):source(arg.c_str()){}
		Indo(const char* arg):source(arg){}
		~Indo();	
		std::string keyword();	//mencari keyword yang telah dirubah
		void toIn();		//merubah ke indonesia
		void toEn();		//merubah ke inggris
		std::string result();	//mengeluarkan hasil-stdout mode

};
#endif
