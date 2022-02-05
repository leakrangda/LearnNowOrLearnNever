//video.cpp
#include <iostream>
#include "video.h"
void Video::printTitle(){
	std::cout<<"title    : "<<Video::title<<std::endl;
}
bool Video::checkAvail(){
	return Video::avail;
}
int Video::checkSum(){
	return Video::sum;
}
int Video::checkRent(){
	return Video::rent;
}
