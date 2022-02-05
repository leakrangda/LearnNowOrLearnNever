

#include <stdio.h>
#include <ctype.h>
#include <string.h>

/* percobaan */

int main(){
	char buffer[BUFSIZ];

    do{
        puts("masukan nilai hexa:");
        fgets(buffer, BUFSIZ - 1, stdin);
        buffer[strlen(buffer)-1] = '\0';
        int flag=0;
        char *ptr=buffer;
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
                    break;
                else{
                    if(flag){
                        hasil += (uji - 'a' + 10) * base;
                        base*=16;
                    }
                    else
                        break;
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
                    break;
            }
            else
                break;		/* digit ilegal */
            ptr++;
        }
        if(htoi(buffer)!=-1)
            printf("nilai desimal dari %s = %d\n", buffer, htoi(buffer));
        else
            printf("%s memiliki format salah.\n", buffer);
        printf("apakah anda ingin melanjutkan? y/t")
        fgets(buffer,1,stdin);
    }while(buffer[0]=='y' || buffer[0]=='Y')
    return 0;
}
