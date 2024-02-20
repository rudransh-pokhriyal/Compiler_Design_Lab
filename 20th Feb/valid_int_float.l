%% 
[0-9]+  {printf("Integer\n");}
[0-9]+"."[0-9]+ {printf("Float\n");}
// if we change + to * then we can accept .9 also because * means 0 or more occurence
%%

int yywrap()
{ 
    return 1;
}

int main()
{
    yylex();
}


