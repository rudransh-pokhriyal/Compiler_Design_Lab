%{
#include<stdio.h>
int i,j,flag=0;
%}

%%
[A-Za-z0-9]* {
                for(i=0,j=yyleng-1;i<=j;i++,j--)
                {
                    if(yytext[i]==yytext[j])
                    {
                        flag=0;
                    }
                    else
                    {
                        flag=1;
                        break;
                    }
                }
                if(flag==1)
                printf("Not Palindrome");
                else
                printf("Palindrome");
             }
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