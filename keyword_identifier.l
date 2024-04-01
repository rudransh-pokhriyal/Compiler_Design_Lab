%{
%}

%%
if|else|while|for|do|char|int|float {printf("Valid Keyword");}

[a-zA-Z]+[_a-zA-Z0-9]*    {printf("Valid Identifier");}

.*    {printf("Not valid identifier or keyword");}
%%

int yywrap()
{return 1;}

int main()
{
    yylex();
    return 1;
}