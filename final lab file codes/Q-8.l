/* LEX program to count and print the number of characters, words, and white spaces in 'Input.txt' */

%{
#include <stdio.h>
%}

/* Global variables */
int tchar = 0, tword = 0, tspace = 0;

/* Rule Section */
%%
" " { tspace++; tword++; } /* Increase tspace and tword whenever encountering whitespace */
[ \t\n] tword++; /* Increase tword whenever encountering newline or tab character */
[^ \n\t] tchar++; /* Count non-whitespace characters */
%%

/* Call the yywrap function */
int yywrap() {
    return 1;
}

int main() {
    yyin = fopen("Input.txt", "r");
    yylex();
    printf("Number of characters: %d\nNumber of words: %d\nNumber of spaces: %d\n", tchar, tword, tspace);
    return 0;
}
