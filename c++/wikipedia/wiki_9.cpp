#include <iostream>

using namespace std;

int main(void)
{
	int a,b;
	int limit;

	a=0;
	b=1;
	cout<<"input limit:";
	cin>>limit;

	while(a < limit){
		cout<<a<<","<<b<<",";
		a+=b;
		b+=a;
	}
	return 0;
}		
