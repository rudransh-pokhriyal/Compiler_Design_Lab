%{
#include<stdio.h>
int n,cpy,rev;
%}

%%
[0-9]+ {
          rev=0;
          n=atoi(yytext);
          cpy=n;
          while(cpy>0)
          {
            rev=rev*10+cpy%10;
            cpy=cpy/10;
          }
          if(rev==n)
          printf("Palindrome");
          else
          printf("Not a Palindrome");
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