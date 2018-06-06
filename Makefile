CC = gcc
CFLAGS = -c -g -Wall -Wextra
LFLAGS = -Wall -Wextra -pthread

.PHONY: all clean

all: multi-lookup

multi-lookup: multi-lookup.o util.o
	$(CC) $(LFLAGS) $^ -o $@
multi-lookup.o: multi-lookup.c
	$(CC) $(CFLAGS) $<
util.o: util.c util.h
	$(CC) $(CFLAGS) $<
clean:
	rm -f multi-lookup
	rm -f *.o
	rm -f *~
	rm -f results.txt serviced.txt 
