#include <stdio.h>

int main()
{

    char str[10];

    int num1, num2;
    printf("Enter value\n");
    scanf("%d ", &num1);
    scanf("%d", &num2);

    if (num1 > num2)
    {
        int result = num1 - num2;
        printf("Output :%d", result);
    }

    else if (num1 < num2)
    {
        int result = num1 + num2;
        printf("Output :  %d", result);
    }

    else if (num1 == num2)
    {
        int result = num1 * num2;
        printf("Output :%d", result);
    }
}