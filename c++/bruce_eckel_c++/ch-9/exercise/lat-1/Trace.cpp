//:c09:Trace.cpp
#include <iostream>
#define TRACE(s) cerr<<#s "=", cerr<<s<<endl //macro definition
using namespace std;

//simple for loop
int main(){
	for(int i = 0; i < 100; i++)
		TRACE(i);
	return 0;
}
