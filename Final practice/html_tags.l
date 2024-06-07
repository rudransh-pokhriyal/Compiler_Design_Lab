%{
%}

%%
"<"[^>]*> {printf("%s",yytext);}
. ;
%%

int yywrap(){return 1;}

int main()
{
    yyin=fopen("test.html","r");
    yylex();
    return 0;
}