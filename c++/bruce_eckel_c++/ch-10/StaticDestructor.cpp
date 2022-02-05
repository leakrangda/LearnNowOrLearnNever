//:C10:StaticDestructors.cpp
//static object destructors
#include <fstream>
using namespace std;
ofstream out("statdest.out");	//trace file

class Obj{
	char c;	//identifier
	public:
		Obj(char cc): c(cc){
			out<<"obj::obj() for "<<c<<endl;
		}
		~Obj(){
			out<<"obj::~obj() for "<<c<<endl;
		}
};
Obj a('a');	//global (static storage);
//constructor & destructor always called
//
void f(){
	static Obj b('b');
}
void g(){
	static Obj c('c');
}
int main(){
	out <<"inside main()"<<endl;
	f();	//call static constructor for b
	//g() not called
	out <<"leaving main()" <<endl;
}
