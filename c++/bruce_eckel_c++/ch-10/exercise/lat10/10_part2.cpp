#include "10_lib.h"
#include <iostream>
using namespace std;

void g(){
	int glob = 40;
	cout<<"glob local: "<<glob<<endl;
	cout<<"glob file: "<<::glob<<endl;
}
