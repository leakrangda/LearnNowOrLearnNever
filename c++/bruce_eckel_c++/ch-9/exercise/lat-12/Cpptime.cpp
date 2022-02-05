//:c09:cpptime.cpp
//testing a simple time class
#include "CppTime.h"
#include <iostream>
using namespace std;

int main(){
	Time start;
	cout<<"hit enter: ";
	cin.get();
	Time end;
	cout<<"time elapsed : "<<end.delta(&start)<<endl;
	return 0;
}
