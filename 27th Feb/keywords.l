%%
const |
final |
break |
else  |
while |
for   |
if    |
do    |
switch {printf("Keyword\n");}
.* {printf("Not a Keyword\n");}
%%

int yywrap()
{
    return 1;
}

int main()
{
    yylex();
}