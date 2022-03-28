#include <stdio.h>
void checkPalindrome(char* string)
{
    char *pointer, *reverse;

    pointer = string;

    while (*pointer != '\0') {
        ++pointer;
    }

    --pointer;
    for (reverse = string; pointer >= reverse;) {
        if (*pointer == *reverse) {
            --pointer;
            reverse++;
        }
        else
            break;
    }
  
    if (reverse > pointer)
    {
        printf("String is Palindrome\n");
    }
    else
    {
        printf("String is not a Palindrome\n");
    }  
}
int main()
{
    int num1;
    printf("Enter test case\n");
    scanf("%d ", &num1);

    while(num1 !=0){
        char str[100];
        //printf("Enter value :");
        scanf("%s", str); // %s for string and add "&" for int input
        checkPalindrome(str);

        num1 = num1 -1;
    }

    return 0;
}