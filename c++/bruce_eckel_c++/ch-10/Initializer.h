//:C10:initializer.h
//Static initialization technique
#ifndef INITIALIZER_H
#define INITIALIZER_H
#include <iostream>
extern int x;	//Declaration, not definitions
extern int y;

class Initializer{
	static int initCount;
	public:
		Initializer(){
			std::cout<<"initializer()"<<std::endl;
			//initilialize first time only
			if(initCount++ == 0){
				std::cout<<"performing initialization"
					<<std::endl;
				x = 100;
				y = 200;
			}
		}
		~Initializer(){
			std::cout<<"~Initializer()"<<std::endl;
			//clean up last time only
			if(--initCount == 0){
				std::cout<<"performing cleanup"
					<<std::endl;
				//any necessary cleanup here
			}
		}
};
//The following creates one object in each
//file where Initialzer.h is included, but that
//object is only visible within that file:
static Initializer init;
#endif
