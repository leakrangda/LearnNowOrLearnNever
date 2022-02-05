//:C09:Stash4.cpp
#include "Stash4.h"
#include <iostream>
#include <cassert>
using namespace std;
const int increment = 100;

int Stash::add(void* element){
	if(next >= quantity)	//enough space left?
		inflate(increment);
	//copy element into storage,
	//starting at next empty space:
	int startBytes = next * size;
	unsigned char* e = (unsigned char*)element;
	for(int i = 0;i < size; i++)
		storage[startBytes + i] = e[i];
	next++;
	return (next - 1);	//index number
}
void Stash::inflate(int increase){
	assert(increase >= 0);
	if(increase == 0)return;
	int newQuantity = quantity + increase;
	int newBytes = size * newQuantity;
	int oldBytes = quantity * size;
	unsigned char* b = new unsigned char[newBytes];
	for(int i = 0; i < oldBytes;i++)
		b[i] = storage[i];	//copy old to new
	delete[](storage);	//release old storage
	storage = b;	//point to new memory
	quantity = newQuantity;	//adjust the size
}
