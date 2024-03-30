%{
%}

%%
[0-9]+ {
        int n=atoi(yytext);
        if(n%2==0)
        printf("Even Number\n");
        else
        printf("Odd Number\n");
       }

.*    {printf("Invalid\n");}
%%

int yywrap()
{
    return 1;
}

int main()
{
    yylex();
    return 1;
}
