#include <iostream>
#include <string>
using namespace std;

class T{
	const string tetap;
	enum{a=100};
	string array[a];
	public:
		T(string);
		~T();
		void show();
};
T::T(string b):tetap(b){for(int i=0;i < a;i++)array[i]=tetap;}
T::~T(){cout<<"object dihancurkan."<<endl;}
void T::show(){for(int i=0;i < a;i++)cout<<array[i]<<endl;}

int main(){
	T test("ilham");
	test.show();
	return 0;
}
