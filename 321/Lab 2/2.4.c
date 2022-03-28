#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>
#include<sys/wait.h>

int main()
{
  int a = fork();
  
  if( a== 0){
    printf("I am a child process\n"); 
    int number[30];
 
    int i, j, a, n;
    printf("Enter the value of N\n");
    scanf("%d", &n);
 
    printf("Enter the numbers \n");
    for (i = 0; i < n; ++i){
	   scanf("%d", &number[i]);
        }
 
    for (i = 0; i < n; ++i) 
    {
     for (j = i + 1; j < n; ++j) 
        {
            if (number[i] < number[j]) 
            {
                a = number[i];
                number[i] = number[j];
                number[j] = a;
            }
        }
    }
    printf("The numbers arranged in descending order are given below\n");
    for (i = 0; i < n; ++i) 
    {
    printf("%d\n", number[i]);
    }
  }
  else
  {
    wait(NULL); 
    printf("I am a parent process\n");
       int n, a[20];

   printf("Enter the size of the array: ");
   scanf("%d", &n);

   printf("Enter array elements: \n");
   for(int i=0; i<n; i++)
   {
      scanf("%d",&a[i]);
   }

   printf("Even numbers in the array are: \n");
   for(int i=0; i<n; i++)
   {
     if(a[i]%2==0)
     printf("%d ", a[i]);
   }

   printf("\nOdd numbers in the array are: \n");
   for(int i=0; i<n; i++)
   {
     if(a[i]%2!=0)
     printf("%d ", a[i]);
   }
  }
	return 0;
}