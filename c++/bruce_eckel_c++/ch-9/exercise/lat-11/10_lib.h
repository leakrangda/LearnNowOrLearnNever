//10_lib.h
#ifndef __10_LIB_H
#define __10_LIB_H
enum Hue{
	red,blue,yellow
};

class Color{
	Hue tipe;
	public:
		Color(Hue arg=yellow):tipe(arg){}
		Hue getColor()const{
			return tipe;
		}
		void setColor(Hue arg){
			tipe=arg;
		}
};
#endif
