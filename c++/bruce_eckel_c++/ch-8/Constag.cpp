//:c08:Constag.cpp
//Constants and aggregates
const int i[] = {1,2,3,4};
//! float f[i[3]];//ellegal
struct S{int i, j;};
const S s[] = {{1,2},{3.4}};
//! double d[s[1].j];//illegal
int main(){}

