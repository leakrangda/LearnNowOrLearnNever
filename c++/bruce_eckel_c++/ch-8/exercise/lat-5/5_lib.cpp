#include <iostream>
#include <ctime>
using namespace std;

int main(){
	time_t r;
	r=time(NULL);
	tm* time;
	time=localtime(&r);
	cout<<time->tm_hour<<":"<<time->tm_min<<":"<<time->tm_sec<<endl;
	time=localtime(&r);
	cout<<time->tm_hour<<":"<<time->tm_min<<":"<<time->tm_sec<<endl;
	return 0;
}

