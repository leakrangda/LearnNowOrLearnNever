//preprocessor testing

#include <iostream>
using namespace std;

int main(void)
{
	cout<<"testing with preprocessor"<<endl;
#ifdef TRY	
	cout<<"hello TRY defined to 1"<<endl;
#else
	cout<<"hello TRY not defined"<<endl;
#endif
}

