#include <stdio.h>
#include<string.h>

struct Paratha 
{
    int quantity;
    int price;
};

struct Vegetable
{
    int quantity;
    int price;
};

struct Water
{
    int quantity;
    int price;
};

int main(){

    struct Paratha p_paratha, q_paratha;
    struct Vegetable p_veg, q_veg;
    struct Water p_water, q_water;

    int num_of_people;
    int total;

    printf("Quantity Of Paratha: ");
    scanf("%d", &p_paratha.quantity);
    printf("Unit Price: ");
    scanf("%d", &p_paratha.price);

    printf("Quantity Of Vegetable: ");
    scanf("%d", &p_veg.quantity);
    printf("Unit Price: ");
    scanf("%d", &p_veg.price);

    printf("Quantity Of Mineral Water : ");
    scanf("%d", &p_water.quantity);
    printf("Unit Price: ");
    scanf("%d", &p_water.price);

    printf("Number of People: ");
    scanf("%d", &num_of_people);

    total = (p_paratha.quantity * p_paratha.price) + (p_veg.quantity * p_veg.price) +(p_water.quantity*p_water.price) ;

   float pay_per_person = total / num_of_people;

   printf("Individual people will pay: %.2f tk", pay_per_person);
}