#include <iostream>
using namespace std;

class T{
	const int i;
	int b;
	public:
		T(int);
		void change()const;
		void change(int);	
};
T::T(int sample):i(sample){}
void T::change()const{
	change(7);
}
void T::change(int c){b=c;}
int main(){
	T test(20);
	test.change();
	return 0;
}
