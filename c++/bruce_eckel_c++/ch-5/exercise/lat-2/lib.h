//lib.h
#ifndef LIB_H
#define LIB_H
#include <string>

//struct of libc test
struct T{
	std::string b[3];
};

//class of libc test
class Libc{
	private:
		std::string s[3];
	public:
		void seta(std::string a);
		std::string geta();
		void setb(std::string a);
		std::string getb();
		void setc(std::string a);
		std::string getc();
};
#endif
