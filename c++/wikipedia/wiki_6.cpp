#include <iostream>

using namespace std;

int main(void)
{
	int number;
	float sum=0;
	int counter=0;
	cout<<"angka:";
	cin>>number;

	while(counter++ < number){
		float temp;
 
		cout<<"angka"<<counter<<":";
		cin>>temp;
		sum+=temp;
	}
	cout<<"rataanya adalah:"<<(float)sum/number<<endl;
}
