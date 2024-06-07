%{
#include<stdio.h>
int sp=0,wd=0,line=1,character=0;
%}

%%
[\n] {line++;character+=yyleng;}
[ \t] {sp++;character+=yyleng;}
[^\t\n ]+ {wd++;character+=yyleng;}
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("enter a string\n");
    yyin=fopen("input.txt","r");
    yylex();
    printf("lines are:%d\n",line);
    printf("spaces are:%d\n",sp);
    printf("characters are:%d\n",character);
    printf("words are:%d\n",wd);
    return 0;
}