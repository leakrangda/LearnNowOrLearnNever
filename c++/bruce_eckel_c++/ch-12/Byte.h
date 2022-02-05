//:C12:Byte.h
//Member overloded operators
#ifndef BYTE_H
#define BYTE_H
#include "../require.h"
#include <iostream>
//Member functions (implicit "this"):

class Byte{
	unsigned char b;
	public:
		Byte(unsigned char bb=0):b(bb){}
		const Byte
			operator+(const Byte& right)const{
				return Byte(b + right.b);
			}
		const Byte
			operator-(const Byte& right)const{
				return Byte(b - right.b);
			}
		const Byte
			operator*(const Byte& right)const{
				return Byte(b * right.b);
			}
		const Byte
			operator/(const Byte& right)const{
				return Byte(b / right.b);
			}
		const Byte
			operator%(const Byte& right)const{
				return Byte(b % right.b);
			}
		const Byte
			operator^(const Byte& right)const{
				return Byte(b ^ right.b);
			}
		const Byte
			operator&(const Byte& right)const{
				return Byte(b & right.b);
			}
		const Byte
			operator|(const Byte& right)const{
				return Byte(b | right.b);
			}
		const Byte
			operator<<(const Byte& right)const{
				return Byte(b << right.b);
			}
		const Byte
			operator>>(const Byte& right)const{
				return Byte(b >> right.b);
			}
		//Assignment modify & return lvalue.
		//operator= can only be a member function:
		Byte& operator=(const Byte& right){
			//Handle self-assignment:
			if(this == &right)return *this;
			b = right.b;
			return *this;
		}
		Byte& operator+=(const Byte& right){
			if(this == &right){/*self-assignment*/}
			b +=right.b;
			return *this;
		}
		Byte& operator-=(const Byte& right){
			if(this == &right){/*self-assignment*/}
			b -=right.b;
			return *this;
		}
		Byte& operator*=(const Byte& right){
			if(this == &right){/*self-assignment*/}
			b *=right.b;
			return *this;
		}
		Byte& operator/=(const Byte& right){
			if(this == &right){/*self-assignment*/}
			b /=right.b;
			return *this;
		}
		Byte& operator%=(const Byte& right){
			if(this == &right){/*self-assignment*/}
			b %=right.b;
			return *this;
		}
		Byte& operator^=(const Byte& right){
			if(this == &right){/*self-assignment*/}
			b ^=right.b;
			return *this;
		}
		Byte& operator&=(const Byte& right){
			if(this == &right){/*self-assignment*/}
			b &=right.b;
			return *this;
		}
		Byte& operator|=(const Byte& right){
			if(this == &right){/*self-assignment*/}
			b |=right.b;
			return *this;
		}
		Byte& operator>>=(const Byte& right){
			if(this == &right){/*self-assignment*/}
			b >>=right.b;
			return *this;
		}
		Byte& operator<<=(const Byte& right){
			if(this == &right){/*self-assignment*/}
			b <<=right.b;
			return *this;
		}
		//Conditional operators return true/false:
		int operator==(const Byte& right)const{
			return b == right.b;
		}
		int operator!=(const Byte& right)const{
			return b != right.b;
		}
		int operator<=(const Byte& right)const{
			return b <= right.b;
		}
		int operator>=(const Byte& right)const{
			return b >= right.b;
		}
		int operator<(const Byte& right)const{
			return b < right.b;
		}
		int operator>(const Byte& right)const{
			return b > right.b;
		}
		int operator&&(const Byte& right)const{
			return b && right.b;
		}
		int operator||(const Byte& right)const{
			return b || right.b;
		}
		//write the contents to an ostream:
		void print(std::ostream& os)const{
			os<<"0x"<<std::hex<<int(b)<<std::dec;
		}
};
#endif
