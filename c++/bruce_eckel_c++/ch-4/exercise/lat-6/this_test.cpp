//this_test.cpp
//implementasi
//
#include "this_test.h"

void UseThis::isiInt(int data1){
	this->data1=data1;
}
void UseThis::isiFloat(float data2){
	this->data2=data2;
}
int UseThis::getInt(){
	return this->data1;
}
float UseThis::getFloat(){
	return this->data2;
}

