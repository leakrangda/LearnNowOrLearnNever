#include "../../stack.h"
#include "../../cpplib.h"

struct Sslib{
	Stash *stash;
	Stack stack;
	int size;
	int i=0;
	int bufsize=100;

	void sslibInit();
	void setIterator(int);
	void showDat();
	void setStash(std::istream&);
};
