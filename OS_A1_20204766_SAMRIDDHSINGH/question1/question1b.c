#include <stdio.h>
#include <string.h>

#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>
#include <inttypes.h>
#include <sys/wait.h>
#include <string.h>
#include <pthread.h>
double FA1=0;
double FA2=0;
double FA3=0;
double FA4=0;
double FA5=0;
double FA6=0;

void Average_SecA(){
    double Assignment1=0;
    double Assignment2=0;
    double Assignment3=0;
    double Assignmemt4=0;
    double Assignment5=0;
    double Assignment6=0;
    int c=0;
    int file;
        file = open("student_record.csv", O_RDONLY);

        if (!file)
                printf("Can't open file\n");
        
        else {
                char buffer[100000];
                printf("Section A\n");
                
                while (read(file, buffer, sizeof(buffer))) {
                        int count=0;
                        char* val = strtok(buffer, ",");

                        while (val) {
                            // printf("%s\n",value);
                        if(val[0]=='A' && strlen(val)==1){
                            c++;
                            count++;
                            val = strtok(NULL, ",");
                            continue;
                        }
                        if(count==1){
                            int a=atoi(val);
                            Assignment1=Assignment1+a;
                            val = strtok(NULL, ",");
                            count++;
                            continue;
                        }
                        else if(count==2){
                            int a=atoi(val);
                            Assignment2=Assignment2+a;
                            val = strtok(NULL, ",");
                            count++;
                            continue;
                        }
                        else if(count==3){
                            int a=atoi(val);
                            Assignment3=Assignment3+a;
                            val = strtok(NULL, ",");
                            count++;
                            continue;
                        }
                        else if(count==4){
                            int a=atoi(val);
                            Assignmemt4= Assignmemt4+a;
                            val = strtok(NULL, ",");
                            count++;
                            continue;
                        }
                        else if(count==5){
                            int a=atoi(val);
                            Assignment5=Assignment5+a;
                            val = strtok(NULL, ",");
                            count++;
                            continue;
                        }
                        else if(count==6){
                            int a=atoi(val);
                            Assignment6=Assignment6+a;
                            val = strtok(NULL, ",");
                            count=0;
                            continue;
                        }
                        val = strtok(NULL, ",");
                        }       
                }
                double a1=(double)Assignment1/c;
                double a2=(double)Assignment2/c;
                double a3=(double)Assignment3/c;
                double a4=(double)Assignmemt4/c;
                double a5=(double)Assignment5/c;
                double a6=(double)Assignment6/c;
               
                    printf("Average of assignment1:  %f \n",a1);
                    printf("Average of assignment2:  %f \n",a2);
                    printf("Average of assignment3:  %f \n",a3);
                    printf("Average of assignment4:  %f \n",a4);
                    printf("Average of assignment5:  %f \n",a5);
                    printf("Average of assignment6:  %f \n",a6);

                    printf("\n");
                FA1=FA1+a1;
                FA2=FA2+a2;
                FA3=FA3+a3;
                FA4=FA4+a4;
                FA5=FA5+a5;
                FA6=FA6+a6;
                close(file);
        }
        
        }
void Average_SecB(){
     double Assignment1=0;
    double Assignment2=0;
    double Assignment3=0;
    double Assignmemt4=0;
    double Assignment5=0;
    double Assignment6=0;
    int c=0;
    int file;
        file = open("student_record.csv", O_RDONLY);

        if (!file)
                printf("Can't open file\n");
        
        else {
                char buffer[100000];
printf("Section B\n");
        int file;
        file = open("student_record.csv", O_RDONLY);

        if (!file)
                printf("Can't open file\n");
        
        else {
                char buffer[100000];
                
                while (read(file, buffer, sizeof(buffer))) {
                        int count=0;
                        char* value = strtok(buffer, ",");

                        while (value) {
                            // printf("%s\n",value);
                        if(value[0]=='B' && strlen(value)==1){
                        c++;
                        count++;
                        value = strtok(NULL, ",");
                        continue;
                        }
                        if(count==1){
                            int a=atoi(value);
                            Assignment1=Assignment1+a;
                            value = strtok(NULL, ",");
                            count++;
                            
                            continue;
                        }
                        else if(count==2){
                            int a=atoi(value);
                            Assignment2=Assignment2+a;
                            value = strtok(NULL, ",");
                            count++;
                            continue;
                        }
                        else if(count==3){
                            int a=atoi(value);
                            Assignment3=Assignment3+a;
                            value = strtok(NULL, ",");
                            count++;
                            continue;
                        }
                        else if(count==4){
                            int a=atoi(value);
                            Assignmemt4= Assignmemt4+a;
                            value = strtok(NULL, ",");
                            count++;
                            continue;
                        }
                        else if(count==5){
                            int a=atoi(value);
                            Assignment5=Assignment5+a;
                            value = strtok(NULL, ",");
                            count++;
                            continue;
                        }
                        else if(count==6){
                            int a=atoi(value);
                            Assignment6=Assignment6+a;
                            value = strtok(NULL, ",");
                            count=0;
                            continue;
                        }
                        value = strtok(NULL, ",");
                        }
                        
                }

                double a1=(double)Assignment1/c;
                double a2=(double)Assignment2/c;
                double a3=(double)Assignment3/c;
                double a4=(double)Assignmemt4/c;
                double a5=(double)Assignment5/c;
                double a6=(double)Assignment6/c;
                // printf("%d\n",Assignment1);
                    printf("Average of assignment1:  %f \n",a1);
                    printf("Average of assignment2:  %f \n",a2);
                    printf("Average of assignment3:  %f \n",a3);
                    printf("Average of assignment4:  %f \n",a4);
                    printf("Average of assignment5:  %f \n",a5);
                    printf("Average of assignment6:  %f \n",a6);

                    printf("\n");
                FA1=FA1+a1;
                FA2=FA2+a2;
                FA3=FA3+a3;
                FA4=FA4+a4;
                FA5=FA5+a5;
                FA6=FA6+a6;

                // Close the file
                close(file);
        }
}}
int main()
{
pthread_t thread;
pthread_create(&thread, NULL,(void*)Average_SecA,NULL);
pthread_join(thread, NULL);
pthread_create(&thread, NULL,(void*)Average_SecB,NULL);
pthread_join(thread, NULL);
                    printf("Average of both section:\n ");
                    printf("Average of assignment1:  %f \n",FA1/2);
                    printf("Average of assignment2:  %f \n",FA2/2);
                    printf("Average of assignment3:  %f \n",FA3/2);
                    printf("Average of assignment4:  %f \n",FA4/2);
                    printf("Average of assignment5:  %f \n",FA5/2);
                    printf("Average of assignment6:  %f \n",FA6/2);
return 0;
}