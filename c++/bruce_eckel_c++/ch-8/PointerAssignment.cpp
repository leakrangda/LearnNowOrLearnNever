//:c08:PointerAssignment.cpp
int d = 1;
const int e = 2;
int* u = &d;	//ok --d not const
//! int* v = &e;	//illegal -- e const
int* w = (int*)&e;	//legal but bad practice
int main(){}
