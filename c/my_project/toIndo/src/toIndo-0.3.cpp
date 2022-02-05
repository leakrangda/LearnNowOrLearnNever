#include <iostream>
#include <fstream>
#include <cctype>
#include <cstdlib>
#include <unistd.h>
#include <string>
#include <iomanip>
#include "indonesia-0.2.h"
using namespace std;

int main(int argc, char** argv){
	bool flag[3]={};
	char c;
	string* option[3]={NULL,NULL,NULL};
	Indo *rubahan;

	opterr = 0;
	while((c=getopt(argc, argv, "f:o:k:")) != -1)
		switch(c){
			case 'f':
				flag[0]=true;
				option[0] = new string(optarg);
				break;
			case 'o':
				flag[1]=true;
				option[1] = new string(optarg);
				break;
			case 'k':
				flag[2]=true;
				option[2] = new string(optarg);
				break;
			case '?':
				if(optopt == 'f' || optopt =='o' || optopt == 'k')
					cerr<<"option -"<<(char)optopt
						<<" butuh sebuah argument"<<endl;
				else if(isprint(optopt))
					cerr<<"option tidak diketahui-"
						<<(char)optopt<<endl;
				else
					cerr<<"karakter tidak dikenal "
						<<hex<<optopt<<endl;
				return 1;
			default:
				abort();
		}
	//for(int i=0;i < 3;i++)
		//cout<<"flag["<<i<<"]="<<flag[i]<<endl;
	//for(int i=0;i < 3;i++)
		//cout<<"--option--:"<<*option[i]<<endl;
	//mode input
	if(option[0]==NULL)	//mode stdin	--- toIndo:
		//toIndo
		rubahan = new Indo("temporer.tmp")
		cout<<"on building"<<endl;
	else			//mode file	--- toIndo -f nama file
		rubahan = new Indo(option[0]->c_str());
		//toIndo -f name

	//mode tranlasi
	if(option[2]!=NULL){
		if(*option[2]=="in")
			rubahan->toIn();	//mode indonesia
		else if(*option[2]=="en")
			rubahan->toEn();	//mode inggris
	}
	else				
		rubahan->toEn();
	//mode output
	if(option[1]==NULL)	//mode stdout
		cout<<rubahan->result();
	else{			//mode file
		ofstream output(option[1]->c_str());
		output<<rubahan->result();
		output.close();
	}
	for(int i=0;i < 3; i++)
		if(option[i]!=NULL)
			delete option[i];
	return 0;
}
