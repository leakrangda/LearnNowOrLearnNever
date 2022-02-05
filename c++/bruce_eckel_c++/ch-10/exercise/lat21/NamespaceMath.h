//:C10:NamespaceMath.h
#ifndef NAMESPACEMATH_H
#define NAMESPACEMAtH_H
#include "NamespaceInt.h"
namespace Math{
	using namespace Int;
	Integer a, b;
	Integer divide(Integer, Integer);
	//...
	//}
}
inline Int::Integer Math::divide(Int::Integer a, Int::Integer b){
	//kosong
}
#endif
