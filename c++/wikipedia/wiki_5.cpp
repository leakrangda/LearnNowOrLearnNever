#include <iostream>


using namespace std;

int main(void)
{
	int n;
	int result=1;

	cout<<"masukan angka:";
	cin >> n;
	while(n>1)
		result*=n--;
	cout<<"factorial nya adalah:"<<result<<endl;
	return 0;
}
