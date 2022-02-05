#include <iostream>
using namespace std;

int main(void)
{
	int *intPtr=new (int);
	long int *longPtr=new(long);
	char *arChar=new char[100];
	float *arFloat=new float[100];

	cout<<"address of int= "<<intPtr<<endl
		<<"address of long= "<<longPtr<<endl
		<<"address of array of 100 char= "<<arChar<<endl
		<<"address of array of 100 float= "<<arFloat<<endl;
	delete intPtr;
	delete longPtr;
	delete[] arChar;
	delete[] arFloat;
	return 0;
}
