//13_lib.cpp3
//fungsi dengan const argument
#include <iostream>
using namespace std;

void ini_fungsi(const int);
int main(){
	const int i=5;
	ini_fungsi(i);
}
#ifdef DRBAH
void ini_fungsi(const int a){
	cout<<"i="<<a<<endl;
}
#else	//kaga error, sama saja
void ini_fungsi(int a){
	cout<<"i="<<a<<endl;
}
#endif
