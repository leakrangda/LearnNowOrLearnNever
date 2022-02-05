//:C10:Statinit.cpp
//scope of static initializer
#include <iostream>
using namespace std;
int x = 100;

class WithStatic{
	static int x;
	static int y;
	public:
		void print()const{
			cout<<"withStatic::x = " <<x<<endl;
			cout<<"withStatic::y = " <<y<<endl;
		}
};
int WithStatic::x=1;
int WithStatic::y=x+1;
//withStatic::x NOT ::x

int main(){
	WithStatic ws;
	ws.print();
}
