#deklarasi relatif direktori terhadap file
vpath %.cpp src
vpath %.h include

#flag untuk memasukan header
CPPFLAGS = -I include

#resep untuk aplikasi lat_9
MemTest:Mem.o MemTest.o
	g++ $(CPPFLAGS) -c $^ -o $@

#resep untuk membuat object file Mem.o
Mem.o:Mem.cpp Mem.h
	g++ $(CPPFLAGS) -c $<

#resep untuk membuat object file MemTest.o
MemTest.o:Mem.cpp Mem.h
	g++ $(CPPFLAGS) -c $<

#variable phony, clean untuk memberishkan file object
.PHONY = clean
clean:MemTest
	rm -f *.o $<

