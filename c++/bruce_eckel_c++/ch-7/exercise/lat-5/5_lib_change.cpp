//5_lib.cpp
#include <iostream>
using namespace std;

int function(int, int);
int main()
{
	cout<<function(3,5)<<endl;
	return 0;
}
int function(int a, int)
{
	return a*a;
}
