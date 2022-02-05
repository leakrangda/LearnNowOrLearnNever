#include <iostream>
using namespace std;

int main(){
	int a;
	int local=0;

	cout<<"input:";
	cin>>a;

	for(int i=0;i < a; i++){
		for(int j=0;j < a; j++)
			cout<<" "<<++local;
		cout<<endl;
	}
}
