//:C12:TypeConversionAmbiguity.cpp
class Orange;	//class declaration

class Apple{
	public:
		operator Orange() const;	//conver apple to Orange
};
class Orange{
	public:
		Orange(Apple);	//conver Apple to orange
};
void f(Orange){}

int main(){
	Apple a;
	//!f(a);	//error: ambigous conversion
}
