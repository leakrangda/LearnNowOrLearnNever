#include <stdio.h>
#include <math.h>

struct root{
	float x1;
	float x2;
	};
typedef struct root AKR;

AKR cari_akar(float, float, float);
void lihat_akar(AKR);

int main(void)
{
	float a,b,c;
	AKR akar;

	printf("program akan mencari akar dari fungsi kuadrat yang memiliki pola ax2 + bx +c\n");
	printf("masukan variable a:");
	scanf("%f",&a);
	printf("masukan variable b:");
	scanf("%f",&b);
	printf("masukan variable c:");
	scanf("%f",&c);

	akar=cari_akar(a,b,c);

	printf("\n\nvariable yang dimasukan adalah");
	printf("a=%f,b=%f,c=%f\n",a,b,c);
	printf("\n\nakar yang dicari dari fungsi kuadrat:\n");
	printf("%.0fx2%c%.0fx%c%.0f\n",a,b > 0?'+':' ',b,c > 0?'+':' ',c);
	lihat_akar(akar);
	return 0;
}

/*fungsi untuk mencari akar kuadarat*/
AKR cari_akar(float a, float b, float c)
{
	AKR temp;

	/*vieta teorema*/
	temp.x1=((b*-1)-(sqrt(b*b-(4*a*c))))/2*a;
	temp.x2=((b*-1)+(sqrt(b*b-(4*a*c))))/2*a;

	return temp;
}

/*fungsi untuk memperlihatkan hasil akar*/
void lihat_akar(AKR akar)
{
	printf("akar x1=%f\n",~akar.x1-1);
	printf("akar x2=%f\n",akar.x2);
}
