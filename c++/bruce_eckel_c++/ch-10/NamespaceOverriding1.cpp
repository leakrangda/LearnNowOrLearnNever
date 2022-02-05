//:C10:NamespaceOverriding1.cpp
#include "NamespaceMath.h"
int main(){
	using namespace Math;
	Integer a;	//hides Math::a;
	a.setSign(negative);
	//now scope resolution is necessary
	//to select Math::a;
	Math::a.setSign(positive);
}
