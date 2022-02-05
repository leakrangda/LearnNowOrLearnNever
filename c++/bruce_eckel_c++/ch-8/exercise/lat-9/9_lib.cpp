//9_lib.cpp
//const pointer to double 
#include <iostream>
using namespace std;

double ar[]={12,32,43,5343,432,43};
double* const ptr1=ar;

int main(){
	for(int i=0;i < 5;i++){
		cout<<"ar["<<i<<"]="<<*(ptr1+i);
		cout<<" dirubah menjadi="<<i;
		*(ptr1+i)=i;	//boleh, const pointer to double
		cout<<" ,sekarang ";
		cout<<"ar["<<i<<"]="<<*(ptr1+i);
		cout<<endl;
	}
#ifdef DRBAH	//sudah pasti error
	for(int i=0;i < 5;i++)
		cout<<"ar["<<i<<"]="<<*ptr1++<<endl; //!ERROR
	cout<<"ptr1 sudah dirubah"<<endl;
#endif
	return 0;
}
