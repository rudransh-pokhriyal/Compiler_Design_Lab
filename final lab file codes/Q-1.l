 //Design a LEX code to count number of lines, words, spaces and tabs in a given Input pattern 
 %{
#include <stdio.h>
int lc = 0, sc = 0, tc = 0, ch = 0, wc = 0;
%}

%%

[\n] { lc++; ch += yyleng; } // Line counter
[ \t] { sc++; ch += yyleng; } // Space counter
[^\t\n] { tc++; ch += yyleng; } // Tab counter
[^\t\n ]+ { wc++; ch += yyleng; } // Word counter

%%

int yywrap() {
    return 1;
}

int main() {
    printf("Enter the Sentence: ");
    yylex();
    printf("Number of lines: %d\n", lc);
    printf("Number of spaces: %d\n", sc);
    printf("Number of tabs, words, characters: %d, %d, %d\n", tc, wc, ch);
    return 0;
}
