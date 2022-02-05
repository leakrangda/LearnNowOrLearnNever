//14_lib.cpp

int f(int n){
	if(n > 0)
		return f(n-1);
	return 0;
}
int main(){
	f(5);
}
