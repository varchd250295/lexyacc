%option noyywrap
%{
#include <stdio.h>
#include "Code.tab.h"
%}
          
%%

("<?php")	{ return PHP;}
("<?xml")	{return XML;}
("<html>")	{ return HTML;}
("#include")	{return C;}
("import")	{return JAVA;}
.|\n|\r ;

%%
