%{
%}

%%
if|while|else|do|for|int|float|void {printf("%s is keyword\n",yytext);}
[a-zA-Z]+[_a-zA-Z0-9]* {printf("%s is identifier\n",yytext);}
","|"."|";" {printf("%s is a seperator\n",yytext);}
%%

int yywrap(){return 1;}

int main()
{
    yylex();
    return 0;
}