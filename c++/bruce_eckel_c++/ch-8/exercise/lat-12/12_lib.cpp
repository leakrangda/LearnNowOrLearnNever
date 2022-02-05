//12_lib.cpp
//pointer to char array
#ifdef C__
	#include <stdio.h>
#elif CPLUS
	#include <iostream>
	using namespace std;
#endif
char *ptr="ini adalah percobaan";

int main(){
#ifdef CPLUS
	cout<<ptr<<endl;
#elif C__
	puts(ptr);
#endif
	*ptr='b';
#ifdef CPLUS
	cout<<ptr<<endl;
#elif C__
	puts(ptr);
#endif
	return 0;
}
