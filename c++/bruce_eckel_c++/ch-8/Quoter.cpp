//:C08:Quoter.cpp
//Random quote selection
#include <iostream>
#include <cstdlib>	//Random Number generator
#include <ctime>	//to seed random generator
using namespace std;

class Quoter{
	int lastquote;
	public:
		Quoter();
		int lastQuote() const;
		const char* quote();
};

Quoter::Quoter(){
	lastquote = -1;
	srand(time(0));	//seed random number generator
}
int Quoter::lastQuote() const{
	return lastquote;
}
const char* Quoter::quote(){
	static const char* quotes[] = {
		"are we having fun yet?",
		"doctors always know best",
		"is it ... Atomic?",
		"fear is obscene",
		"there is no scientific evidence "
		"to support the idea "
		"that life is serious",
		"things that make us happy, make use wise",
	};
	const int qsize =  sizeof quotes/sizeof *quotes;
	int qnum = rand() % qsize;
	while(lastquote >= 0 && qnum == lastquote)
		qnum = rand() % qsize;
	return quotes[lastquote = qnum];
}
int main(){
	Quoter q;
	const Quoter cq;
	cq.lastQuote();	//ok
	//! cq.quote();	//Not ok; non const function
	for(int i = 0; i < 20; i++)
		cout<<q.quote() << endl;
}
