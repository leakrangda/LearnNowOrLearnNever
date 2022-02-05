#include <string.h>
#include <ctype.h>
#include "k_r-control.h"

/* binary search: with one test in loop */
/* 1 inner test only */
int binsearch_2(int x, int v[], int n){
	int low, high, mid;

	low = x;
	high = n - 1;
	mid = (low + high) / 2;
	while(low <= high && x != v[mid]){
		if(x > v[mid])
			low = mid + 1;
		else
			high = mid - 1;
		mid = (low + high) / 2;
	}
	if(x == v[mid])
		return mid;
	else
		return -1;
}

/* binary search: normal search algorithm */
int binsearch(int x, int v[], int n){
	int low, high, mid;

	low = 0;
	high = n - 1;
	while(low <= high){
		int mid = (low + high) / 2;
		if(x < v[mid])
			high = mid -1;
		else if(x > v[mid])
			low = mid + 1;
		else
			return mid;
	}
	return -1;
}

/* escape(): convert tab and newline to escape character */
void escape(char s1[], char s2[]){
	int i,j;

	for(i = 0,j = 0;s2[i]!='\0';i++)
		switch(s2[i]){
			case '\n':
				s1[j++]='\\';
				s1[j++]='n';
				break;
			case '\t':
				s1[j++]='\\';
				s1[j++]='t';
				break;
			default:
				s1[j++] = s2[i];
		}
	s1[++j] = '\0';
}
/* reverse escape(): convert '\t' and '\n' to tab and newline respectively */
void reverse_escape(char s1[], char s2[]){
	int i, j;

	for(i = 0, j = 0;s2[i] != '\0';i++)
		switch(s2[i]){
			case '\\':
				switch(s2[i + 1]){
					case 't':
						s1[j++] = '\t';
						i++;
						break;
					case 'n':
						s1[j++] = '\n';
						i++;
						break;
					case '\\':
						s1[j++] = '\\';
						i++;
						break;
					default:
						break;
				}
				break;
			default:
				s1[j++] = s2[i];
		}
	s1[++j] = '\0';
}

/* expand(): expands shorthand notation condition like a-z to abc...xyz */
void expand(char s1[], char s2[]){
	int i, j, exp;
	char awal,akhir;
	awal=akhir=exp=0;

	for(i = 0, j = 0; s2[i] != '\0';i++){
		if(isspace(s2[i]));		/* skip blank space */
		else if(isalnum(s2[i])){
			if(exp){
				akhir = s2[i];
				for(;awal <= akhir;awal++)
					s1[j++]=awal;
				awal = 0;
				akhir = 0;
				exp = 0;
			}
			else{
				s1[j++] = s2[i];
				awal = s2[i] + 1;
			}
		}
		else if(s2[i] == '-'){
			if(awal != 0)
				exp=1;
			else
				s1[j++] = '-';
		}
	}
	s1[j] = '\0';
}

/* itob(): convert int to a string with a base defined */
void itob(int n, char s[], int b){
	int i;
	int temp;
	int sign;
	int count;
	const char hex[] = "abcdef";
	
	i = 0;
	sign = 0;
	if(n < 0){
		n = -n;
		sign = 1;
	}
	do{
		if((temp = n % b) > 9)
			s[i]=hex[temp - 10];
		else
			s[i]='0' + temp;
		i++;
	}while(n /= b);
	
	if(sign)
		s[++i] = '-';
	s[i] = '\0';
	reverse(s);
}

/* itoa_i(): convert int to ascii with padded on the left */
void itoa_i(int n, char s[], int b){
	int i;
	int sign;
	
	i = 0;
	sign = 0;
	if(n < 0){
		n = -n;
		sign = 1;
	}
	do{
		s[i++] = (n % 10) + '0';
		b--;
	}while(n /= 10);

	if(sign)
		s[++i] = '-';
	while(b--)
		s[i++] = ' ';
	s[i] = '\0';
	reverse(s);
}

/* reverse(): reverse string */
void reverse(char s[]){
	int count;
	int i;

	count = strlen(s) - 1;
	for(i = 0; i < count / 2; i++)
		s[i] ^= s[count- i] ^= s[i] ^= s[count - i];	// swap with xor
}
