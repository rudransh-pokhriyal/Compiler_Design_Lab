%{
int lines,spaces,words,character;
%}
%%
[\n] {lines++;character+=yyleng;}
[ \t] {spaces++;character+=yyleng;}
[^\t\n ]+ {words++;character+=yyleng;}

%%
int yywrap(){return 1;}
int main(){
    printf("enter a string:");
    yylex();
    printf("\nno of words are:%d\n",words);
    printf("no of spaces are:%d\n",spaces);
    printf("no of lines are:%d\n",lines);
    printf("no of character are:%d\n",character);
    return 0;    
}