
/* lower(), convert upper case to lower case */

void lower(char string[]){
	int i;

	for(i = 0; string[i] != '\0';i++){
		string[i] = (string[i] >= 'A' && string[i] <= 'Z') ? 
			string[i] + 'a' - 'A' : string[i];
	}
}
