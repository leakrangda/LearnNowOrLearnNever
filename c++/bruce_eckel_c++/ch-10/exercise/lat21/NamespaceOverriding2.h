//:C10:NamespaceOverriding2.h
#ifndef NAMESPACEOVERRIDING2_H
#define NAMESPACEOERRRIDING2_H
#include "NamespaceInt.h"
namespace Calculation{
	using namespace Int;
	Integer divide(Integer, Integer);
	//...
}
inline Int::Integer Calculation::divide(Int::Integer a, Int::Integer b){
	//kosong
}
#endif
