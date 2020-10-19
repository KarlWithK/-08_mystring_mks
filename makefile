.POSIX:
.PHONY: all clean
CC= gcc
OBJECTS= main.o mystring.o

all: main
	./main

main: $(OBJECTS)
	$(CC) -o main $(OBJECTS)

main.o: main.c mystring.h
	$(CC) -c main.c

mystring.o: mystring.c mystring.h
	$(CC) -c mystring.c

clean:
	rm *.o
	rm main
