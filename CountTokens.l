%option noyywrap
%{
#include <stdio.h>
int keyword=0,operator=0,identifier=0;
%}

letter	[A-Za-z]
digit	[0-9]

%%
(auto|break|case|char|const|continue|default|do|double|else|enum|extern|float|for|goto|if|int|long|register|return|short|signed|sizeof|static|struct|switch|typedef|union|unsigned|void|volatile|while)	keyword++;

[-+*/%!&|^~=]	operator++;

{letter}({letter}|{digit})*	identifier++;

%%

main()
{
	yyin=fopen("input.txt","r");
	
	yylex();
	printf("\nNo. of Keywords :\t %d\n",keyword);
	printf("No. of Operators :\t %d\n",operator);
	printf("No. of Identifiers :\t %d\n",identifier);
	fclose(yyin);
	
	return 0;
	
}

