
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h> 
#include <pthread.h>
#include<string.h>

int v1,v2,v3;
int count =0;
void *myThreadFun(void *ptr)
{
    char *message = (char *) ptr;
    
    //char m[100] = message;
   char name[100];
   int  i =0;
   memcpy(name, message, 100);
   
   int sum=0; 
   
   while(name[i]!='\0')  // while loop  
    {  
        //printf("\nThe ascii value of the character %c is %d", name[i],name[i]);  
        sum=sum+name[i];  
        i++;  
    }  
    //printf("\nSum of the ascii value of a string is : %d\n", sum);  

    
    
    count = count +1;
    if(count==1)
    {
        v1 = sum;
    }
    if(count==2)
    {
        v2 = sum;
    }
    if(count==3)
    {
        v3 = sum;
    }
    
}
   
int main()
{
    pthread_t _id1,_id2,_id3,_id4,_id5;
    
    char *msg1= "Tarikul";
    char *msg2= "islam";
    char *msg3= "shykat";
    
    
    pthread_create(&_id1, NULL, myThreadFun, (void*) msg1);
    pthread_join(_id1, NULL); // watits for the exection of the thread
    pthread_create(&_id2, NULL, myThreadFun, (void*) msg2);
    pthread_join(_id2, NULL);
    pthread_create(&_id3, NULL, myThreadFun, (void*) msg3);
    pthread_join(_id3, NULL);

   //printf("%d\n", v1);
   //printf("%d\n", v2);
   //printf("%d\n", v3);
   
   if(v1 == v2 && v2 == v3 && v1 == v3 ){
       printf("Miracle");
   }
   else
   {
       printf("Hasta la vista");
   }
   exit(0);
}