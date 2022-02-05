//:C10:Dependency1StatFun.cpp
#include "Dependency1StatFun.h"
Dependency1& d1(){
	static Dependency1 dep1;
	return dep1;
}
