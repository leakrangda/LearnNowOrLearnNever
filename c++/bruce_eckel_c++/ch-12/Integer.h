//:C12:Integer.h
//Non-member overloaded operators
#ifndef INTEGER_H
#define INTEGER_H
#include <iostream>

//non-member functions:
class Integer{
	long i;
	public:
		Integer(long ll = 0):i(ll){}
		//Operator that create new, modified value:
		friend const Integer
			operator+(const Integer& left,
					const Integer& right);
		friend const Integer
			operator-(const Integer& left,
					const Integer& right);
		friend const Integer
			operator*(const Integer& left,
					const Integer& right);
		friend const Integer
			operator/(const Integer& left, 
					const Integer& right);
		friend const Integer
			operator%(const Integer& left,
					const Integer& right);
		friend const Integer
			operator^(const Integer& left,
					const Integer& right);
		friend const Integer
			operator&(const Integer& left,
					const Integer& right);
		friend const Integer
			operator|(const Integer& left,
					const Integer& right);
		friend const Integer
			operator>>(const Integer& left,
					const Integer& right);
		friend const Integer
			operator<<(const Integer& left,
					const Integer& right);
		//Assigments modify & return lvalue:
		friend Integer&
			operator+=(Integer& left,
					const Integer& right);
		friend Integer&
			operator-=(Integer& left,
					const Integer& right);
		friend Integer&  
			operator*=(Integer& left,
					const Integer& right);
		friend Integer&  
			operator/=(Integer& left,
					const Integer& right);
		friend Integer&  
			operator%=(Integer& left,
					const Integer& right);
		friend Integer&  
			operator^=(Integer& left,
					const Integer& right);
		friend Integer&  
			operator&=(Integer& left,
					const Integer& right);
		friend Integer&  
			operator|=(Integer& left,
					const Integer& right);
		friend Integer&  
			operator>>=(Integer& left,
					const Integer& right);
		friend Integer&  
			operator<<=(Integer& left,
					const Integer& right);
		//Conditional operators return true/false:
		friend int
			operator==(const Integer& left,
					const Integer& right);
		friend int
			operator!=(const Integer& left,
					const Integer& right);
		friend int
			operator<(const Integer& left,
					const Integer& right);
		friend int
			operator>(const Integer& left,
					const Integer& right);
		friend int
			operator<=(const Integer& left,
					const Integer& right);
		friend int
			operator>=(const Integer& left,
					const Integer& right);
		friend int
			operator&&(const Integer& left,
					const Integer& right);
		friend int
			operator||(const Integer& left,
					const Integer& right);
		//write the contents to an ostream:
		void print(std::ostream& os)const{os << i;}
};
#endif
