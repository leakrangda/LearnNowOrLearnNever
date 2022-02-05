//9_lib.cpp
#include "1_lib.h"

int main()
{
	T ar[]={1,2,3,4,5,6,7,8,9};

	for(int i=0;i < sizeof(ar) /sizeof *(ar);i++)
		ar[i].message();
	return 0;
}
