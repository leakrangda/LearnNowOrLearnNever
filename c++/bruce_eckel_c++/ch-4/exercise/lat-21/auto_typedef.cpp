#include <iostream>

enum Vegie{
	tomato=0,
	cabbage,
	cucumber
};
union Base{
	int a;
	float b;
	double c;
	long d;
};
using namespace std;

int main()
{
	Base base;
	Vegie sayur;

	base.a=10;
	sayur=tomato;
	cout<<"sayur tomato is = "<<sayur<<endl;
	cout<<"base in float is= "<<base.b<<endl;
	cout<<"base in int is = "<<base.a<<endl;
	cout<<"base in long is= "<<base.d<<endl;
	cout<<"base in double is ="<<base.c<<endl;

	return 0;
}
