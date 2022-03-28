#include <stdio.h>
#include<string.h>

void perfect_numbers(int value1, int value2);

int main(){
    int a, b;
    printf("Enter starting value: ");
    scanf("%d", &a);
    printf("Enter ending value: ");
    scanf("%d", &b);
    perfect_numbers(a, b);
    return 0;
}

void perfect_numbers(int value1, int value2)
{
    int n, i, sum;
    for (n = value1; n <= value2; n++)
    {
        i = 1;
        sum = 0;
        while (i < n)
        {
            if (n % i == 0)
            {
                sum = sum + i;
            }  
            i++;
        }
        if (sum == n)
        {
            printf("%d \n", n);
        }   
    }
}