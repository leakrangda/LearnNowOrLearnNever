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
		//Stash(int size=4);	//zero quantity
		Stash(int size=4, int initQuantity=0);
		~Stash();
		int add(void* element);
		void* fetch(int index);
		int count();
};
#endif	//STASH3_H///
