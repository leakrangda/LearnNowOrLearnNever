#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>		//untuk header program unix,

#define MAX	10
#define clear()	printf("\033[H\033[J")
#define hold()	getchar()

char queue[MAX];
int r;
int l;

void init(void);
void insert_kanan(char);
void insert_kiri(char);
char delete_kanan(void);
char delete_kiri(void);
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
		printf("----Double------\n");
		printf("------------------\n");
		printf("pilihan:\n");
		printf("1.insert kanan\n2.insert kiri\n3.delete kanan\n4.delete kiri\n5.reset\n6.cetak\n7.keluar");
		printf(":");
		scanf("\n%c",&jawaban);
		switch(jawaban-'0'){
			case 1:
				printf("masukan nilai:");
				scanf("\n%c",&jawaban);
				insert_kanan(jawaban);
				break;
			case 2:
				printf("masukan nilai:");
				scanf("\n%c",&jawaban);
				insert_kiri(jawaban);
				break;
			case 3:
				printf("anda telah mendelete %c dari queue\n",delete_kanan());
				break;
			case 4:
				printf("anda telah mendelete %c dari queue\n",delete_kiri());
				break;
			case 5:
				reset();
				break;
			case 6:
				cetak();
				break;
			case 7:
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
	l=0;
	r=-1;
}
void insert_kanan(char nilai)
{
	if(r++ < MAX){
		queue[r]=nilai;
	}
	else
		printf("queue kanan penuh\n.");
}
void insert_kiri(char nilai)
{
	if(l-- > 0){
		queue[l]=nilai;
	}
	else
		printf("queue kiri penuh\n");
}
char delete_kiri(void)
{
	if(l < r +1)
		return queue[l++];
	else
		printf("queue kiri kosong");
}
char delete_kanan(void)
{
	if(r > l)
		return queue[r--];
	else
		printf("queue kanan kosong");
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
	for(count=l;count < r;count++){
		printf("%c ",queue[count]);
	}
}

/*dibuat oleh ilham nurhikmat*/
