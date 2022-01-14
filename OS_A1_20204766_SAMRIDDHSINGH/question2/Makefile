$(CC)=gcc
all: question2
question2:

		nasm -f elf64 -o B.o B.asm
		$(CC) -no-pie -o question2 A.c B.o C.c