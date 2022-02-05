//4_lib.cpp
#include <iostream>
using namespace std;

int& f(int* arg){
	(*arg)++;
	return *arg;
}

int main(){
	int angka = 5;
	int* pangka = &angka;
	cout<<"sebelum dimasukan f(): angka:"<<angka<<endl;
	int& rangka=f(pangka);
	cout<<"setelah dimasukan f(): angka:"<<angka<<endl;
	cout<<"dan rangka(referene ke angka): "<<rangka<<endl;
}
