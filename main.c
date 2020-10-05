#include <stdio.h>
#include <math.h>
#include <string.h>

#if 0 //Task 1 a)
void substring(char source[], int start, int count, char result[]);
void readLine(char buffer[]);

void main(){
    char source[]="", result[]="";
    int start, count;
    printf("Input a sentence:");
    readLine(source);
    printf("\nWhich position do you want to start extracting from?");
    scanf("%i",&start);
    printf("\nAmount of characters you want to extract:");
    scanf("%i",&count);
    substring(source,start,count,result);
    printf("\n%s",result);
}
void readLine(char buffer[]){
    char character;
    int i = 0;
    do{
        character = getchar();
        buffer[i] = character;
        i++;
    }while(character !='\n');
    buffer[i-1]='\0';
}

void substring(char source[], int start, int count, char result[]){
    int temp = 0;
    count = count + start;
    for (int i = start; i<count; i++){
        if(i>strlen(source))
            break;
        result[temp]=source[i];
        temp++;
    }
    result[temp]='\0';
}
#endif

#if 1 //Task 1 b)
int findString(char[], char[]);
void getLine(char buffer[]);

void main(){
    char source[]="", word[]="";
    printf("Input a sentence:");
    getLine(source);
    printf("\n%s",source);
    printf("\nInput the word you want to find:");
    getLine(word);
    printf("\n%s",word);
    findString(source, word);
    printf("\n%s",source);
    printf("\n%s",word);
}

void getLine(char buffer[]){
    char character;
    int i = 0;
    do{
        character = getchar();
        buffer[i] = character;
        i++;
    }while(character !='\n');
    buffer[i-1]='\0';
}

int findString(char source[], char word[]){
    int lengthSource = strlen(source);
    int lengthWord = strlen(word);
    int n = 0;

    for(int i = 0; i <= lengthWord; i++){
        while(word[i]!=source[n]){
            n++;
        }
        if(n==lengthWord){
            return -1;
        }
    }

}


#endif