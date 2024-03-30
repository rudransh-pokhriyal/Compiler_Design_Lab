%{
#include<math.h>
int flag;
%}

%%
[0-9]+ {
        int n=atoi(yytext);
        flag=0;
        for(int i=2;i<sqrt(n);i++)
        {
            if(n%i==0)
            {
                flag=1;
                break;
            }
        }
        if(flag==0)
        printf("Prime\n");
        else
        printf("Not Prime\n");
       }
%%

int yywrap()
{
    return 1;
}

int main() 
{ 
  yylex(); 
  return 0; 
} 