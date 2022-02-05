#include <iostream>

using namespace std;

class Prime{
	private:
		int base;
		int prime;
	public:
		Prime(){
			setbase(10);
		}
		Prime(int a){
			setbase(a);
		}
		~Prime(){
			cout<<"destruction"<<endl;
		}
		void setbase(int a){
			base=a;
		}
		void getprime_list(){
			for(int x=2;x < base;x++){
				int y;
				for(y=2; y < x;y++)
					if((x%y)==0)
						break;
				if(x==y)
					cout<<x<<", ";
			}
			cout<<endl;
		}
		void printbase(){
			cout<<"base:"<<base<<endl;
		}
		int isprime(int a){
			int dev=2;
			int ret=0;

			while(dev < a){
				if(a%dev)
					dev++;
				else
					break;
			}
			if(dev==a){
				cout<<"its prime"<<endl;
				ret=1;
			}
			else{
				cout<<"its not prime"<<endl;
				ret=0;
			}
	}
};
int main(void)
{
	Prime n1;
	Prime n2(100);

	n1.getprime_list();
	cout<<endl;
	n2.getprime_list();
	n1.setbase(100);
	n1.printbase();
	n1.isprime(7);
	n1.isprime(8);
	return 0;
}
