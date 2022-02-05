#include <stdio.h>

/*base logic
function g(y,m,d)
m = (m + 9) % 12
y = y - m/10
return 365*y + y/4 - y/100 + y/400 + (m*306 + 5)/10 + ( d - 1 )

Difference between two dates = g(y2,m2,d2) - g(y1,m1,d1)*/
int datetoday(int *);
int date_diff(int *, int *);
int main(void)
{
	int date_form1[3];
	int date_form2[3];

	printf("masukan tanggal pertama:[dd:mm:yyyy]");
	scanf("%d:%d:%d",date_form1,date_form1+1,date_form1+2);
	printf("masukan tanggal kedua:[dd:mm:yyyy]");
	scanf("%d:%d:%d",date_form2,date_form2+1,date_form2+2);
	printf("hasilnya adalah:%d\n",date_diff(date_form1,date_form2));
	return 0;
}
int datetoday(int *tanggal)
{
	/*format ddmmyyyy*/
	int m=(tanggal[1]+9) % 12;
	int y=tanggal[2]-m/10;
	
	return 365*y + y/4 - y/100 + y/400 + (m * 305 + 5)/10 + (tanggal[0] - 1);
}
int date_diff(int *tanggal_1, int *tanggal_2)
{
	int day2=datetoday(tanggal_2);
	int day1=datetoday(tanggal_1);
	return day2-day1;
}
