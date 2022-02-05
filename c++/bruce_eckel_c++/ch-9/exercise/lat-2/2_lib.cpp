//2_lib.cpp
//floor macro
#include <iostream>
#define FLOOR(x,y)	((x)>(y)?0:1)
#define TRACE(f)	cout<<#f<< "="<<(f)<<endl
using namespace std;

int main(){
	int a;
	int b;
	for(int i = 0; i < 5;i++){
		cout<<"a:";
		cin>>a;
		cout<<"b:";
		cin>>b;
		TRACE(FLOOR(a,b));
	}
	return 0;
}
