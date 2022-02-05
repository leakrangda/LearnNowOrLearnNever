//c06:Stash2.h
//with constructors & destructors
#include "../require.h"
#ifndef	STASH2_H
#define	STASH2_H

class Stash{
	private:
		int size;	//size of each space
		int quantity;	//number of storage spaces
		int next;	//next empty space
		//Dynamically allocated array of bytes;
		void inflate(int increase);
		unsigned char* storage;
	public:
		Stash(int size);
		~Stash();
		int add(const void* element);
		void* fetch(int index);
		int count();
};
#endif
