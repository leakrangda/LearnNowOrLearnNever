#ifndef __15_LIB_H
#define __15_LIB_H
#include "16_lib.h"

class BirdHouse{
	int field;
	Bird burung;
	Bird* burung_ptr;
	Bird& burung_ref;
	const BirdHouse& operator=(const Bird&);
	BirdHouse(const BirdHouse&);
	public:
		BirdHouse(Bird arg1, Bird* arg2, Bird& arg3)
			:burung(arg1),burung_ptr(arg2), burung_ref(arg3){}
		const BirdHouse& operator+(const BirdHouse& arg){
			
		friend std::ostream& 
			operator<<(std::ostream& out, const BirdHouse& arg);
};
std::ostream& operator<<(std::ostream& out, const BirdHouse& arg){
	out<<"Inside house:"<<std::endl
		<<arg.burung
		<<*arg.burung_ptr
		<<arg.burung_ref;
	return out;
}
#endif
