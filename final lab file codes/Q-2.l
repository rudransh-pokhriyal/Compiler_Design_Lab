/* Write a LEX program to remove comments from a C program.*/
%{
#include <stdio.h>
%}

/*Starting character sequence for multiline comment*/
start \\/\\*

/*Ending character sequence for multiline comment*/
end \\*\\/

/*Rule Section*/
%%
/*Regular expression for single-line comment*/
\\/\\/.* { /* Ignore single-line comments */ }

/*Regular expression for multi-line comment */
{start}.*{end} { /* Ignore multi-line comments */ }

%%

int yywrap() {
    return 1;
}

int main(int argc, char **argv) {
    yyin = fopen(argv[1], "r");
    yyout = fopen("out.c", "w");
    yylex();
    return 0;
}
