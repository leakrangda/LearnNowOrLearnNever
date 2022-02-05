//:c08:Safecons.cpp
//using const for safety
#ifdef _C_
	#include <stdio.h>
#else
	#include <iostream>
	using namespace std;
#endif

const int i = 100;	//typical constant
const int j = i + 10;	//value from const expr
long address = (long)&j;	//force storage
char buf[j +10];	//still a const expression

int main()
{
#ifdef _C_
	printf("type a character & CR:");
#else
	cout<<"type a character & CR:";
#endif
#ifdef _C_
	const char c =getchar();
#else
	const char c = cin.get();	//can't change
#endif
	const char c2 = c + 'A';
#ifdef _C_
	printf("%c\n",c2);
#else
	cout << c2<<endl;;
#endif
}
