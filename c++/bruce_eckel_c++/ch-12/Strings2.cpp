//:C12:Strings2.cpp
//with auto type conversion
#include "../require.h"
#include <cstring>
#include <cstdlib>
#include <string>
using namespace std;

class Stringc{
	string s;
	public:
		Stringc(const string& str = ""): s(str){}
		operator const char*()const{
			return s.c_str();
		}
};
int main(){
	Stringc s1("hello"), s2("there");
	strcmp(s1,s2);	//standar C function
	strspn(s1,s2);	//Nay string function!
};
