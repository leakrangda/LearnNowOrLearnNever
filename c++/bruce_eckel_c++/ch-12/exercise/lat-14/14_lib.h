//14_lib.h
#ifndef __14_LIB_H
#define __14_LIB_H
#include <string>
#include <iostream>
#include <cstring>

class Bird{
	std::string kalimat;
	static int angka;
	std::string convert(int);
	public:
		Bird(){
			kalimat = "Bird#" + convert(angka);
			angka++;
		}
		Bird(const Bird& arg){
			if(this == &arg)
				;
			else{
				kalimat = arg.kalimat;
				angka = arg.angka;
			}
		}
		const Bird& operator=(const Bird& arg){
			if(this == &arg)
				;
			else{
				kalimat = arg.kalimat;
				angka = arg.angka;
			}
			return *this;
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
