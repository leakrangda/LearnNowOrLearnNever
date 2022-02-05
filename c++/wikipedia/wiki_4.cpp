#include <iostream>

using namespace std;

int main(void)
{
	int n;
	int biggest=0;

	cout<<"masukan angka";
	cin>>n;

	while(n--){
		int temp;
		cout<<"masukan angka:";
		cin>>temp;
		if(temp > biggest)
			biggest=temp;
	}
	cout<<"biggest adalah:"<<biggest<<endl;
}

