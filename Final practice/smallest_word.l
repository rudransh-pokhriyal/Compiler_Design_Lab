%{
int c=1000000000;
%}
%%
[a-zA-Z0-9]* {
    if(yyleng<c){
       c=yyleng;
    }
} 
%%
int yywrap(){return 1;}
int main(){
    printf("enter a word");
    yylex();
      printf("\nsmallest length: %d", c); 
    return 0;
}
