//video_main.cpp
#include <iostream>
#include <string>
#include "../lat-13/video.h"
#include "../lat-8/stack.h"
using namespace std;

int main(void)
{
	Stack videoStack;
	Video video1;
	Video video2;

	videoStack.initialize();
	videoStack.push(new Video(video1));
	videoStack.push(new Video(video2));
	void *temp;
	while((temp=videoStack.pop())!=0){
		((Video *)temp)->printTitle();
		delete (Video *)temp;
	}
}

