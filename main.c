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

#if 0 //Task 1 b)
int findString(char[], char[]);

void main(){
    char source[99]="", word[99]="";
    printf("Input a sentence:");
    scanf ("%[^\n]%*c", source);

    printf("\nInput the word you want to find:");
    scanf ("%[^\n]%*c", word);

    printf("%i",findString(source, word));

}


int findString(char source[], char word[]){
    int sourceLength = strlen(source);
    int wordLength = strlen(word);
    int temp = 0, counter = 0;

    for (int n = 0; n<wordLength; n++) {
        for (int i = temp; i <= sourceLength - wordLength + 1; i++) {
            if (source[i] == word[n]) {
                temp = i;
                counter++;
                break;
            }
            else{
                temp = 0;
            }
        }
    }
    if(counter == wordLength)
        return temp-wordLength+1;
    else
        return -1;
}

#endif

#if 1 //Task 2 a)
void insertEntry();

typedef struct{
    int value;
}entry;

void main(){
    int insert = 1337;
    insertEntry(insert);
}

void insertEntry(entry value){

}

#endif