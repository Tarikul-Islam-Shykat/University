#include <stdio.h>
#include <string.h>

int main(){
   char sentence[100];
   char output[]  = "";
   printf("Enter the string\n");
   fgets(sentence, 100 , stdin);
   char *token = strtok(sentence, " ");
   while (token != NULL)
   {
      printf("%s ", token);
      token = strtok(NULL, " ");
   }
}