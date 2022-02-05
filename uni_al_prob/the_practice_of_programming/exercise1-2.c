int smaller(char *firstStr, char *secondStr){
	if (strcmp(firstStr, secondStr) < 1) 
	//check if first string is smaller than second string
		return 1;	// if true, return 1
	else
		return 0;	// if wrong, return 0
}
