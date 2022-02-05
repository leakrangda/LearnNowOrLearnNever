//11_lib.h
#ifndef __11_LIB_H
#define __11_LIB_H
#include <iostream>


class Number{
	double angka;
	public:
		Number(double arg=0.0):angka(arg){}
		const Number operator*(const Number& a)const{
			return Number(angka * a.angka);
		}
		Number operator/(const Number& a)const{
			return Number(angka / a.angka);
		}
		Number operator-(const Number& a)const{
			return Number(angka - a.angka);
		}
		Number operator+(const Number& a)const{
			return Number(angka - a.angka);
		}
		const Number operator=(const Number& a){
			if(this == &a)
				;
			else
				angka=a.angka;
			return *this;
		}
		operator double(){
			return angka;
		}
		friend std::ostream& operator<<(std::ostream& out, const Number& input);
		friend std::istream& operator>>(std::istream& in, Number& output);

};
std::ostream& operator<<(std::ostream& out, const Number& input){
	out<<input.angka;
	return out;
}
std::istream& operator>>(std::istream& in, Number& out){
	in>>out.angka;
	return in;
}
#endif
