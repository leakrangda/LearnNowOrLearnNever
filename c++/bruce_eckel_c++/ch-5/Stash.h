//:c05: stash.h
//convert do use access control
#ifndef	STASH_H
#define	STASH_H

class Stash{
	int size;	//Size of each space
	int quantitiy;	//number of storage spaces;
	int next;	//next empty space
	//Dynamically allocated array of bytes:
	unsigned char* storage;
	void inflate(int size);
	public:
	void initialize(int size);
	void cleanup();
	int add(void* element);
	void* fetch(int index);
	int count();
};
#endif//STASH_H///
