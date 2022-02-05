#include <iostream>
using namespace std;

struct TAG{
	int a;
	int b;
	void f();
};
struct TIG{
	int a;
	int b;
};
struct TOG{
};
int main()
{
	TAG obj1;
	TIG obj2;
	TOG obj3;

	cout<<"size of structure"<<endl;
	obj1.f();
	cout<<"size of TAG:"<<sizeof(obj1)<<endl;
	cout<<"size of TIG:"<<sizeof(obj2)<<endl;
	cout<<"size of TOG:"<<sizeof(obj3)<<endl;
	return 0;
}
void TAG::f(){
	cout<<"inside TAG"<<endl;
}
