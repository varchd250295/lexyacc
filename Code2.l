%option noyywrap
%{
#include <stdio.h>
#include "Code2.tab.h"
%}

LETTER [a-zA-Z]

DIGIT [0-9]

%%

("<?php")	{ return PHP;}
("<?xml")	{return XML;}
("<html>")	{ return HTML;}
("#include")	{return C;}
("import")	{return JAVA;}
.|\n|\r ;

%%
