%{
#include <stdio.h>
#include <math.h>
%}

%%
[0-9]+ {
    int num = atoi(yytext);
    int square = num * num;
    int originalDigits = log10(num) + 1;
    int lastDigits = square % (int)pow(10, originalDigits);

    if (lastDigits == num) {
        printf("%d is an automorphic number.\n", num);
    } else {
        printf("%d is not an automorphic number.\n", num);
    }
}
%%
int yywrap()
{
    return 1;
}

int main() {
    yylex();
    return 0;
}
