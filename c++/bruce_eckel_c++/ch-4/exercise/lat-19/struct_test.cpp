#include <iostream>
using namespace std;
struct TAG{
	int a;
	int b;
	void f();
	struct TIG{
		int a;
		int b;
		void f();
	}d;
};

int main(void)
{
	TAG obj;
	cout<<"sizeof="<<sizeof(obj)<<endl;
	obj.f();
	obj.d.f();
	return 0;
}
void TAG::f(){
	cout<<"inside TAG"<<endl;
}
void TAG::TIG::f(){
	cout<<"inside TIG"<<endl;
}
