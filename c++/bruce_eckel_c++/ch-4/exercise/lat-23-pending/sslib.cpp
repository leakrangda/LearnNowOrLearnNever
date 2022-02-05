#include <iostream>
#include "sslib.h"
#include <fstream>
#include <string>

void Sslib::sslibInit(){
	stash=new Stash;
	stash->initialize(sizeof(char) * bufsize);
	stack.initialize();
}
void Sslib::setIterator(int a){
	size=a;
}
void Sslib::showDat(){
	Stash *temp;
	while((temp=(Stash *)stack.pop())!=NULL){
		int iter=0;
		//for debuging only
		std::cout<<"poping :"<<temp<<std::endl;
		while(iter < size)
			std::cout<<"data= "<<iter++<<" : "\
				<<(char *)temp->fetch(i++)<<std::endl;
		temp->cleanup();
	}

}
void Sslib::setStash(std::istream& file){
	std::string line;
	int iterator=0;
	while(getline(file,line)){
		if(iterator > size-1){
			stack.push(stash);
			std::cout<<"pushing :"<<stash<<std::endl;
			stash=new Stash;
			stash->initialize(sizeof(char) * bufsize);
			iterator=0;
		}
		stash->add(line.c_str());
		iterator++;
	}
}
