//4_lib.h
#ifndef __4_LIB_H
#define __4_LIB_H
#include <iostream>

class Monitor{
	static int count;
	public:
		void incident(){count++;}
		void print(){
			std::cout<<"incident: "<<count<<std::endl;
		}
		void decrement(){count--;}
};
#endif	//end of 4_lib.h
class Monitor2{
	Monitor* ptr;
	public:
		Monitor2(Monitor* arg):ptr(arg){
			if(ptr!=NULL){
				std::cout<<"------inside constructor------\n";
				ptr->incident();
				ptr->print();
				std::cout<<"------------------------------\n";
			}
		}
		~Monitor2(){
			std::cout<<"------inside destructor-------\n";
			ptr->decrement();
			ptr->print();
			std::cout<<"------------------------------\n";
		}
};
void f();
void g(Monitor* arg);
