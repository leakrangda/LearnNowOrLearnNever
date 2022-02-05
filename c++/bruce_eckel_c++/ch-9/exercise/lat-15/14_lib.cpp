//14_lib.cpp
#include "14_lib_in.h"
#include "../lat-12/CppTime.h"
#include <iostream>
using namespace std;
//testing mencoba otomatis constructor.
int main(){
	Time start;
	B b1[5000000];
	Time end;
	cout<<"time elapsed: "<<end.delta(&start)<<endl;
	return 0;
}
