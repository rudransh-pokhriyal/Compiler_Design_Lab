%{
    int words=0;
%}

%%
([a-zA-Z0-9])* {words++;}
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