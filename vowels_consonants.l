%{
%}

%%
[aeiouAEIOU] {printf("Vowel");}
[A-Za-z]     {printf("Consonant");}
%%

int yywrap()
{return 1;}

int main()
{
    yylex();
    return 1;
}