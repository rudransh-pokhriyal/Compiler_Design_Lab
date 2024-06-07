%{
%}
%%
[=|!=|<|<=|>|>=] {printf("%s is an operator\n",yytext);}
[,|;|(|)|{|}] {printf("%s is an seperator\n",yytext);}
int|float|main|while|if|else {printf("%s is an keyword\n",yytext);}
.[^\n] {{printf("%s is an identifier\n",yytext);}}
%%
int yywrap(){return 1;}
int main(){
    printf("enter a program:");
    yylex();
    return 0;
}
