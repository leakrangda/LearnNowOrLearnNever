#include "5_lib.h"
#include <iostream>
using namespace std;

int main()
{
	T t;
	R r;
	S s;

	//modifikasi t oleh r
	r.f(&t);
	t.show();

	//modifiaksi t oleh s
	s.g(&t);
	t.show();

	return 0;
}
