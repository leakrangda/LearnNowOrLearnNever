//:c07:MemTest.cpp
//Testing the mem class
#include "Mem.h"
#include <cstring>
#include <iostream>
using namespace std;

class MyString{
	Mem* buf;
	public:
		MyString();
		MyString(const char* str);
		~MyString();
		void concat(const char* str);
		void print(ostream& os);
};
MyString::MyString(){buf = 0;}
MyString::MyString(const char* str){
	buf = new Mem(strlen(str)+1);
	strcpy((char*)buf->pointer(), str);
}
void MyString::concat(const char* str){
	if(!buf)buf = new Mem;
	strcat((char*)buf->pointer(buf->msize() + strlen(str) + 1), str);
}
void MyString::print(ostream& os){
	if(!buf) return;
	os<<buf->pointer()<<endl;
}
MyString::~MyString(){delete buf;}

int main(){
	MyString s("my test string");
	s.print(cout);
	s.concat(" some additional stuff");
	s.print(cout);
	MyString s2;
	s2.concat("using default constructor");
	s2.print(cout);
	return 0;
}
