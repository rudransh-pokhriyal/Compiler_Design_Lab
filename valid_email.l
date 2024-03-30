%{
#include<stdio.h>
%}

%%
[a-zA-Z0-9]+"@"[a-z]+".com"|".in"|".org" {printf("Valid Email\n");}
.* {printf("Not valid email\n");}
%%

int yywrap()
{
    return 1;
}

int main()
{
    yylex();
    return 0;
}