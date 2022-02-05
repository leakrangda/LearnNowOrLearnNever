/*dibuat oleh ilham nurhikmat*/
/*stack list*/

#include <stdio.h>
#include <stdlib.h>

struct data {
	char nama[25];
	char nim[11];
	char kelas[11];
	int nilai;
	struct data *link;
};

typedef struct data INFO;

void mulai(void);
void push(INFO *);
INFO pop(void);
INFO *tambah(void);
int hapus(INFO *);
int cetak(INFO *);

INFO *base,*top;
int counter;

int main(void)
{
	int flag=1;
	int jawaban;

	while(flag){
		printf("aplikasi stack list\n\n");
		printf("dibuat oleh ilham nurhikmat\n\n");
		printf("masukan pilihan:\n");
		printf("1.mulai\n"
			"2.pop data\n"
			"3.push data\n"
			"4.cetak data\n"
			"5.exit\n");
		scanf("%d",&jawaban);
		if(jawaban==1)mulai();
		else if(jawaban==2){
			INFO temp=pop();

			printf("data yang di pop\n");
			printf("---------------------------\n");
			printf("1. nama	\t:%s",temp.nama);
			printf("2. kelas\t:%s",temp.kelas);
			printf("3. Nim	\t:%s",temp.nim);
			printf("4. Nilai\t:%d\n",temp.nilai);
			printf("---------------------------\n");
		}
		else if(jawaban==3)push(tambah());
		else if(jawaban==4)cetak(base);
		else if(jawaban==5){
			printf("terimakasih\n");
			printf("ilham nurhikmat\n");
			printf("03tplmb\n");
			flag=0;
		}
		else printf("anda salah memasukan input\nulangi kembali");
	}
	return 0;
}
void mulai(void)
{
	base=top=NULL;
	counter=0;
}
void push(INFO *ptr)
{
	if(base==NULL){
		base=ptr;
		top=ptr;
		base->link=NULL;
	}
	else{
		ptr->link=top;
		top=ptr;
	}
	counter++;
}
INFO pop(void)
{
	INFO temp;

	if(top==NULL){
		printf("stack tidak ada");
		exit(0);
	}
	else{
		temp=*top;
		hapus(top);
		top=top->link;
	}
	return temp;
}
int hapus(INFO *ptr)
{
	int ret;
	if(ptr==NULL){
		printf("tidak bisa dihapus, memory null");
		ret=0;
	}
	else{
		free(ptr);
		ret=1;
	}
	return ret;
}
INFO *tambah(void)
{
	INFO *temp;
	int a;

	if((temp=(INFO *)malloc(sizeof (INFO)))==NULL){
		printf("tidak bisa mengalokasikan memory\n");
		printf("exit");
		exit(0);
	}
	a=getchar();
	printf("---data mahasiswa--\n");
	printf("nama\t:");
	fgets(temp->nama,20,stdin);
	printf("kelas\t:");
	fgets(temp->kelas,10,stdin);
	printf("nim\t:");
	fgets(temp->nim,11,stdin);
	printf("nilai\t");
	scanf("%d",&temp->nilai);

	return temp;
}
int cetak(INFO *ptr)
{
	int ret;
	int index=0;

	if(ptr!=NULL){
		printf("---cetak data---\n");
		printf("---data ke %d---\n",index+1);
		do{
			printf("1. Nama	\t: %s\n",ptr->nama);
			printf("2. kelas\t: %s\n",ptr->kelas);
			printf("3. nim	\t: %s\n",ptr->nim);
			printf("4. nilai\t: %d\n",ptr->nilai);
			ptr=ptr->link;
			index++;
		}while(ptr!=NULL);
		ret=1;
	}
	else{
		printf("tidak bisa mencetak\n");
		ret=0;
	}
	return ret;
}
