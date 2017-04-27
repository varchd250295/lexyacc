%{
#include <stdio.h>

%}
%token NUMBER

%%
nums: num| nums num;
num : NUMBER { printf("%d\n",$$);}
%%

 int yyerror (char const *s)
 {
   fprintf (stderr, "%s\n", s);
   return 1;
 }

main()
{
	yyparse();
}