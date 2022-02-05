/*wikipedia_3-_-greatest of 3 number */

#include <iostream>

using namespace std;

int main(void)
{
	int angka1;
	int angka2;
	int angka3;
	int biggest;

	cout<<"masukan angka 1:";
	cin>>angka1;
	cout<<"masukan angka 2:";
	cin>>angka2;
	cout<<"masukan angka 3:";
	cin>>angka3;

	if(angka1 > angka2){
		if(angka2 > angka3)
			biggest=angka1;
		else
			biggest=angka3;
	}
	else if(angka2 > angka3)
		biggest=angka2;
	else
		biggest=angka3;

	cout<<"angka terbesar adalah:"<<biggest<<endl;
	return 0;
}
