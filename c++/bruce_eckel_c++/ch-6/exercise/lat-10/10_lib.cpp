//10_lib.cpp
#include <iostream>
using namespace std;

class T{
	public:
	int i;
};
class U{
	public:
		int j;
		U(int i);
};
U::U(int i){
	j=i;
}
int main()
{
	T t;
	U u;	
	//with default constructor
	
	cout<<"dalam object t adalah="<<&t<<endl;
	return 0;
	//with non default construtor
	cout<<"dalam object u adalah="<<&u<<endl;
	return 0;
}
