$(CC)=gcc
all: question1a question1a.s question1b question1b.s

question1a: question1a.o
	$(CC) question1a.o -o question1a

question1a.i: question1a.c
	$(CC) -E question1a.c -o question1a.i

question1a.s: question1a.i
	$(CC) -S question1a.i -o question1a.s

question1a.o: question1a.c
	$(CC) -c question1a.c -o question1a.o



question1b: question1b.o
	$(CC) question1b.o -o question1b -pthread

question1b.i: question1b.c
	$(CC) -E question1b.c -o question1b.i -pthread

question1b.s: question1b.i
	$(CC) -S question1b.i -o question1b.s -pthread

question1b.o: question1b.c
	$(CC) -c question1b.c -o question1b.o -pthread


clean:
	rm -rf *.o question1a
	rm -rf *.o question1b