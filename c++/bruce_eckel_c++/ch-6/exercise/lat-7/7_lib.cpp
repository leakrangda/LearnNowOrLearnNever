#include <iostream>
using namespace std;

int main()
{
	double ar[10]={1,2,3,4,5};
	for(int i=0;i < sizeof(ar)/sizeof *ar;i++)
		cout<<"index= "<<i<<"="<<ar[i]<<endl;
	double az[]={6,7,8,9,10};
	for(int i=0;i < sizeof(az)/sizeof *az;i++)
		cout<<"index= "<<i<<"="<<az[i]<<endl;
	return 0;
}
