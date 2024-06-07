%{
%}

%%
[\t" "]+ {fprintf(yyout," ");}
. | \n {fprintf(yyout,"%s",yytext);}
%%

int yywrap(){return 1;}

int main()
{
    yyin=fopen("spaces.txt","r");
    yyout=fopen("space.txt","w");
    yylex();
    return 0;
}