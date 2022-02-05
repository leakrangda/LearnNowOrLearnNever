#include <iostream>
using namespace std;

int main(){
	char ar[100];
	cin.getline(ar,100);
	int i=0;
	while(ar[i]!='\0'){
		if(!(ar[i]>='a' && ar[i]<='z'))
			break;
		i++;
	}
	if(ar[i]=='\0')
		cout<<ar<<" nama tidak valid "<<i<<endl;
	else
		cout<<ar<<" nama valid "<<i<<endl;
	return 0;
}
