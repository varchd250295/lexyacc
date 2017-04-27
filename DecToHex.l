%option noyywrap
%{
#include <stdio.h>
%}

digit [0-9]
%%
{digit}+	printf("%x\n",atoi(yytext));
%%

int main()
{
	yylex();
}