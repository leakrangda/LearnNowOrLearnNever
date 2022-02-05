//stacktest.cpp
//test of nested linked list
#include "stack.h"
#include "../require.h"
#include <fstream>
#include <iostream>
#include <string>
using namespace std;

int main(int argc, char*argv[])
{
	Stack floatTest;
	float coba=1.0;
	floatTest.initialize();
	for(int i=0;i < 25; i++){
		floatTest.push(new float(coba));
		coba+=1.5;
	}
	int i=0;
	float *f;
	while((f=(float *)floatTest.pop())!=0){
		cout<<"floatStack ("<<i++<<")= "
		<<*f
		<<endl;
		delete f;
	}
}

