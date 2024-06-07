%{
%}

%%
"<"[^>]*> {printf("%s",yytext);}
. ;
%%

int yywrap(){return 1;}

int main()
{
    yyin=fopen("test.txt","r");
    yylex();
    return 0;
}