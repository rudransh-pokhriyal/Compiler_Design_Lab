%{
%}

%%
\/\/(.*)
\/\*(.*\n)*.*\*\/
. {fprintf(yyout,"%s",yytext);}
%%

int yywrap(){return 1;}

int main()
{
    printf("enter a string\n");
    yyout=fopen("output_of_comments.c","w");
    yylex();
    return 0;
}
