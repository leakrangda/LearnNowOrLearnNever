#include "MyString.h"

MyString::MyString(string x):a(x){};
MyString::~MyString(){std::cout<<"object dihancurkan."<<std::endl;}
void MyString::print(){std::cout<<a<<std::endl;}
