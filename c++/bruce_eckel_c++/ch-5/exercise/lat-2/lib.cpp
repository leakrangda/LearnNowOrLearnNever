//lib.c
#include "lib.h"

void Libc::seta(std::string a){
	s[0]=a;
}
void Libc::setb(std::string b){
	s[1]=b;
}
void Libc::setc(std::string c){
	s[2]=c;
}
std::string Libc::geta(){
	return s[0];
}
std::string Libc::getb(){
	return s[1];
}
std::string Libc::getc(){
	return s[2];
}

