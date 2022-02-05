//17_lib.cpp
#include <iostream>
#include <fstream>
using namespace std;
#define TRACE(x) cerr<<#x"="<<x<<endl

int main(){
	for(int i=0;i < 10;i++)
		TRACE(i);
	return 0;
}
