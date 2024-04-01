%{
#include<stdio.h>
int num,i;
%}

%%
[0-9]+  {
            num=atoi(yytext);
            for(i=1;i<=10;i++)
            {
                printf("%d X %d=%d\n",num,i,(num*i));
            }
        }
.       {printf("Invalid Input");}
%%

int yywrap()
{return 1;}

int main()
{
    yylex();
    return 1;
}