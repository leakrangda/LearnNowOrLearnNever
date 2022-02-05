#include "MyString.h"
#include <iostream>
#include <string>

MyString::MyString(std::string x):a(x){};
MyString::~MyString(){std::cout<<"object dihancurkan."<<std::endl;}
void MyString::print()const{std::cout<<a<<std::endl;}
