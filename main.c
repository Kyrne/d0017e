#include <stdio.h>
#include <math.h>

//Lab task 1 a)
#if 0
void main(){
    int number1, number2;
    printf("Input two integers:");
    scanf("%i" "%i",&number1, &number2);

    if(number2==0){
        printf("\nCannot divide by 0.");
    }
    else if(number1%number2==0){
        printf("\nThe first number is evenly divisible by the second.");
    }

    else{
        printf("\nThe first number is not evenly divisible by the second.");
    }

}
#endif

//Lab task 1 b)
#if 0
void main(){

    float number1, number2;
    printf("Input two integers:");
    scanf("%i" "%i",&number1, &number2);

    if(number2 == 0){
        printf("Cannot divide by 0.");
    }
    else{
        printf("%.3f", number1/number2);
    }


}
#endif

//Lab task 1 c)
#if 0
void main(){
    int number, right_digit;

    printf("Enter your number.\n");
    scanf("%i",&number);


    do{
        right_digit=number%10;
        printf("%i", abs(right_digit));
        number=number/10;
    }
    while (number!=0);
    if(right_digit<0)
        printf("-");
    printf("\n");
}
#endif

//Lab task 2 a)
#if 0
void main(){

    int values[10];
    int index;

    for(int i = 0; i<sizeof(values)/sizeof(int); i++){
        values[i]=0;
    }

    values[0]=197;
    values[2]=-100;
    values[5]=350;
    values[3]=values[0]+values[5];
    values[9]=values[5]/10;
    --values[2];

    for(index = 0; index<10;++index)
        printf("values[%i]=%i\n",index,values[index]);

}
#endif

//Lab task 2 b)
#if 0
void main(){
    float sum;
    float numbers[10]={0};

    printf("Input 10 numbers:");

    for(int i = 0; i<sizeof(numbers)/sizeof(float); i++){
        scanf("%f",&numbers[i]);
        sum+=numbers[i];
    }
    printf("The average is:%.3f",sum/10);


}
#endif

//Lab task 3 a)
#if 0
int calculateTriangularNumber(int n){
    int i, triangularNumber=0;

    for(i=1; i<=n;++i)
        triangularNumber+=i;

    printf("Triangular number %i is %i\n",n,triangularNumber);
    return triangularNumber;
}

int main (void){
    int n, number, counter;

    for ( counter = 1; counter<=5; ++counter){
        printf("What triangular number do you want?");
        scanf("%i",&number);
        calculateTriangularNumber(number);
    }
}
#endif

//Lab task 3 b)
#if 0
int prime(int number);

void main(void){
    int number;
    printf("Input any integer:");
    scanf("%i", &number);
}

int prime(int number){
    int check = 1;

    for(int i = 2; i<=number; i++){
        if(number%i==0){
            check=0;
        }
    }

    return check;
}

#endif

//Lab task 3 c)
#if 0
int arraySum(int values[], int size);

void main(void){
    int size;

    printf("Size of array:");
    scanf("%i", &size);

    int values[size];
    printf("Input the values in the array:");
    for(int i=0; i<size; i++){
        scanf("%i",&values[i]);
    }

    arraySum(values,size);

}

int arraySum(int values[], int size){
    int sum;
    for(int i=0; i<size ;i++)
        sum+=values[i];
    return sum;
}
#endif

//Lab task 4
#if 1

int main(void){
    int size;
    float height, width;

    printf("Which size do you want to calculate?\nA");
    scanf("%i",&size);
    printf("\n");

    if(size%2!=0){
        width = (1/pow(2,(size+1)/2))*1000*pow(2,1.0/4);
        height = (1/pow(2,(size-1)/2))*1000/pow(2,1.0/4);
    }
    else if(size%2==0){
        width = (1/pow(2,(size/2))*1000*pow(2,1.0/4));
        height = (1/pow(2,(size/2))*1000/pow(2,1.0/4));
    }

    printf("A paper of size A%i is %f by %f mm",size, width, height);

}
#endif