//:C10:Technique2.cpp
#include "Dependency2.h"
using namespace std;

//Return a value so it can be called as
//a global initializer
int separator(){
	cout<<"-------------------------"<<endl;
	return 1;
}

//Simulate the dependency problem:
extern Dependency1 dep1;
Dependency2 dep2(dep1);
Dependency1 dep1;
int x1 = separator();

//But if it happens int this order it workk OK:
Dependency1 dep1b;
Dependency2 dep2b(dep1b);
int x2 = separator();

//Wrapping static objects in functions succeds
Dependency1& d1(){
	static Dependency1 dep1;
	return dep1;
}

Dependency2& d2(){
	static Dependency2 dep2(d1());
	return dep2;
}
int main(){
	Dependency2& dep2 = d2();
}
