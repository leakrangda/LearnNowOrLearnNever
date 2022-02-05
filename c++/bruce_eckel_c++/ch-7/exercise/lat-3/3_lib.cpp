//3_lib.cpp
#include <iostream>
using namespace std;

class T{
	int a;
	public:
		T();
		~T();
		void print();
};

T::T(){
	a=10;
}
T::~T(){
	cout<<"obj deleted"<<endl;
}
void T::print(){
	cout<<"the result a="<<a<<endl;
}
int main()
{
	T t;
	t.print();
	return 0;
}

