%{
#include<stdio.h>
%}

%%
[0-9]+ {printf("This is and integer\n");}
[0-9]*"."[0-9]+ {printf("Float\n");}
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