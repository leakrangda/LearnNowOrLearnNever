//:c08:ConstVal.cpp
//returning const by value
//has no meaning for built-in types
//

int f3(){return 1;}
const int f4(){return 1;}

int main(){
	const int j = f3();	//works fine
	int k = f4();	//but this works fine too!
}
