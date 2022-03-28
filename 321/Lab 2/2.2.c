#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>
#include<sys/wait.h>

int main()
{
  int  a = fork();
  
  if(a== 0){
    int b  = fork();
    if(b==0)
    {
      printf("I am grandChild\n"); // if 0 then grandchild
    }
    else
    {
      wait(NULL);
      printf("I am Child\n"); // else this is the grandchilds father
    }
  }
  else
  {
  wait(NULL);
  printf("I am a parent\n"); // this is the childs father
  }
	return 0;
}