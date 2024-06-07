%{
%}

%%
[0-9]+ {printf("%d is an integer\n",atoi(yytext));}
[0-9]*"."[0-9]+ {printf("%f is an float\n",atof(yytext));}
%%

int yywrap(){return 1;}

int main(){
    yylex();
    return 0;
}