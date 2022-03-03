int main()
{
  // how to print
  printf("hello world. Silent, powerful, execution\n");
  
  
  // variable definition
    int a, b;
    int c;
    float f;
    a = 10;
    b = 10;
    c= a+b;
    printf("Integer printed like this: %d", c);
  
  
  
  // float
    f= 10;
    printf("float number prints like this : %f, ",f);
  
  
  // multiple print
    printf("multiple prints like this : %f %d, ", f, c); // float number prints like this : 10.000000, multiple prints like this : 10.000000 20,
  

  // taking inputs
    char str[100];
    int i;
    printf("Enter value :");
    scanf("%s %d", str, &i); // %s for string and add "&" for int input
    printf("%s %d",str, i);
  
  
    // character input
    int c; 
    printf("Please enter a value:"); // hello world
    c = getchar();
    printf("\nYou entered : "); // You entered : h
    putchar(c);
  
  
  // array
    int n[10]; // size
    int i, j ,num;
    printf("Enter a number : \n");
    for(i = 0; i<10; i++){
        scanf("%d",&n[i]);
    }
    for (j = 0; j< 4;j++)
    {
        printf("Element [%d] = %d\n", j, n[j]);
    }
  
 
  // pointer
  int var = 20; // variable of type int 
   int *ip;// pointer declaration, it can store the address of an integer
   printf("Address of pointer  :  %x\n", ip);

   ip =  &var;// stores the address of variabl 'var' in pointer ip
   // ip > is the address || *p value at the address. || access value of > *p = 10[will change it]

   printf("Varibale : %d\n",var);
   printf("pointer address :  %x\n", ip);
   printf("also gives the adress of pointer it points to :  %x\n", &var);

   printf("p ip is also a variable and it store at :  %x\n", &ip);

   printf("prints the value it pointed to > %d",*ip);
   /*
Address of pointer  :  316000
Varibale : 20
pointer address :  61ff2c
also gives the adress of pointer it points to :  61ff2c
p ip is also a variable and it store at :  61ff28
prints the value it pointed to > 20
   */
  
  // string
  char greeting[6] = {'H','o','l','o'};
   printf("Greeting message: %s",greeting);


  
}
