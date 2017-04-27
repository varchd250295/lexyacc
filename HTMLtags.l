%option noyywrap
%{
#include <stdio.h>
%}

%%
"<"[^>]*>	fprintf(yyout,"%s\r\n",yytext);
.|\n	;

%%

main()
{
	yyin=fopen("HTMLinput.txt","r");
	yyout=fopen("HTMLoutput.txt","w");
	yylex();
	fclose(yyout);
	fclose(yyin);
	
	return 0;
}