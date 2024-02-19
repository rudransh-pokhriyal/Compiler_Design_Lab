%{
    int words=0;
%}

%%
" "+[a-z.A-z]+" " {words++;}
%%

int yywrap()
{
    return 1;
}

int main()
{
    yylex();
    printf("No. of words:%d",words);
}