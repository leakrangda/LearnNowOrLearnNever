//UseHandle.cpp
//
#include "Handle.h"

int main()
{
	Handle u;
	u.initialize();
	u.read();
	u.change(1);
	u.cleanup();
}
