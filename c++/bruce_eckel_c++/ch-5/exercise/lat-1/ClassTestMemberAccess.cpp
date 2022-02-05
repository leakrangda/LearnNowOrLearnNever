//classtestmemberaccess.cpp
//testing accessing member of a class with different scope specifier
#include <iostream>
using namespace std;

class T{
	private:
		int a;
		void f();
	public:
		int b;
		void g();
	protected:
		int c;
		void h();

};
void T::f(){
	cout<<"in private"<<endl;
}
void T::g(){
	cout<<"in public"<<endl;
}
void T::h(){
	cout<<"in protected"<<endl;
}
int main()
{
	//instantiate it
	T t;

	//accessing private member
	t.a=1;
	t.f();

	//accessing public member
	t.b=2;
	t.g();

	//accessing protected member
	t.c=3;
	t.h();

}

