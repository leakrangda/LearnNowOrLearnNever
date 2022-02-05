//:c07:Stash3.cpp
//Stash dengan Mem class
#include "Stash4.h"
#include "../../../require.h"
#include <iostream>
#include <cassert>
using namespace std;
const int increment = 100;

Stash::Stash(int sz){
	size = sz;
	memory = Mem(0);
	next = 0;
}
Stash::Stash(int sz, int initQuantity){
	size = sz;
	memory = Mem(initQuantity);
	next = 0;
}
Stash::~Stash(){
	cout<<"freeing storage"<<endl;
}
int Stash::add(void* element){
	if(next >= memory.msize()/size)	//enough space left?
		inflate(increment);
	//coy element into storage,
	//starting at next empty space:
	int startBytes = next * size;
	unsigned char* e = (unsigned char*)element;
	unsigned char* ptr = memory.pointer(startBytes);
       	ptr+= startBytes;
	for(int i = 0;i < size; i++)
		ptr[startBytes + i] = e[i];
	next++;
	return(next - 1);	//index number;
}
void* Stash::fetch(int index){
	require(0 <= index, "Stash::fetch(-))index");
	if(index >= next)
		return 0;	//To indicate the end
	//Produce pointer ot desired element;
	return (void *)(memory.pointer(index) + index * size);
}
int Stash::count(){
	return next;	//number of element in Cstash
}
void Stash::inflate(int increase){
	assert(increase >= 0);
	if(increase == 0)
		return ;
	memory.pointer(memory.msize() + increase);
}
void* Stash::top(){
	return (void*)(memory.pointer(next) + next * size);
}
