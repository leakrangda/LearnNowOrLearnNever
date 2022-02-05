//8_lib.cpp
//pointer to const
#include <iostream>
using namespace std;

const long* ptr1=NULL;	//tipe satu
long const* ptr2=NULL;	//tipe dua

int main(){
	long ar[]={1l,2l,3l,4l};
	ptr1=ar;
	for(int i=0;i < 4;i++)
		cout<<*ptr1++<<",";
	cout<<endl;
#ifdef DRBAH	//sudah pasti error jika macro DRBAH diaktifkan
	ptr2=ar;
	ptr2[2]=5l;	//!ERROR tidak bisa merubah nilai-pointer to constant
	cout<<"sudah dirubah"<<ptr2[2]<<endl;
#endif
	return 0;
}
