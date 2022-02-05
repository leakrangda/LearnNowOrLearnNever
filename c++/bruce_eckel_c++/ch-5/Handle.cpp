//:c05:Handle.cpp{0}
//handle implementation
#include "Handle.h"
#include "../require.h"

//define Handle's implementation:
struct Handle::Cheshire{
	int i;
};
void Handle::initialize(){
	smile= new Cheshire;
	smile->i=0;
}
void Handle::clenaup(){
	delete smile;
}
int Handle::read(){
	return smile->i;
}
void Handle::change(int x){
	smile->i=x;
}///
