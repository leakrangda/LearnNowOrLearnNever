//:C08:ConstPointer.cpp
//Constant pointer arg/return
//
void t(int&){}
void u(const int& cip){
	//! *cip = 2;	//illegal -- modifies value
	int i = cip;	//ok -- copies value
	//! int* ip2 = cip;	//illegal: non-const
}

const char* v(){
	//returns address of static character array;
	return "result of function v()";
}

int& w(){
	static int i;
	return i;
}

int main(){
	int x = 0;
	int& ip = x;
	const int& cip = x;
	t(ip);	//ok
	//! t(cip);	//not ok
	u(ip);	//ok
	u(cip);	//also ok
	//! char* cp = v();	//not ok
	const char& ccp = *v();	//ok
	//! int* ip2 = w();	//not ok
	int& ccip = w();	//ok
	int& cip2 = w();	//ok
	//! *w() = 1;	//not ok
}
