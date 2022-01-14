compiling process:
    Type "make" command in the terminal to compile the both parts of quetion 1
    Type ./question2  to excecute.

EXPLANATION:
    First we made 3 files A.c, B.asm, C.c 
    Now we make function name func_b in file B.asm in our file using "extern".
    In B.asm file we wrote extern func_C so that we could import func_C from C.c as a static library.
    I called function name func_a from main of A.c file, now from A we called func_b which is in assembly file. 
    In the .asm file we converted our long value into ASCII and will be printed.
    Pop is called twice to empty the stack, caller address is removed.
    Finally, address is C is moved is rax which is then pushed into the stack.
    Returing B, causes pointer to point to the address of C, hence calling C
    Then called stack of fun_b  and the return address of func_b will be changes
    to func_c and now func_C is called from our another file named C.c when fun_b returns

EXPECTED OUTPUT:
    Entered function A in file A.c
    Ybcdefgh  Entered function B in file B
    Entered function C in file C.c

        