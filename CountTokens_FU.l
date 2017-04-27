%option noyywrap
%{

#include <stdio.h>

int key=0,op=0,id=0;

%}

LETTER [a-zA-Z]

DIGIT [0-9]

%%

(auto|break|case|char|const|continue|default|do|double|else|enum|extern|float|for|goto|if|int|long|register|return|short|signed|sizeof|static|struct|switch|typedef|union|unsigned|void|volatile|while) {key++;}

[-+*/%!&|^~=] {op++;}

{LETTER}({LETTER}|{DIGIT})*  {id++;}

%%

main()

{

	yylex();

	printf("Keyword = %d \n",key);

	printf("Identifier = %d \n",id);

	printf("Operator = %d \n",op);

}