//:C10:UsingDeclaration2.cpp
#include "UsingDeclaration.h"
namespace Q{
	using U::f;
	using V::g;
}
void m(){
	using namespace Q;
	f();	//calls U::f();
	g();	//calls V::g();
}
int main(){}
