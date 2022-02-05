#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <pthread.h>

void *thread_function(void *arg);
char message[] = "Hello world";
int run_now = 1;

int main(){
	int res;
	pthread_t a_thread;
	void *thread_result;
	int print_count = 0;

	res = pthread_create(&a_thread, NULL, thread_function, (void *)message);
	while(print_count++  < 20){
		if(run_now == 1){
			puts("1");
			run_now = 2;
		}else
			sleep(1);
	}
	if(res != 0){
		perror("Thread creation failed");
		exit(EXIT_FAILURE);
	}
	printf("Waiting for thread to finish...\n");
	res = pthread_join(a_thread, &thread_result);
	if(res != 0){
		perror("thread join failed");
		exit(EXIT_FAILURE);
	}
	exit(EXIT_SUCCESS);
}

void *thread_function(void *arg){
	int print_count = 0;
	while(print_count++ < 20){
		if(run_now == 2){
			puts("2");
			run_now = 1;
		}else
			sleep(1);
	}
	pthread_exit("Thank you for the CPU time");
}
