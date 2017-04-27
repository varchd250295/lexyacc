%option noyywrap
%{
#include <stdio.h>
%}


%%
"//"(.)*\n	{printf("%s",yytext);yytext=NULL;}
.|\n	;
%%

int main()
{
	yyin=fopen("input.txt","r");
	yylex();
	fclose(yyin);
	return 0;
}