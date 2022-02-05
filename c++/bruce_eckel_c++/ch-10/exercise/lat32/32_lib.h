#ifndef __32_LIB_H
#define __32_LIB_H

class Mirror{
	const Mirror* ptr;
	bool flag;
	public:
		Mirror():flag(true),ptr(0){};
		Mirror(const Mirror* arg1):ptr(arg1),flag(false){};
		bool test()const{
			if(ptr)
				return ptr->test();
			else
				return flag;
		}
};
#endif //endof 32_lib.h
