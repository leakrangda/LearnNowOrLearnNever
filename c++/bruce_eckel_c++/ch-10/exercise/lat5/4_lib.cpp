//4_lib.cpp
#include "4_lib.h"

int Monitor::count=0;
void f(){
	static Monitor mon;
	mon.incident();
	mon.print();
}
void g(Monitor* arg){
	static Monitor2 mon(arg);
}
