#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
extern void func_b(long f);

void func_A(long A)
{
	printf("Entered function A in file A.c\n");
	func_b(A);
}

int main()
{
	func_A(7523094288207667801);
	return 0;
}
