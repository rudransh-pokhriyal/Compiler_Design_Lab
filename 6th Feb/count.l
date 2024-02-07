%{
int line,tab,ch,sp;
%}

%%
[\n] {line++;}
[\t] {tab++;}
[ ]  {sp++;}
.  {ch++;}
%%

int yywrap()
{
return 1;
}

int main()
{
printf("Enter sentence\n");
yylex();
printf("Lines:%d\n",line);
printf("tabs:%d\n",tab);
printf("space:%d\n",sp);
printf("characters:%d\n",ch);
}
