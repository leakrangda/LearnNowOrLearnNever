//cpplibtest.cpp
//cpplib
//test of c++ library
#include "float_cpplib.h"
#include "../require.h"
#include <fstream>
#include <iostream>
#include <string>
using namespace std;

int main(){
	Stash floatStash;
	float loop=1.0;
	floatStash.initialize(sizeof(float));
	for(int i=0;i < 25;i++){
		floatStash.add(&loop);
		loop+=0.5;
	}
	for(int j=0;j < 25;j++)
		cout<<"intStash.fetch("<<j<<") ="
			<<*(float*)floatStash.fetch(j)<<endl;
	cout<<endl;
	return 0;
}
