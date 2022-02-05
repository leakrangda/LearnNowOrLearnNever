//7_lib.cpp
#include <iostream>
using namespace std;

void f(int**&);

int main(){
	int c=20;
	int* pc = &c;
	int** ppc = &pc;
	cout<<"before, c = "<<c<<endl;
	f(ppc);
	cout<<"after, c = "<<c<<endl;
	return 0;
}
void f(int**& arg){
	**arg+=2;
}
