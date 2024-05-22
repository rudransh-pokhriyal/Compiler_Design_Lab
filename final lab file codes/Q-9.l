/* Lex program to replace multiple white spaces in 'Input.txt' with a single blank character in 'Output.txt' */

%{
#include <stdio.h>
%}

/* Rule Section */
%%
[ \t]+ { fprintf(yyout, " "); } /* Replace multiple spaces or tabs with a single space */
.|\n { fprintf(yyout, "%s", yytext); } /* Print other characters as they are */
%%

/* Call the yywrap function */
int yywrap() {
    return 1;
}

int main() {
    yyin = fopen("Input.txt", "r");
    yyout = fopen("Output.txt", "w");
    yylex();
    return 0;
}
