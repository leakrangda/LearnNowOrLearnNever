#ifndef MYSTRING_H
#define MYSTRING_H
#include <string>

class MyString{
	std::string a;
	public:
		MyString(std::string a);
		~MyString();
		void print() const;
};
#endif	//end of mystring
