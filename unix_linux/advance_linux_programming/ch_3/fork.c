#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>

int main(){
	pid_t child_pid;

	printf("The main program process ID is %d\n", (int)getpid());

	child_pid = fork();
	if(child_pid != 0){
		/* this is parent process */
		printf("this is the parent process, with id %d\n", (int)getpid());
		printf("the child's process ID is %d\n", (int)child_pid);
	}
	else
		/* this is child process */
		printf("this is the child process, with id %d\n", (int)getpid());
	return 0;
}
