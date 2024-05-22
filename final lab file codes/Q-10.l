/* Lex program to remove comments from C program and save it in "out.c" */

%{
#include <stdio.h>
%}

/* Starting character sequence for multiline comment */
start \\/\\*

/* Ending character sequence for multiline comment */
end \\*\\/

/* Rule Section */
%%
{start}.*{end} ; /* Ignore multiline comments */
.|\n;
%%

/* Call the yywrap function */
int yywrap() {
    return 1;
}

int main(int argc, char *argv[]) {
    yyin = fopen(argv[1], "r");
    yyout = fopen("out.c", "w");
    yylex();
    return 0;
}
