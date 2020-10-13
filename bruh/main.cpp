#include <iostream>
#include <math.h>
#include <string.h>
#include <stdlib.h>
#include <ctype.h>
#define MIN(x,y) ((x<y)?x:y)

//Task 1a
#if 0
void substring(char source[], int start, int count, char result[]){
    int index = 0;
    count = count + start;
        for (int i = start; i < count; i++){
        if(i > strlen(source)){             //checks if the user wants to extract outside of the inputted word
            printf("Start position is outside of the character length.\n");
            break;
        }
        result[index] = source[i];          //stores the extracted letters in an array word for word
        index++;
    }
    result[index] = '\0';
}

void readLine(char buffer[]){           //function to read strings
    char character;
    int i = 0;
    do{
        character = getchar();
        buffer[i] = character;
        i++;
    }
    while(character != '\n');
    buffer[i-1] = '\0';
}

int main(){
    char source[] = "", result[] = "";
    int start, count;
    printf("Input a sentence or word.\n");
    readLine(source);
    printf("Please pick a starting point for the extraction.\n");
    scanf("%i", &start);
    printf("How many characters do you want to extract?\n");
    scanf("%i", &count);
    substring(source, start, count, result);
    printf("The resulting sentence is: \"%s\"", result);
}
#endif

//Task 1b
#if 0
int findString(char *source, char *search){
    char *p;
    int pos = 0;
    p = strstr(source, search);         //checks if the substring exists

    if(p){
        pos = p - source;               //calculates the index of this substring
        return pos;
    }
    else
        return -1;
}

void readLine(char buffer[]){           //function to read string
    char character;
    int i = 0;
    do{
        character = getchar();
        buffer[i] = character;
        i++;
    }
    while(character != '\n');
    buffer[i - 1] = '\0';
}

int main(){
    char source[50], search[50];
    int pos;

    printf("Please enter a string.\n");
    readLine(source);
    printf("What word would you like to search for?\n");
    readLine(search);

    pos = findString(source, search);

    if(pos != -1){
        printf("The substring \"%s\" was found at index #%i.\n", search, pos);
    }
    else
        printf("Error could not find substring.\n");

    return 0;
}
#endif

//Task 2a
#if 0
struct entry{;
    int value;
    struct entry *next;
};

void insertEntry ( struct entry *newEntry, struct entry *EntryNo ){

    newEntry->next = EntryNo->next;         //creates the next entry n5
    EntryNo->next = newEntry;               //assigns the user inputted value to this entry
}

int main (){
    struct entry n1, n2, n3, n4, newEntry;

    struct entry *listPointer = &n1;
    n1.value = 100;
    n1.next = &n2;
    n2.value = 200;
    n2.next = &n3;
    n3.value = 300;
    n3.next = &n4;
    n4.value = 400;
    n4.next = (struct entry*) nullptr;               //n4 is the last entry unless another entry is added


    printf("The current list is:\n");
    while (listPointer != (struct entry*) nullptr){         //loops until it reaches the last entry
        printf("%i\n", listPointer->value );        //prints the value of the current entry
        listPointer = listPointer->next;                //moves pointer to next entry
    }

    listPointer = &n1;              //moves pointer to the first entry
    printf("What entry would you like to add to the list?\n");
    scanf("%i", &newEntry);
    insertEntry (&newEntry, &n4);             //calls the above function to add an entry to the list

    printf("The new list is:\n");
    while (listPointer != (struct entry*) nullptr){
        printf("%i\n", listPointer->value );
        listPointer = listPointer->next;
    }
    return 0;
}
#endif

//Task 2b
#if 0
int compareStrings(char *first, char *second){
    while(*first == *second && *first != '\0' && *second != '\0'){          //compares the two strings character by character
        first++;
        second++;
    }           //if both strings are identical it will return NULL = 0 to the main function
}               //if both strings are not identical it will return the ascii value of the first mismatching character != 0

int main(){
    char first[100], second[100], result = 0;

    printf("Enter first string\n");
    scanf("%s", &first);

    printf("Enter second string\n");
    scanf("%s", &second);

    result = compareStrings(first, second);         //calls for the above function

    //printf("%i\n", result);
    if ( result == 0 )
        printf("Both strings are same.\n");
    else
        printf("Entered strings are not equal.\n");

    return 0;
}
#endif

//Task 3a
#if 1
/* Found the files in the following filepath:
 * C:\Program Files (x86)\mingw-w64\i686-8.1.0-posix-dwarf-rt_v6-rev0\mingw32\i686-w64-mingw32\include
 * They all define, redefine and undefine certain operations to make it easier for the user to code.
 * Instead of writing a program that calculates something complicated there might be a command for that
 * specific calculation if you include the library <math.h>
 */
#endif

//Task 3b
#if 0
int main(){
    int a, b, min;
    printf("Please input two integers.\n");
    scanf("%i%i", &a, &b);

    min=MIN(a,b);
    printf("Out of the two values %i and %i, the smallest of the two is %i.\n", a, b, min);

    return 0;
}
#endif

//Task 4a
#if 0
int main(){
    FILE *f1, *f2;
    char sentence;

    fopen(R"(C:\Users\Sundsvall\CLionProjects\Lab 3a\new_4a.txt)", "w");            //deletes the content of the new file

    f1 = fopen(R"(C:\Users\Sundsvall\CLionProjects\Lab 3a\original_4a.txt)", "r");  //opens original file in read mode
    f2 = fopen(R"(C:\Users\Sundsvall\CLionProjects\Lab 3a\new_4a.txt)", "w");       //opens new file in write mode

    if (f1 == NULL || f2 == NULL){       //checks so that both files exist
        puts("File does not exist.");
        return 0;
    }

    while((sentence = fgetc(f1)) != EOF){            //loops through every character until the end of the file is reached
        sentence = toupper(sentence);               //stores the files content after switching to uppercase
        fputc(sentence,f2);                         //writes the stored information from sentence to the new file
    }

    printf("New.txt file generated successfully.\n");
    fclose(f1);         //closes the original file
    fclose(f2);         //closes the new file
    return 0;
}
#endif

//Task 4b bättre längre ner
#if 0
int main(){
    FILE *f1, *f2, *f3;
    char line1[256], line2[256];

    fopen(R"(C:\Users\Sundsvall\CLionProjects\Lab 3a\merged_4b.txt)", "w");         //deletes content from merged file

    f1 = fopen(R"(C:\Users\Sundsvall\CLionProjects\Lab 3a\first_4b.txt)", "r");     //opens first file in read mode
    f2 = fopen(R"(C:\Users\Sundsvall\CLionProjects\Lab 3a\second_4b.txt)", "r");    //opens second file in read mode
    f3 = fopen(R"(C:\Users\Sundsvall\CLionProjects\Lab 3a\merged_4b.txt)", "w");    //opens merged file in write mode

    if(f1 == NULL || f2 == NULL || f3 == NULL){         //checks so that all files exist
        printf("File does not exist.");
        return 0;
    }

    while ((!feof(f1)) || (!feof(f2))){                    //loops until the end of the first and second file
        fgets(line1, 256, f1);               //reads the first line of the first file
        if (!feof(f1)){
            fprintf(stdout, "%s", line1);           //prints the previously read line in the merged file
        }

        fgets(line2, 256, f2);               //reads the first line of the second file
        if (!feof(f2)){
            fprintf(stdout, "%s", line2);           //prints the previously read line in the merged file
        }

        strcpy(line1, "\0");
        strcpy(line2, "\0");
    }

    fclose(f1);
    fclose(f2);
    fclose(f3);

    printf("Successfully merged the two files together, please look in the merged.txt file.\n");
    return 0;
}
#endif

//Task 4a not a file
#if 0
int main() {
    char sentence[100];
    int length, newSentence;

    printf("Please input a sentence.\n\n");
    fgets(sentence, sizeof sentence, stdin);
    length = strlen(sentence);

    printf("The old sentence was: %s\n", sentence);
    printf("The new sentence is: ");

    for (int i = 0; i < length; i++) {                //loops through the entire string
        newSentence = toupper(sentence[i]);         //switches all the lowercase characters to uppercase ones
        //newSentence = islower(sentence[i]) ? toupper(sentence[i]) : tolower(sentence[i]);
        putchar(newSentence);
    }
    return 0;
}
#endif

#if 0
int main() {
    FILE *fp1, *fp2, *fp3;
    char line1[256], line2[256];
    char fname1[256], fname2[256], merged[256];


    /* open first input file in read mode */
    fp1 = fopen(R"(C:\Users\Sundsvall\CLionProjects\Lab 3a\first_4b.txt)", "r");

    /* error handling */
    if (!fp1) {
        printf("Unable to open first input file!!\n");
        return 0;
    }

    /* error handling */
    fp2 = fopen(R"(C:\Users\Sundsvall\CLionProjects\Lab 3a\second_4b.txt)", "r");

    /* unable to open second input file */
    if (!fp2) {
        printf("Unable to open second input file!!\n");
        fclose(fp1);
        return 0;
    }

    /* open temporary file in write mode */
    fp3 = fopen(R"(C:\Users\Sundsvall\CLionProjects\Lab 3a\merged_4b.txt)", "w");

    /* error handling */
    if (!fp3) {
        printf("Unable to open temporary file to write!!\n");
        fclose(fp1);
        fclose(fp2);
        return 0;
    }

    /* copying contents of given two input files */
    while ((!feof(fp1)) && (!feof(fp2))) {
        /* copy a line from first input file */
        fgets(line1, 256, fp1);
        if (!feof(fp1)) {
            fprintf(fp3, "%s", line1);
        }

        /* copy a line from second input file */
        fgets(line2, 256, fp2);
        if (!feof(fp2)) {
            fprintf(fp3, "%s", line2);
        }

        strcpy(line1, "\0");
        strcpy(line2, "\0");
    }

    /* close the opened input files */
    fclose(fp1);
    fclose(fp2);
    fclose(fp3);

    /* remove the given input files */
    remove(fname1);
    remove(fname2);


    /* rename the temporary file */
    rename("merged.txt", fname1);
    return 0;
}
#endif

#if 0
int main(void) {
    int c1, c2;
    FILE *file1, *file2;
    file1 = fopen(R"(C:\Users\Sundsvall\CLionProjects\Lab 3a\first_4b.txt)", "r");
    file2 = fopen(R"(C:\Users\Sundsvall\CLionProjects\Lab 3a\second_4b.txt)", "r");

    if((file1 == NULL) || (file2 == NULL)){
        fprintf(stderr, "bad file name\n");
        exit(EXIT_FAILURE);
    }

    do{
        // taking line from file 1.
        while(((c1 = getc(file1)) != EOF) &&(c1 != '.'))
            putc(c1, stdout);
        if(c1 != EOF)
            putc(c1, stdout);

        // taking line from file 2.
        while(((c2 = getc(file2)) != EOF) &&(c2 != '.'))
            putc(c2, stdout);
        if(c2 != EOF)
            putc(c2, stdout);
    }

    while((c1 != EOF) && (c2 != EOF));

    while((c1 = getc(file1)) != EOF)
        putc(c1, stdout);

    while((c2 = getc(file2)) != EOF)
        putc(c2, stdout);

    return 0;
}
#endif

//Task 4b Denna är närmast rätt
#if 0
int main()
{
    FILE *first, *second, *merged;
    char line;
    int f1 = 1,f2 = 1, counter = 1;

    first=fopen(R"(C:\Users\Sundsvall\CLionProjects\Lab 3a\first_4b.txt)", "r");
    second=fopen(R"(C:\Users\Sundsvall\CLionProjects\Lab 3a\second_4b.txt)", "r");
    merged=fopen(R"(C:\Users\Sundsvall\CLionProjects\Lab 3a\merged_4b.txt)", "w");

    while(1)
    {
        if(counter==1||f2==0)
        {
            line=fgetc(first);
            if(line==EOF){
                f1=0;
                //fputc('\n', merged);
            }
            if(line=='\n'||line==46)
                counter=2;
            if(f1!=0) {
                fputc(line, stdout);
                //fprintf(stdout, "%s", line);
                //fputc('\n', merged);
            }
        }

        if(counter==2||f1==0)
        {
            line=fgetc(second);
            if(line==EOF)
                f2=0;

            if(line=='\n'||line==46)
                counter=1;
            if(f2!=0) {
                fputc(line, stdout);
                //fprintf(stdout, "%s", line);
            }
            if(f1==0&&f2==0)
                break;
        }
    }

    fclose(first);
    fclose(second);
    fclose(merged);
}
#endif