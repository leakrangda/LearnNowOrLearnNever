#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include <sys/shm.h>
#include "shm_com.h"

int main(){
	int running = 1;
	void *shared_memory = (void *)0;
	struct shared_use_st *shared_stuff;
	int shmid = 0;

	srand((unsigned int)getpid());

	/* creating shared memory, using shget() */
	shmid = shmget((key_t)1234, sizeof(struct shared_use_st), 0666|IPC_CREAT);
	if(shmid == -1){
		fprintf(stderr, "shmget failed\n");
		exit(EXIT_FAILURE);
	}

	/* attach the addresh from shared memory to a pointer */
	shared_memory = shmat(shmid, (void *)0, 0);
	if(shared_memory == (void *)-1){
		fprintf(stderr, "shmat failed\n");
		exit(EXIT_FAILURE);
	}
	printf("memory attached at %X\n", (int)shared_memory);
	shared_stuff = (struct shared_use_st *)shared_memory;
	shared_stuff->written_by_you = 0;
	while(running){
		if(shared_stuff->written_by_you){
			printf("Yout wrote: %s", shared_stuff->some_text);
			sleep(rand() % 4);
			shared_stuff->written_by_you = 0;
			if(strncmp(shared_stuff->some_text, "end", 3) == 0)
				running = 0;
		}
	}
	/* detach shared memory from proccess */
	if(shmdt(shared_memory) == -1){
		fprintf(stderr, "shmdt failed\n");
		exit(EXIT_FAILURE);
	}
	/* delete shared memory */
	if(shmctl(shmid, IPC_RMID, 0) == -1){
		fprintf(stderr, "shmctl(IPC_RMID) failed\n");
		exit(EXIT_FAILURE);
	}
	exit(EXIT_SUCCESS);
}
