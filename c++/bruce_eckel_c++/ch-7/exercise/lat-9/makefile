vpath %.cpp	src
vpath %.h	include
lat_9:Mem.o MemTest.o
	g++ $^ -o $@
Mem.o:Mem.cpp Mem.h
	g++ -c $<
MemTest.o:MemTest.cpp Mem.h
	g++ -c $<
