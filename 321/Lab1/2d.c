#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include <stdbool.h> // for boolean
#include <stdlib.h>

int main(){
   char sentence[100];
   printf("Enter the string\n");
   fgets(sentence, 100, stdin);

   char *token = strtok(sentence, "@");
   int counter = 0;
   while (token != NULL)
   {
      if(counter == 1)
      {
         //printf("%s \n", token);
         token = strtok(NULL, "@");

         if (token == "sheba.xyz")
         {
            printf("Email address is okay");
         }
         else if (token == "kaaj.com")
         {
            printf("Email address is outdated");
         }
         
         else{
            printf("DO not exist");
         }
      }
      else{
         //printf("%s \n", token);
         token = strtok(NULL, "@");
         counter++;
      }
      
   }
}