#include "vector_cpplib.h"
#include <iostream>
#include <cassert>
#include <vector>

using namespace std;
//quantity of element to add
//when increasing storage:
void Stash::initialize(int sz){
	quantity=storage.size();
	size=sz;
	next=0;
}
int Stash::add(const void* element){
	//copy element in storage,
	//starting at next empty space;
	int startBytes = next * size;
	unsigned char* e=(unsigned char*)element;//1 byte penunjuk (char*)
	for(int i=0;i < size;i++)//selama byte masih ada
		storage.push_back(e[i]);//copy setiap byte element
	next++;
	return(next-1);
}
void* Stash::fetch(int index){
	//check index boundaries;
	assert(0<=index);
	if(index>=next)
		return 0;//to indicates the end
	//produce pointer to desired element;
	return &(storage[index * size]);
}
int Stash::count(){
	return storage.size();
}
