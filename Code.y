%{
#include <stdio.h>
int java=0,html=0,c=0,php=0,xml=0;
%}
%token C JAVA PHP XML HTML

%%
toks	:	tok|toks tok ;
tok	:	JAVA	{java=1;};
		|C	{c=1;};
		|HTML	{html=1};
		|PHP	{php=1};
		|XML	{xml=1};


%%
extern FILE * yyin;

 int yyerror (char const *s)
 {
   fprintf (stderr, "%s\n", s);
   return 1;
 }

extern FILE * yyin;

main()
{
	yyin=freopen("input.txt","r",stdin);
	
	
	
	yyparse();
	
	
	if(html)
	{
		if(php && xml)
		printf("PHP and XML embedded in ");
		else if(php)
		printf("PHP embedded in ");
		else if(xml)
		printf("XML embedded in ");
		
		printf("HTML\n");
	}	
	else if(c)
	printf("C\n");
	else if(java)
	printf("Java\n");
	else
	printf("Ain't no code!!!\n");
	
	
	fclose(yyin);
}