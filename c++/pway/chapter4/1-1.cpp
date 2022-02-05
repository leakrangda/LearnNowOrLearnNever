#include <iostream>
#include <iomanip>

using namespace std;		// tanpa ini senpai, harus pake std:: di semua
				// standar library
int main(){
	int number;
	int angka=1;

	cout<<"angka:";
	cin>>number;
	for(int i=0; i < number; i++){
		for(int j=0; j < number; j++)
			cout<<setw(4)<<angka++;
		cout<<endl;
	}
	return 0;
}
