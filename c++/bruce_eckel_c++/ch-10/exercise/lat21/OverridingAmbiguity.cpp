//:C10:OverridingAmbiguity.cpp
#include "NamespaceMath.h"
#include "NamespaceOverriding2.h"
void s(){
	Math::divide(1,2);	//Ambiguity
	Calculation::divide(3,5);
}
void t(){
	using namespace Math;
	using namespace Calculation;
	divide(1,2);
}
int main(){s();t();}

