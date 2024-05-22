%{
#include <stdio.h>
#include <stdlib.h>

void print_token(const char *token_type, const char *token_value) {
    printf("<%s, %s>\n", token_type, token_value);
}
%}

%%
"int"|"float"|"while"|"if"|"else"    { print_token("KEYWORD", yytext); }
"<="|"=="|"++"                        { print_token("OPERATOR", yytext); }
"+"|"-"|"*"|"/"|"="                   { print_token("OPERATOR", yytext); }
"(" | ")" | "{" | "}" | ";" | ","     { print_token("SEPARATOR", yytext); }
[0-9]+                               { print_token("INTEGER", yytext); }
[0-9]+"."[0-9]*                      { print_token("FLOAT", yytext); }
[a-zA-Z_][a-zA-Z0-9_]*               { print_token("IDENTIFIER", yytext); }
[ \t\n\r]+                           { /* skip whitespace */ }
.                                    { /* skip any other character */ }
%%

int yywrap()
{
    return 1;
}
int main() {
    yylex();
    return 0;
}
