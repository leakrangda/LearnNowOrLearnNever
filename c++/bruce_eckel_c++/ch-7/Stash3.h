//:c07:Stash3.h
//function overloading
#ifndef STASH3_H
#define STASH3_H

class Stash{
	int size;	//size of each space
	int quantity;	//number of storage spaces
	int next;	//next empty space
	//dynamically allocated array of bytes:
	unsigned char* storage;
	void inflate(int increase);
	public:
		Stash(int size);	//zero quantity
		Stash(int size, int initQuantity);
		~Stash();
		int add(void* element);
		void* fetch(int index);
		int count();
};
#endif	//STASH3_H///
