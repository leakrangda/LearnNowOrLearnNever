#include "indonesia.h"
#include <cctype>

std::string Indo::convert(){
	bool conv=false;
	std::string result;
	if(!source)	//belum ada isisnya
		std::cerr<<"error, file belum diload"<<std::endl;
	else{
		std::string line;
		while(getline(source,line)){
				for(int i=0;i < 9;i++){
					bool maju=true;
					int pos=0;
					int index=0;
					int start=0;
					std::string temp;
					
					std::cout<<"search:"<<EnKey[i]<<std::endl;
					std::cout<<"replace:"<<InKey[i]<<std::endl;
					std::cout<<"in line:"<<line<<std::endl;
					while(maju){
						std::string word(getWord(line,index,pos));
						std::cout<<"word:"<<word<<std::endl;
						std::cout<<"pos:"<<pos<<std::endl;
						if(word=="")
							maju=false;
						else if(word==EnKey[i]){
							if(!conv)
								conv=true;
							temp+=line.substr(start,pos);
							temp+=InKey[i];
							temp+=line.substr(index);
							line=temp;
							start=index;
						}
					}
					if(conv){
						key+=EnKey[i];
						key+="=";
						key+=InKey[i];
						key+=",";
						conv=false;
					}

				}
				result+=line + '\n';
		}
	}
	return result;
}
std::string Indo::keyword(){
	return key;	
}
std::string Indo::getWord(const std::string& arg, int& index, int& pos ){
	bool word=false;
	std::string str;
	while(index <= arg.length()){
		if(!isspace(arg[index])&&isalpha(arg[index])){
			if(!word){
				pos=index;
				word=true;
			}
		}
		else{
			if(word){
				str=arg.substr(pos,index - pos);
				return str;
			}
		}
		index++;
	}
	return str;
}
Indo::~Indo(){
	source.close();
}
