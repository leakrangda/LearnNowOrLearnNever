//:c09:cpptime.cpp
//testing a simple time class
#include "CppTime.h"
#include <iostream>
using namespace std;

int main(){
	Time start;
	for(int i =1; i< 10000; i++){
		cout<<i<<' ';
		if(i%10==0)cout<<endl;
	}
	Time end;
	cout<<endl;
	cout<<"start = "<<start.ascii();
	cout<<"end = "<<end.ascii();
	cout<<"delta = "<<end.delta(&start);
	cout<<endl;
	return 0;
}
