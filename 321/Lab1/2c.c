#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include <stdbool.h> // for boolean 

int main(){
   char sentence[100];
   bool check_lower = false;
   bool check_upper = false;
   bool check_digits = false;
   bool check_special = false;

   printf("Enter Mail\n");
   fgets(sentence, 100 , stdin);

   char *source  = sentence;
   int length = (int)strlen(source); // sizeof(source)=sizeof(char *) = 4 on a 32 bit implementation

   int check = 0;
   for (int i = 0; i < length; i++)
   {
      if(islower(source[i]) && check_lower == false ){
         //printf("exist lower\n");
         check_lower  = true;
      }

      if (isupper(source[i]) == true && check_upper == false)
      {
         //printf("exist upper\n");
         check_upper = true;
         
      }

      if (isdigit(source[i]) == true && check_digits == false)
      {
         //printf("exist digits\n");
         check_digits = true;
        
      }

      
      if (check_special == false)
      {

         //char output = source[i];
         if (source[i] == '_' || source[i] == '$' || source[i] == '#' || source[i] == '@')
         {
            //printf("exist special\n");
            check_special = true;
            
         }
      }
   }

   if (check_upper == true && check_lower == true && check_digits == true && check_special == true)
   {
      printf("Ok");
   }
   else{
      if (check_upper == false)
      {
         printf("Uppercase character missing\n");
      }
      if (check_lower == false)
      {
         printf("Lowercase missing\n");
      }
      if (check_digits == false)
      {
         printf("Digit missing\n");
      }
      if (check_special == false)
      {
         printf("Special character missing\n");
      }
   } 
}