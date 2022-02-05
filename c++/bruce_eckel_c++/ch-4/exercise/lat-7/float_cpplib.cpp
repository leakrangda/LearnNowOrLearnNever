#include "float_cpplib.h"
#include <iostream>
#include <cassert>
using namespace std;
//quantity of element to add
//when increasing storage:
const int increment=100;
void Stash::initialize(int sz){
	size=sz;
	quantity=0;
	storage=0;
	next=0;
}
int Stash::add(const void* element){
	if(next >= quantity)//enough space left?
		inflate(increment);
	//copy element in storage,
	//starting at next empty space;
	int startBytes = next * size;
	unsigned char* e=(unsigned char*)element;//1 byte penunjuk (char*)
	for(int i=0;i < size;i++)//selama byte masih ada
		storage[startBytes + i]=e[i];//copy setiap byte element
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
	return next;
}
void Stash::inflate(int increase){
	assert(increase > 0);
	int newQuantity=quantity + increase;
	int newBytes=newQuantity * size;
	int oldBytes=quantity * size;
	unsigned char* b=new unsigned char[newBytes];
	for(int i=0;i < oldBytes;i++)
		b[i]=storage[i];//copy old to new
	delete[]storage;//old storage
	storage=b;
	quantity=newQuantity;
}
void Stash::cleanup(){
	if(storage !=0){
		cout<<"freeing storage"<<endl;
		delete[]storage;
	}
}
