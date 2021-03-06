//:c07:Stash3.cpp
//funtion overloading
#include "Stash3.h"
#include "../require.h"
#include <iostream>
#include <cassert>
using namespace std;
const int increment = 100;

Stash::Stash(int sz){
	size = sz;
	quantity = 0;
	next = 0;
	storage = 0;
}
Stash::Stash(int sz, int initQuantity){
	size = sz;
	quantity = 0;
	next = 0;
	storage = 0;
	inflate(initQuantity);
}
Stash::~Stash(){
	if(storage != 0){
		cout<<"freeing storage"<<endl;
		delete []storage;
	}
}
int Stash::add(void* element){
	if(next >= quantity)	//enough space left?
		inflate(increment);
	//coy element into storage,
	//starting at next empty space:
	int startBytes = next * size;
	unsigned char* e = (unsigned char*)element;
	for(int i = 0;i < size; i++)
		storage[startBytes + i] = e[i];
	next++;
	return(next - 1);	//index number;
}
void* Stash::fetch(int index){
	require(0 <= index, "Stash::fetch(-))index");
	if(index >= next)
		return 0;	//To indicate the end
	//Produce pointer ot desired element;
	return &(storage[index * size]);
}
int Stash::count(){
	return next;	//number of element in Cstash
}
void Stash::inflate(int increase){
	assert(increase >= 0);
	if(increase == 0)
		return ;
	int newQuantity = quantity + increase;
	int newBytes = newQuantity * size;
	int oldBytes = quantity * size;
	unsigned char* b = new unsigned char[newBytes];
	for(int i = 0; i< oldBytes; i++)
		b[i] = storage[i];	//copy old ot new
	delete [](storage);	//release old storage
	storage = b;	//Point to new memory
	quantity = newQuantity;	//Adjust the size
}
