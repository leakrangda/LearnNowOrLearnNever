#make file dengan pattern builtin:stem replacement
#deklarasi relatif direktori terhadap file
vpath %.cpp src 
vpath %.h include

#flag untuk memasukan header
CPPFLAGS = -I include
CC = g++

#resep untuk aplikasi toIndo
toIndo:toIndo-0.3.o indonesia-0.2.o
	$(CC) $(CPPFLAGS) $^ -o $@

#resep untuk membuat object file toIndo.o
toIndo-0.3.o:toIndo-0.3.cpp indonesia-0.2.h
	$(CC) $(CPPFLAGS) -c $<

#resep untuk membuat object file indonesia.o
indonesia-0.2.o:indonesia-0.2.cpp indonesia-0.2.h
	$(CC) $(CPPFLAGS) -c $<

#variable phony, clean untuk memberishkan file object
.PHONY = clean
clean:
	rm -f *.o $<
