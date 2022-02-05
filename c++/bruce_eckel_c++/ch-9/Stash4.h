//:c09:Stash4.h
//Inline functions
#ifndef STASH_H
#define STASH_H
#include "../require.h"

class Stash{
	int size;	//size of each space
	int quantity;	//number of strorage space
	int next;	//next empty space
	//Dynamically allocated array of bytes.
	unsigned char* storage;
	void inflate(int increase);
	public:
		Stash(int sz): size(sz), quantity(0),next(0),storage(0){}
		Stash(int sz, int initQuantity):size(sz),quantity(0),next(0)
						,storage(0){
							inflate(initQuantity);
						}
		~Stash(){
			if(storage !=0)
				delete[]storage;
		}
		int add(void* element);
		void* fetch(int index)const{
			require(0 <= index, "Stash::fetch(-)index");
			if(index >= next)
				return 0;	//to indicate the end
			//procude pointer to desired element;
			return &(storage[index * size]);
		}
		int count()const{return next;}
};
#endif
