%{
#include <stdio.h>
int charCount = 0;
int wordCount = 0;
int spaceCount = 0;
int inWord = 0;
%}

%%
[a-zA-Z]+   { charCount += yyleng; inWord = 1; }
[ \t\n]     { if (inWord) { wordCount++; inWord = 0; } spaceCount++; }
.           { charCount++; }
%%

int yywrap()
{return 1;}

int main() {
    FILE *file = fopen("input.txt", "r");
    if (!file) {
        printf("Error opening file.\n");
        return 1;
    }

    yyin = file;
    yylex();

    if (inWord) {
        wordCount++;
    }

    printf("Total characters: %d\n", charCount);
    printf("Total words: %d\n", wordCount);
    printf("Total whitespaces: %d\n", spaceCount);

    fclose(file);
    return 0;
}
