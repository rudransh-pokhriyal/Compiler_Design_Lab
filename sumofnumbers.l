%{
#include <stdio.h>
int sum = 0;
%}

%%
[0-9]+   { sum += atoi(yytext); }
\n       { printf("Sum of numbers: %d\n", sum); sum = 0; }
.        {}
%%

int yywrap()
{
    return 1;
}
int main() {
    yylex();
    return 0;
}
