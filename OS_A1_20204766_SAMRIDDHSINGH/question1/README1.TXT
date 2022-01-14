compiling process:
    Type "make" command in the terminal to compile the both parts of quetion 1
    Type ./question1a and ./question1b to excecute part a and part b respectively.

Code Explanation:
PART A.
    In the part a we used forking to find average of particular
    assignment of all the student in each section.
    In this, we called fork() system call which create
    another process called child processs in which
    we have to calculate average of section A.
    We created variable as (pid_t pid) which store the 
    process id so that we can do our jobs using
    this id(via seleting for child(==0) and parent(>0))
    We used waitpid at the start of parent process(if pid>0)
    to pause this process untill child process is completed.
    And finally we will get the average of section A via child process
    and average of section b via parent process.

    SYSTEM CALLS AND ITS ARGUMENTS:
    read(file, buffer, sizeof(buffer))
    open("student_record.csv", O_RDONLY) :- student_record.csv this is the file name which must be in the directory 
                                            O_RDONLY to read the file. We opened file using this command.
    close(file): This will close our opend file.

    ERRORs AND CORNER CASES:
        To handle errors we used else if (that is if value of pid will be negative then our forking is failed)
        If open Systemcall return -1 then file was not able to open.

    EXPECTED OUTPUT:
                Section A
        Average of assignment1:  51.555556 
        Average of assignment2:  55.333333 
        Average of assignment3:  37.666667 
        Average of assignment3:  58.333333 
        Average of assignment5:  54.000000 
        Average of assignment6:  38.555556 

        Section B
        Average of assignment1:  53.058824 
        Average of assignment2:  52.941176 
        Average of assignment3:  39.764706 
        Average of assignment4:  58.705882 
        Average of assignment5:  64.058824 
        Average of assignment6:  50.000000 
PART B.
In the part b we used pthread_create which is used to call
(used to create a new thread,with attributes specified
by attr, within a process.) the function that is used
to for computing the averages of each assignments.
Then we use the pthread_join function waits for the thread
specified by thread to terminate. And then we create
another thread for section B and used pthread_join.
Finally we printed average of both sections.

SYSTEM CALLS AND ITS ARGUMENTS:
    read, open, close are all same a part A
    pthread_create(&thread, NULL,(void*)Average_SecA,NULL);
    pthread_join(thread, NULL);

ERRORs AND CORNER CASES:
    If open Systemcall return -1 then file was not able to open.

EXPECTED OUTPUT:
        Section A
    Average of assignment1:  51.555556 
    Average of assignment2:  55.333333 
    Average of assignment3:  37.666667 
    Average of assignment4:  58.333333 
    Average of assignment5:  54.000000 
    Average of assignment6:  38.555556 

    Section B
    Average of assignment1:  53.058824 
    Average of assignment2:  52.941176 
    Average of assignment3:  39.764706 
    Average of assignment4:  58.705882 
    Average of assignment5:  64.058824 
    Average of assignment6:  50.000000 

    Average of both section:
    Average of assignment1:  52.307190 
    Average of assignment2:  54.137255 
    Average of assignment3:  38.715686 
    Average of assignment4:  58.519608 
    Average of assignment5:  59.029412 
    Average of assignment6:  44.277778 