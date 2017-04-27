%option noyywrap
%{
#include <stdio.h>
int num=1;
%}

%%
^(.)*\n fprintf(yyout,"%d.\t%s",num++,yytext);
%%

main()
{
	yyin=fopen("input.txt","r");
	yyout=fopen("output.txt","w");
	yylex();
	fclose(yyout);
	fclose(yyin);
	
	return 0;
}