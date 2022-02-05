#ifndef _22_LIB_H
#define _22_LIB_H

class X{
	X(const X&);
	public:
		X(){};
		X* clone()const;
};
inline void f1(const X& arg){
	X* ptr = (X*)arg.clone();
	delete ptr;
}
inline X* X::clone()const{
	return new X();
}
#endif
