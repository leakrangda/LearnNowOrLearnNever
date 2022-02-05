/*circular linked list*/
/*dibuat oleh ilham nurhikmat*/
/*compiler : gcc 5*/

#include <stdio.h>		/*untuk input output fungsi*/
#include <stdlib.h>		/*untuk fungsi malloc, dan exit*/

struct data{
	int data;
	struct data *link;
	};
typedef struct data SIMPUL;	/*mengganti nama struct data menjadi SIMPUl*/

void mulai(void);		/*untuk menginitialisasi variable first,last*/
SIMPUL * tambah(void);		/*untuk membuat SIMPUL baru*/
void sambung(SIMPUL *);
void sambung_custom(SIMPUL *);	/*untuk menyambung SIMPUL berdasarkan letak*/
void sambung_kiri(SIMPUL *);	/*untuk menyambung SIMPUL sebelah kiri*/
void sambung_kanan(SIMPUL *);	/*untuk menyambung SIMPUL sebelah kanan*/
void sambung_tengah(SIMPUL *);
void hapus(SIMPUL *);
void hapus_kiri(void);		/*untuk menghapus SIMPUL sebelah kiri*/
void hapus_kanan(void);		/*untuk menghapus SiMPUL sebelah kanan*/
void hapus_custom(void);	/*untuk menghapus SIMPUL berdasarkan letak*/
void hapus_tengah(void);
void hapus_semua(void);
void cetak(void);		/*untuk mencetak seluruh list*/

SIMPUL *first,*last;
int counter=0;

int main(void)
{
	int flag=1;

	SIMPUL *temp;
	
	counter=1;	
	mulai();
	while(flag){
		int jawab;

		printf("selamat datang di aplikasi circular linked list maker\n");
		printf("masukan perintah:\n");
		printf( "1. tambah\n"
			"2. hapus\n"
			"3. cetak\n"
			"4. keluar\n");
		scanf("%d",&jawab);
		switch(jawab){
			case 1:
				system("clear");
				temp=tambah();
				if(temp==NULL){
					printf("tidak bisa menyimpan data");
					exit(EXIT_FAILURE);
				}
				else{
					printf("pilih:\n");
					printf( "1.sambung kiri\n"
						"2.sambung kanan\n"
						"3.sambung tengah\n"
						"4.sambung custom\n");
					scanf("%d",&jawab);
					if(jawab==1)sambung_kiri(temp);
					else if(jawab==2)sambung_kanan(temp);
					else if(jawab==3)sambung_tengah(temp);
					else if(jawab==4)sambung_custom(temp);
					else printf("anda memasukan input salah\n");
				}
				break;
			case 2:
				printf("pilih:\n");
				printf("1.hapus kiri\n"
					"2.hapus kanan\n"
					"3.hapus tengah\n"
					"4.hapus custom\n"
					"5.hapus semua\n");
				scanf("%d",&jawab);
				if(jawab==1)hapus_kiri();
				else if(jawab==2)hapus_kanan();
				else if(jawab==3)hapus_tengah();
				else if(jawab==4)hapus_custom();
				else if(jawab==5)hapus_semua();
				else
					printf("anda memasukan input salah\n");
				break;
			case 3:
				printf("data yang ada pada list:\n");
				cetak();
				break;
			case 4:
				printf("keluar dari program\n");
				printf("\nprogram ini dibuat oleh ilham nurhikmat\n");
				flag=0;
				break;
			default:
				printf("anda memasukan input salah\nulangi kembali\n");
		}
	}
	return 0;
}
void mulai(void)
{
	first=last=NULL;
}
SIMPUL *tambah(void)
{
	SIMPUL *temp;

	temp=(SIMPUL *)malloc(sizeof (SIMPUL));
	if(temp==NULL){
		printf("tidak dapat mengalokasikan memory\nexit");
		exit(EXIT_FAILURE);
	}
	printf("masukan data:");
	scanf("%d",&temp->data);
	if(first==NULL){
		first=temp;
		last=temp;
		temp->link=first;
		first->link=last;
		last->link=first;
	}
	return temp;
}
void sambung_custom(SIMPUL *addr)
{
	int ans;
	SIMPUL *temp;

	temp=first;
	printf("masukan no list yang akan di sambungkan:");
	scanf("%d",&ans);
	if(ans < counter+1 && ans > 0){
		int index;
		for(index=0;index < ans-1;index++)
			temp=temp->link;
		addr->link=temp->link;
		temp->link=addr;
		counter++;
	}
	else
		printf("range yang anda masukan tidak benar\n");
}
void sambung_kiri(SIMPUL *addr)
{
	if(first!=NULL){
		addr->link=first;
		first=addr;
		last->link=first;
		counter++;
	}
	else
		printf("belum ada list\n");
}
void sambung_kanan(SIMPUL *addr)
{
	if(last!=NULL){
		last->link=addr;
		addr->link=first;
		last=addr;
		counter++;
	}
	else
		printf("belum ada list\n");
}
void sambung_tengah(SIMPUL *addr)
{
	int index=0;
	SIMPUL *temp;

	temp=first;
	if(first!=NULL){
		for(index=0;index < counter/2;index++)
			temp=temp->link;
		addr->link=temp->link;
		temp->link=addr;
		counter;
	}
	else
		printf("list harus lebih dari 1\n");
}
void hapus(SIMPUL * memory)
{
	free(memory);
}
void hapus_kiri(void)
{
	SIMPUL *temp;

	if(temp==NULL)
		exit(0);
	temp=first->link;
	hapus(first);
	first=temp;
	last->link=first;
	counter--;
}
void hapus_kanan(void)
{
	SIMPUL *temp;
	int index;

	index=1;
	temp=first;
	while(temp->link!=last && index++ < counter)
		temp=temp->link;
	if(temp!=NULL){
		free(last);
		last=temp;
		temp->link=first;
		counter--;
	}
	else
		printf("memory last telah corrupt\n");
}
void hapus_custom(void)
{
	int index;
	int ans;
	SIMPUL *temp;
	SIMPUL *sementara;

	temp=first;
	printf("masukan index list yang akan dihapus:");
	scanf("%d",&ans);
	for(index=1;index <=counter;index++){
		sementara=temp;
		temp=temp->link;
		counter--;
	}
	if(temp==NULL)
		printf("memory telah hilang atau corrupt\n");
	else{
		if(temp==first || temp==last){
			if(temp==first){
				first=temp->link;
				last->link=first;
				}
			if(temp==last){
				sementara->link=first;
				last=sementara;
			}
			else
				sementara->link=temp->link;
		}
		hapus(temp);
		counter--;
	}
}
void hapus_tengah(void)
{
	int index;
	int ans;
	SIMPUL *temp;
	SIMPUL *sementara;
	if(first==NULL){
		printf("tidak ada stack\n");
		exit(1);
	}
	temp=first;
	for(index=1;index <=counter/2;index++){
		sementara=temp;
		temp=temp->link;
	}
	sementara->link=temp->link;
	hapus(temp);
	counter--;
}
void cetak(void)
{
	SIMPUL *temp;
	int index=1;

	temp=first;
	if(first==NULL)
		printf("data tidak ada\n");
	else{
		do{
			printf("list ke %d data = %d\n",index++,temp->data);
			temp=temp->link;
		}while(temp!=first);
	}
}
void hapus_semua(void)
{
	SIMPUL *temp;
	SIMPUL *sementara;
	
	temp=first;
	do{
		sementara=temp->link;
		hapus(temp);
		temp=sementara;
	}while(temp!=first);
	first=NULL;
	last=NULL;
}
