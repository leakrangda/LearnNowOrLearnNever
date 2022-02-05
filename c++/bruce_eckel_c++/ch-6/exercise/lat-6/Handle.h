//:co6:Handle.h with destructor and constructor
//Handle classes
#ifndef	HANDLE_H
#define HANDLE_H

class Handle{
	struct Cheshire;	//class declaration only; forward declaration
	Cheshire* smile;
	public:
	Handle();
	~Handle();
	int read();
	void change(int);
};
#endif	//HANDLE_H///
