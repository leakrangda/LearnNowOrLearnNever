//27_lib.cpp
//volatile data member
#include <iostream>
using namespace std;

class T{
	volatile int a;
	public:
		T(int);
		void modif(int)volatile;
		void modif();
};
T::T(int x):a(x){}
void T::modif(int x) volatile{a=x;}
void T::modif(){a=10;}

int main(){
	volatile T test(1);
	T test2(5);

	//calling the member function
	test.modif(2);
	test.modif();

	test2.modif(7);
	test2.modif();
	return 0;
}
