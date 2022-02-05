//:C10:NamespaceOverriding2.h
#ifndef NAMESPACEOVERRIDING2_H
#define NAMESPACEOERRRIDING2_H
#include "NamespaceInt.h"
namespace Calculation{
	using namespace Int;
	Integer divide(Integer, Integer);
	//...
}
#endif
