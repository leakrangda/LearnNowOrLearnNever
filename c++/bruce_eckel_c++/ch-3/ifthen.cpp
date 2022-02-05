//c03:ifthen.cpp
//
#include <iostream>
using namespace std;

int main(){
	int i;
	cout<<"type a number and enter"<<endl;
	cin>>i;
	if(i > 5)
		cout<<"it's greater than 5"<<endl;
	else
		if(i < 5 )
			cout<< "it's less than 5"<<endl;
		else
			cout<< "it's equal to 5"<<endl;
	cout<< "type a number and enter"<<endl;
	cin>>i;
	if(i < 10)
		if(i > 5)
			cout<<"5 < i < 10"<<endl;
		else
			cout<<"i <= 5"<<endl;
	else
		cout<<"i >= 10"<<endl;
}

