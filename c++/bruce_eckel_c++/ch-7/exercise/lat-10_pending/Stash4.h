//:c07:Stash3.h
//function overloading
#include "Mem.h"
#ifndef STASH3_H
#define STASH3_H

class Stash{
	int size;	//size of each space
	int next;	//next empty space
	//dynamically allocated array of bytes:
	Mem memory;
	void inflate(int increase);
	public:
		Stash(int size);	//zero quantity
		Stash(int size, int initQuantity);
		~Stash();
		int add(void* element);
		void* fetch(int index);
		int count();
		void* top();
};
#endif	//STASH3_H///
