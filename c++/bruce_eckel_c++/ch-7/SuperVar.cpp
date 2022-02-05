//:co7:Supervar.cpp
//a super-variable
#include <iostream>
using namespace std;

class SuperVar{
	enum{
		character,
		integer,
		floating_point
	}vartype;	//define one
	union{
		char c;
		int i;
		float f;
	};	//anonymous union
	public:
		SuperVar(char ch);
		SuperVar(int ii);
		SuperVar(float ff);
		void print();
};

SuperVar::SuperVar(char ch){
	vartype = character;
	c = ch;
}
SuperVar::SuperVar(int ii){
	vartype = integer;
	i = ii;
}
SuperVar::SuperVar(float ff){
	vartype = floating_point;
	f = ff;
}
void SuperVar::print(){
	switch(vartype){
		case character:
			cout<<"character: "<<c<<endl;
			break;
		case integer:
			cout<<"integer: " <<i <<endl;
			break;
		case floating_point:
			cout<<"floating point: "<<f<<endl;
			break;
	}
}
int main(){
	SuperVar A('c'), B(12), C(1.44f);
	A.print();
	B.print();
	C.print();
}
