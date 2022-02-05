#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>		//untuk header program unix,

#define MAX	10
#define clear()	printf("\033[H\033[J")
#define hold()	getchar()

char queue[MAX];
int depan;
int belakang;
int counter;

void init(void);
void insert(char);
char delete(void);
void cetak(void);
void reset(void);

int main(void)
{
	char jawaban;
	int flag=1;

	init();
	while(flag){
		//clear();	//macro untuk mereset terminal-unix escape control
		printf("\n\nanimasi queue\n");
		printf("----Circular------\n");
		printf("------------------\n");
		printf("pilihan:\n");
		printf("1.insert\n2.delete\n3.reset\n4.cetak\n5.keluar\n");
		printf(":");
		scanf("\n%c",&jawaban);
		switch(jawaban-'0'){
			case 1:
				printf("masukan nilai:");
				scanf("\n%c",&jawaban);
				insert(jawaban);
				break;
			case 2:
				printf("anda telah mendelete %c\n",delete());
				break;
			case 3:
				reset();
				break;
			case 4:
				cetak();
				break;
			case 5:
				printf("anda akan keluar, terimakasih\n");
				flag=0;
				break;
			default:
				printf("anda memasukan nilai salah, coba lagi\n");
				break;
		}
	}
	return 0;
}
void init(void)
{
	depan=counter=0;
	belakang=-1;
}
void insert(char nilai)
{
	if(counter++< MAX){
		belakang=(belakang+1)%MAX;
		queue[belakang]=nilai;
	}
	else
		printf("queue penuh\n.");
}
char delete(void)
{
	if(counter-- < MAX){
		depan=(depan+1)%MAX;
		return queue[depan];
	}
	else
		printf("queue kosong\n");
}
void reset(void)
{
	init ();
	printf("queue telah dikosongkan!");
}
void cetak(void)
{
	int count;
	int index;
	for(count=depan,index=0;index < counter;count++,index++){
		if(count == MAX -1)
			count=0;
		printf("%c ",queue[count]);
	}
}

/*dibuat oleh ilham nurhikmat*/
