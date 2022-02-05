/* squeeze character c in s string*/
void squeeze(char s[], char c){
	int i,j;

	i=j=0;
	do{
		if(s[i] != c)
			s[j++] = s[i];
	}while(s[i++] != '\0');
	s[j] = '\0';
	return;
}

void strcat(char s[], char t[]){
	int i, j;

	i=j=0;
	while(s[i] != '\0') /*find end of s*/
		i++;
	while((s[i++] = t[j++]) != '\0') /*copy it*/
		;
}
int any(char s1[], char s2[]){
	int i, j;
	
	
	for(i=0;s1[i] != '\0';i++)
		for(j=0; s2[j] != '\0';j++)
			if(s1[i] == s2[j])
				return i;
	return -1;
}	
