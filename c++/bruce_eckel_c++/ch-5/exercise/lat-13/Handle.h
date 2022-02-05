//:c05:Handle.h{0}
//handle header
//
#ifndef HANDLE_H
#define HANDLE_H

class Handle{
		struct Cheshire;//clas declaration only
		Cheshire* smile;
	public:
		void initialize();
		void cleanup();
		int read();
		void change(int);
};
#endif
