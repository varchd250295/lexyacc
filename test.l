%option noyywrap
%{
#include <stdio.h>
%}

DIGIT [0-9]

%%

{DIGIT}+ printf("%d\n",atoi(yytext));
.|\n ;
%%

main()
{
	yylex();
	
}