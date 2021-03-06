//:co7:Mem.cpp
#include "Mem.h"
#include <cstring>
using namespace std;

Mem::Mem(){mem = 0; size = 0;}

Mem::Mem(int sz){
	mem = 0;
	size = 0;
	ensureMinSize(sz);
}
Mem::Mem(const Mem& arg){		//adding copy constructor
	mem = new byte[size];
	memcpy(mem,arg.mem,size);
}
Mem::~Mem(){delete []mem;}
int Mem::msize(){return size;}
void Mem::ensureMinSize(int minSize){
	if(size < minSize){
		byte* newmem = new byte[minSize];
		memset(newmem + size, 0, minSize - size);
		memcpy(newmem, mem, size);
		delete []mem;
		mem = newmem;
		size = minSize;
	}
}
byte* Mem::pointer(){return mem;}
byte* Mem::pointer(int minSize){
	ensureMinSize(minSize);
	return mem;
}
