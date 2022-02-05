//:C12:OverloadingUnaryOperators.cpp
#include <iostream>
using namespace std;

//Non-member functions:
class Integer{
	long i;
	Integer* This(){return this;}
	public:
		Integer(long ll = 0):i(ll){}
		//No side effect takes const& argument:
		friend const Integer&
			operator+(const Integer& a);
		friend const Integer
			operator-(const Integer& a);
		friend const Integer
			operator~(const Integer& a);
		friend Integer*
			operator&(Integer& a);
		friend int
			operator!(const Integer& a);
		//side effects have non-const& argument:
		//prefix:
		friend const Integer&
			operator++(Integer& a);
		//Postfix:
		friend const Integer
			operator++(Integer& a, int);
		//prefix:
		friend const Integer&
			operator--(Integer& a);
		//postfix:
		friend const Integer operator--(Integer& a, int);
};

//Global operatos:
const Integer& operator+(const Integer& a){
	cout<<"+Integer\n";
	return a;//Unary + has no effect
}
const Integer operator-(const Integer& a){
	cout<<"-Integer\n";
	return Integer(-a.i);
}
const Integer operator~(const Integer& a){
	cout<<"~Integer\n";
	return Integer(~a.i);
}
Integer* operator&(Integer& a){
	cout<<"&Integer\n";
	return a.This();	//&a is recursive!
}
int operator!(const Integer& a){
	cout<<"!Integer\n";
	return !a.i;
}
//prefix;return incremented value
const Integer& operator++(Integer& a){
	cout<<"++Integer\n";
	a.i++;
	return a;
}
//postfix; return the value before increment:
const Integer operator++(Integer& a, int){
	cout<<"Integer++\n";
	Integer before(a.i);
	a.i++;
	return before;
}
//prefix; return decremented value
const Integer& operator--(Integer& a){
	cout<<"--Integer\n";
	a.i--;
	return a;
}
//postfix; return the value beefore decrement:
const Integer operator--(Integer& a, int){
	cout<<"Integer--\n";
	Integer before(a.i);
	a.i--;
	return before;
}
//show that the overloaded operators work:
void f(Integer a){
	+a;
	-a;
	~a;
	Integer* ip = &a;
	!a;
	++a;
	a++;
	--a;
	a--;
}
//Member function(implicit "this"):
class Byte{
	unsigned char b;
	public:
		Byte(unsigned char bb = 0):b(bb){}
		//no side effects: const member functions:
		const Byte& operator+()const{
			cout<<"+Byte\n";
			return *this;
		}
		const Byte operator-()const{
			cout<<"-Byte\n";
			return Byte(-b);
		}
		const Byte operator~()const{
			cout<<"~Byte\n";
			return Byte(~b);
		}
		Byte* operator&(){
			cout<<"&Byte\n";
			return this;
		}
		//side effects: non-const member function:
		const Byte& operator++(){	//prefix
			cout<<"++Byte\n";
			b++;
			return *this;
		}
		const Byte operator++(int){	//postfix
			cout<<"Byte++\n";
			Byte before(b);
			b++;
			return before;
		}
		const Byte& operator--(){	//prefix
			cout<<"--Byte\n";
			--b;
			return *this;
		}
		const Byte operator--(int){	//postfix
			cout<<"Byte--\n";
			Byte before(b);
			--b;
			return before;
		}
};
void g(Byte b){
	+b;
	-b;
	~b;
	Byte* bp = &b;
	~b;
	++b;
	b++;
	--b;
	b--;
}

int main(){
	Integer a;
	f(a);
	Byte b;
	g(b);
}
