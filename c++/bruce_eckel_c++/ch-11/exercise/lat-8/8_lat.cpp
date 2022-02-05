//8_lat.cpp
#include <iostream>
using namespace std;

void f(char&);
int main(){
	char c = 'a';
	cout<<"before, c = "<<c<<endl;
	f(c);
	cout<<"after, c = "<<c<<endl;
}
void f(char& arg){
	arg+=2;
}
