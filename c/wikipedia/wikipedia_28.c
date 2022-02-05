#include <stdio.h>
#include <stdbool.h>

struct tag{
	int j_kolom;
	int m[20][20];
	int j_baris;
};

typedef struct tag MATRIX;

MATRIX add(MATRIX, MATRIX);
MATRIX multiply_scalar(int, MATRIX);
MATRIX get_matrix(void);
void result(MATRIX);

int main(void)
{
	bool flag=true;
	int number;
	MATRIX m1,m2;
	MATRIX hasil;

	while(flag){
		int ans;

		printf("perkalian matrix scalar\n");
		m1=get_matrix();
		printf("matrix =\n");
		result(m1);
		printf("masukan angka:");
		scanf("%d",&number);
		hasil=multiply_scalar(number,m1);
		printf("hasilnya adalah:\n");
		result(hasil);
		printf("do you want to continue: ");
		getc(stdin);
		ans=getchar();
		if(ans=='n'||ans=='N')
			flag=false;
	}
	return 0;
}
MATRIX add(MATRIX m1, MATRIX m2)
{
	MATRIX temp;

	if(m1.j_kolom==m2.j_baris && m1.j_baris==m2.j_baris){
		int index=0;
		while(index < m1.j_baris){
			int index_2=0;
			while(index_2 < m1.j_kolom){
				temp.m[index][index_2]=m1.m[index][index_2] + m2.m[index][index_2];
				index_2++;
			}
			index++;
		}
		temp.j_kolom=m1.j_kolom;
		temp.j_baris=m1.j_baris;
	}
	return temp;
}
MATRIX get_matrix()
{
	MATRIX temp;
	int index=0;

	printf("masukan jumlah kolom:");
	scanf("%d",&temp.j_kolom);
	printf("masukan jumlah baris:");
	scanf("%d",&temp.j_baris);
	while(index < temp.j_baris){
		int index_2=0;
		while(index_2 < temp.j_kolom){
			printf("masukan nilai kolom %d baris %d:",index_2,index);
			scanf("%d",&temp.m[index][index_2]);
			index_2++;
		}
		index++;
	}
	return temp;
}
void result(MATRIX m1)
{
	int index=0;
	while(index < m1.j_baris){
		int index_2=0;
		printf("[");
		while(index_2 < m1.j_kolom){
			printf("%d ",m1.m[index][index_2]);
			index_2++;
		}
		printf("]\n");
		index++;
	}
}
MATRIX multiply_scalar(int number, MATRIX m1)
{
	MATRIX temp;
	int index=0;

	temp=m1;
	while(index < m1.j_baris){
		int index_2=0;
		while(index_2 < m1.j_kolom){
			temp.m[index][index_2]=m1.m[index][index_2] * number;
			index_2++;
		}
		index++;
	}
	return temp;
}
