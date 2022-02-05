//14_lib.h
#ifndef __14_LIB_H
#define __14_LIB_H
#include <string>
#include <iostream>
#include <cstring>

class Bird{
	int field;
	std::string kalimat;
	static int angka;
	std::string convert(int);
	public:
		Bird(){		// default constructor
			kalimat = "Bird#" + convert(angka);
			angka++;
		}
		Bird(int arg=0):field(arg){			// constructor
			Bird();
		}
		Bird(const Bird& arg){				// copy constructor
			if(this == &arg)
				;
			else{
				kalimat = arg.kalimat;
				angka = arg.angka;
			}
		}
		const Bird& operator=(const Bird& arg){		// (=) constructor
			if(this == &arg)
				;
			else{
				kalimat = arg.kalimat;
				angka = arg.angka;
			}
			return *this;
		}
		const Bird& operator+(const Bird& arg)const{	// op + overload
			return Bird(field + arg.field);
		}
		const Bird& operator-(const Bird& arg)const{
			return Bird(field - arg.field);
		}
		const Bird& operator*(const Bird& arg)const{
			return Bird(field * arg.field);
		}
		const Bird& operator/(const Bird& arg)const{
			return Bird(field / arg.field);
		}
		friend std::ostream& operator<<(std::ostream& out, const Bird& arg);

};
std::ostream& operator<<(std::ostream& out, const Bird& arg){
	out<<"Bird:"<<arg.kalimat<<std::endl;
	return out;
}
std::string Bird::convert(int arg){
	std::string temp;
	
	if(arg)
		temp=convert(arg / 10);
	return temp += (arg%10) + '0';
}

#endif
