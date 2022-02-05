//: C11: FreeStandingReference.cpp
#include <iostream>
using namespace std;

//ordinary free-standing reference:

int y;

int& r = y;
//when a reference is created, it must
//be initialized to a live object
//however, you can also say:
const int& q = 12;	//(1)
//references are tied to someone else's storage:
int x = 0;		//(2)
int& a = x;		//(3)
int main(){
	cout<<"x = "<<x<<", a = "<<a<<endl;
	a++;
	cout<<"x = "<<x<<", a = "<<a<<endl;
}
