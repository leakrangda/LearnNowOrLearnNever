#ifndef NESTFRIEND_H
#define NESTFRIEND_H
#include <iostream>
#include <cstring>
using namespace std;

const int sz = 20;

struct Holder{
	private:
		int a[sz];
	public:
		Holder();
		struct Pointer;	//ealry declaration
		friend struct Pointer;
		struct Pointer{
			private:
				Holder* h;
				int* p;
			public:
				Pointer(Holder* h);
				//move around in the array;
				void next();
				void previous();
				void top();
				void end();
				//access values:
				int read();
				void set(int i);
		};
};
inline Holder::Holder(){
	memset(a,0,sz * sizeof(int));
}
inline Holder::Pointer::Pointer(Holder* rv){
	h=rv;
	p=rv->a;
};
inline void Holder::Pointer::next(){
	if(p < &(h->a[sz-1]))
		p++;
}
inline void Holder::Pointer::previous(){
	if(p > &(h->a[0]))
		p--;
}
inline void Holder::Pointer::top(){
	p=&(h->a[0]);
}
inline void Holder::Pointer::end(){
	p=&(h->a[sz - 1]);
}
inline int Holder::Pointer::read(){
	return *p;
}
inline void Holder::Pointer::set(int i){
	*p=i;
}
#endif
