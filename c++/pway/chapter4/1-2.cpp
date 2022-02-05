#include <iostream>
#include <iomanip>

using namespace std;		// tanpa ini senpai, harus pake std:: di semua
				// standar library
int main(){
	int number;
	int angka;

	cout<<"angka:";
	cin>>number;
	angka=number * number;

	for(int i=0; i < number; i++){
		for(int j=0; j < number; j++)
			cout<<setw(4)<<angka - number + j + 1;
		cout<<endl;
		angka-=number;
	}
	return 0;
}
