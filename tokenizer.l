%option noyywrap
%{
#include <stdio.h>
#include "tokenizer.tab.h"
%}

DIGIT [0-9]

%%

{DIGIT}+ {yylval=atoi(yytext);return NUMBER;}
.|\n|\r ;
%%
