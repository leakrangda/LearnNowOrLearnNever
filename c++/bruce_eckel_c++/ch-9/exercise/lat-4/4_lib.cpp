//4_lib.cpp
//processor time
#include <iostream>
#include <ctime>
#include "4_lib.h"
using namespace std;

int main(){
	clock_t start;
	clock_t end;

	start=clock();
	f1();
	end=clock();
	cout<<"non inline func() time elapsed:"<<difftime(end,start)<<endl;
	start=clock();
	f2();

	end=clock();
	cout<<"inline time elapsed:"<<difftime(end,start)<<endl;
	return 0;
}
