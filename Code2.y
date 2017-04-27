%{
#include <stdio.h>
int java=0,html=0,c=0,php=0,xml=0;
%}
%token C JAVA PHP XML HTML

%%
toks	:	tok|toks tok ;
tok	:	java|c|php|xml|something;

	
something:	HTML	{printf("HTML\n")};
	|	something PHP	{printf("PHP embedded in HTML\n")};
	|	something XML	{printf("XML embedded in HTML\n")};
	
php	:	PHP	{printf("PHP\n")};

java	:	JAVA	{printf("JAVA\n")};

c	:	C	{printf("C\n")};
			
xml	:	XML	{printf("XML\n")};


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
	//yyin=fopen("input.txt","r");
	
	
	yyparse();
	
	
	/*if(html)
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
	printf("Ain't no code!!!\n");*/
	
	
	fclose(yyin);
}