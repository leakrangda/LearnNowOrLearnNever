//include the static variable
#include "10_lib.h"
#include <iostream>
using namespace std;

void f(){
	int glob=20;
	cout<<"glob local: "<<glob<<endl;
	cout<<"glob file: "<<::glob<<endl;
}
