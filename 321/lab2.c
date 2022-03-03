// if 
#include <stdio.h>
int main(){

   int a = 100;

   if(a<20){
      printf("Value less than 20\n");
   }
   else if(a<0){
      printf("Its  a negative value\n");
   }

  else{
     printf("all other things\n");
  }

   return 0;
}



// while 
int a = 0;

   while(a<5){
      printf("5 times\n");
      printf("%d\n", a);
      a++; // a = a+1
      printf("after increment : %d\n", a);
   }

// for 
for (int a = 5; a >; a++)
   {
      printf("%d\n", a);
      printf("5 times \n")'
   }
for (int a = 5; a > 0; a--) // a= a-1
   {
      printf("%d\n", a);
      printf("5 times \n");
     
   }
// function
#include <stdio.h>
int max(int value1, int value2); // function declaration
int main()
{
   int a = 70;
   int b = 80;
   int c = 30;
   int result ;
   result = max(a,b);
   printf("%d", result);
   return 0;
}
int max (int value1 , int value2){ // int return type
   int num1 = value1;
   int num2 = value2;
   int finalResult;
   if(num1 < num2){
      finalResult = num2;
   }
   else{
      finalResult = num1;
   }
   return finalResult;
}
