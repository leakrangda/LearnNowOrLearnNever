//:C10:Header2.h
#ifndef HEADER2_H
#define HEADER2_H
#include "Header1.h"
//add more names to MyLib
namespace MyLib{	//! NOT a redefinition!
	extern int y;
	void g();
	//..
}
#endif
