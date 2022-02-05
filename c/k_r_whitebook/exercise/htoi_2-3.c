/*white book*/

#include <stdio.h>
#include <ctype.h>
#include <string.h>

int htoi(char *ptr){
	int flag=0;
	int hasil=0;
	int base=1;
	char uji;

	while(*ptr != '\0'){
		uji = tolower(*ptr);
		if(isspace(uji))
			;
		else if(isalpha(uji) 
				&& (uji >= 'a' || uji <= 'f' || uji == 'x')){/* bagian huruf */
			if(uji == 'x')
				return -1;
			else{
				if(flag){
					hasil += (uji - 'a' + 10) * base;
					base*=16;
				}
				else
					return -1;
			}
		}
		else if(isdigit(uji)){		/* bagian angka 0 - 9 */
			if(uji == '0' && (tolower(*(ptr+1)) =='x')){
				if(flag)
					return -1;
				else{
					flag=1;
					ptr+=2;
					continue;
				}
			}
			if(flag){
				hasil += (uji - '0') * base;
				base*=16;
			}
			else
				return -1;

		}
		else
			return -1;		/* digit ilegal */
		ptr++;
	}
	return hasil;
}

/* percobaan */

int main(){
	char buffer[10];

	puts("masukan nilai hexai:");
	fgets(buffer, BUFSIZ - 1, stdin);
	buffer[strlen(buffer)-1] = '\0';
	if(htoi(buffer)!=-1)
		printf("nilai desimal dari %s = %d\n", buffer, htoi(buffer));
	else
		printf("%s memiliki format salah.\n", buffer);
	return 0;
}
