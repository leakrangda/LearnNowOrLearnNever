//4lib_h
#ifndef LIB_H
#define LIB_H

class T;
class U{
	//private:
	public:
		T *ptr;
		void setPtr(T *);
};
class T{
	//private:
	public:
		U *ptr;
		void setPtr(U *);
};
#endif
