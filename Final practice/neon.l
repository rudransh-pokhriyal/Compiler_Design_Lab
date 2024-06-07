%{
    int num,sq,sum;
%}

%%
[0-9]+ {neon();}
. ;
%%

int neon()
{
    num=atoi(yytext);
    sq=num*num;
    while(sq>0)
    {
        sum=sum+(sq%10);
        sq=sq/10;
    }
    if(sum==num)
    printf("%d is a neon number\n",num);
    else
    printf("%d is not a neon number\n",num);
}

int yywrap(){return 1;}

int main()
{
    yylex();
    return 0;
}