/* Design a LEX code to identify and print integer / float in given input pattern.*/
%{
#include<stdio.h>
%}

%%
[0-9]+ {printf("This is an integer\n");}
[0-9]+"."[0-9]+ {printf("Float\n");}
%%

int yywrap()
{
    return 1;
}

int main()
{
    yylex();
    return 1;
}