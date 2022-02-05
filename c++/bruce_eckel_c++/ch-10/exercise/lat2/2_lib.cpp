//2_lib.cpp
#include <iostream>
using namespace std;

unsigned long int f(bool arg=false){
	unsigned long int static fib;
	unsigned long int static first;
	unsigned long int static second;
	if(arg==true){
		fib=0;
		first=0;
		second=1;
		return 0;
	}
	else{
		fib=first + second;
		first=second;
		second=fib;
	
		return fib;
	}
}
int main(){
	f(true);
	for(int i=0;i < 100;i++)
		cout<<"fib "<<i<<"="<<f(false)<<endl;
}
