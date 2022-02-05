vpath %.cpp src
vpath %.h include

CPPFLAG= -I include
CC= g++

hasil:VoidCast.o Rock.o Bird.o Bird.h Rock.h
	$(CC) $(CPPFLAG) $^ -o $@ 
VoidCast.o:VoidCast.cpp Bird.h Rock.h
	$(CC) $(CPPFLAG) $< -c 
Rock.o:Rock.cpp Rock.h
	$(CC) $(CPPFLAG) $< -c 
Bird.o:Bird.cpp Bird.h
	$(CC) $(CPPFLAG) $< -c 
.PHONY:clean
clean:hasil
	rm -f *.o hasil
