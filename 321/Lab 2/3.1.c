
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h> 
#include <pthread.h>
void *myThreadFun(void *ptr)
{
    char *message;
    message  = (char *) ptr;
    printf("%s running\n", message);
    printf("%s closed\n", message);
    
}
   
int main()
{
    pthread_t _id1,_id2,_id3,_id4,_id5;
    
    char *msg1= "Thread - 1";
    char *msg2= "Thread - 2";
    char *msg3= "Thread - 3";
    char *msg4= "Thread - 4";
    char *msg5= "Thread - 5";
    
    
    pthread_create(&_id1, NULL, myThreadFun, (void*) msg1);
    pthread_join(_id1, NULL); // watits for the exection of the thread
    pthread_create(&_id2, NULL, myThreadFun, (void*) msg2);
    pthread_join(_id2, NULL);
    pthread_create(&_id3, NULL, myThreadFun, (void*) msg3);
    pthread_join(_id3, NULL);
    pthread_create(&_id4, NULL, myThreadFun, (void*) msg4);
    pthread_join(_id4, NULL);
    pthread_create(&_id5, NULL, myThreadFun, (void*) msg5);
    pthread_join(_id5, NULL);
   
    exit(0);
}