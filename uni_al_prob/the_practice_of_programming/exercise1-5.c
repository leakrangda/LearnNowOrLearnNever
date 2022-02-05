// what is wrong with this excerpt?

int read(int *ip){
	scanf("%d", ip);
	return *ip;
}

insert(&graph[vert], read(&val), read(&ch));	//wont work, because
						//the compiler dont know
						//which pointer to use.
