#include <iostream>
using namespace std;

class T{
	const float a;
	float b;
	public:
		T(float, float);
		~T();
		void show();
};
T::T(float z, float x):a(z),b(x){};
T::~T(){cout<<"object dihancurkan."<<endl;}
void T::show(){
	cout<<"const float a : "<<a<<endl;
	cout<<"float b : "<<b<<endl;
}

int main(){
	T test2(5,6);

	test2.show();
	return 0;
}
