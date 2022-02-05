//:C10:FriendInjection.cpp
#include <iostream>
using namespace std;
namespace Us{
	class Us{
		//....
		friend void you();
	};
}
void you(){
	cout<<"this is friend function of Us class."<<endl;
}
int main(){
	you();
}
