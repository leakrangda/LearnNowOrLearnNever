//: C03:FunctionTable.cpp
// Using an array of pointer to functions
#include <iostream>
#include <vector>
using namespace std;

class T{
	vector<void (*)()>flist;
	public:
		void add(void (*function)());
		void remove();
		void run();
};

void T::add(void (*function)()){
	flist.push_back(function);
}
void T::remove(){
	flist.pop_back();
}
void T::run(){
	for(int i=0;i < flist.size();i++)
		flist[i]();
}
//A macro to define dummy function:
#define DF(N) void N(){\
	cout<<"function " #N" called.."<<endl;}
DF(a);DF(b);DF(c);DF(d);DF(e);DF(f);DF(g);
void (*func_table[])()={a,b,c,d,e,f,g};

int main(){
	T table;
	table.add(a);
	table.add(b);
	table.add(c);
	table.add(d);
	table.add(e);
	table.add(f);
	table.add(g);

	while(true){
		cout<<"press a key from 'a' to 'g' "
			"or q to quit" <<endl;
		char c, cr;
		cin.get(c);cin.get(cr);		//second one for CR(carriage return);
		if(c == 'q')
			break;			//..out of while(true)
		if(c < 'a' || c > 'g')
			continue;
		(*func_table[c - 'a'])();
	}
	table.run();
	table.remove();
	table.run();
}
