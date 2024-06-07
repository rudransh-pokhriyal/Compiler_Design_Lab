%{
#include<math.h>
float a,b,ans;
int op;
%}

%%
[0-9]*|[0-9]*"."[0-9]+ {calc();}
[+] {op=1;}
[-] {op=2;}
[/] {op=3;}
[*] {op=4;}
[\n] {printf("Ans is %.2f\n",ans);}
%%

int calc()
{
    if(op==0)
    a=atof(yytext);
    else
    {
        b=atof(yytext);
        if(op==1)
        ans=a+b;
        else if(op==2)
        ans=a-b;
        else if(op==3)
        ans=a/b;
        else
        ans=a*b;
    }
    op=0;
    return 1;
}

int yywrap(){return 1;}

int main()
{
    yylex();
    return 0;
}