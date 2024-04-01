%{
#include<stdio.h>
#include<math.h>
int cpy=0,c=0,n=0,sum=0;
%}

%%
[0-9]+  {
            n=atoi(yytext);
            cpy=n;
            while(cpy>0)
            {
                c++;
                cpy=cpy/10;
            }
            cpy=n;
            while(cpy>0)
            {
                sum=sum+pow(cpy%10,c);
                cpy=cpy/10;
            }
            if(sum==n)
            printf("Armstrong Number");
            else
            printf("Not a Armstrong Number");
        }
%%

int yywrap()
{
    return 1;
}
int main() {
    yylex();
    return 0;
}
