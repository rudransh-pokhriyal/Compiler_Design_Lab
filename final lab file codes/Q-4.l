/* Design a LEX code to extract all HTML Tags in the given HTML file at runtime. */
%{
#include <stdio.h>
%}

%%
<[^>]*> { fprintf(yyout, "%s\n", yytext); }
.|\n;

%%

int yywrap() {
    return 1;
}

int main() {
    yyin = fopen("input7.html", "r");
    yyout = fopen("output7.txt", "w");
    yylex();
    return 0;
}
