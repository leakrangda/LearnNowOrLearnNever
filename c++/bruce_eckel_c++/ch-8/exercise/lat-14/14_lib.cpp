//14_lib.cpp
//const reference to float
#include <iostream>
using namespace std;

void ini_fungsi(float);

int main(){
	float a=10;
	ini_fungsi(a);
}
void ini_fungsi(float a){
	const float& b= a;
	cout<<"isinya="<<b<<endl;
#ifdef DRBAH	//error
	b=15;	//!illegal, tidak boleh merubah constant reference
	cout<<"isinya="<<b<<endl;
#endif
}
