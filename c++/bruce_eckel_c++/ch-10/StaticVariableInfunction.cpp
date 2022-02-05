//C10: StatitVariableInfunction.cpp
#include "../require.h"
#include <iostream>
using namespace std;

char oneChar(const char* charArray = 0){
	static const char* s;
	if(charArray){
		s = charArray;
		return *s;
	}
	else
		require(s, "un-initialized s");
	if(*s == '\0')
		return 0;
	return *s++;
}
const char* a = "abcdefghijklmnopqrstuvwxyyz";

int main(){
	//oneChar();	//require fails
	oneChar(a);	//initialize s to a;
	char c;
	while((c = oneChar()) !=0)
		cout<<c<<endl;
}

