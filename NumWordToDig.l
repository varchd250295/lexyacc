%{
#include<stdio.h>

#include<string.h>
int i=0;
%}

LINE \n

%%

[oO][nN][eE] {i+=1;}

[tT][wW][oO] {i+=2;}

[tT][hH][rR][eE][eE] {i+=3;}

[fF][oO][uU][rR] {i+=4;}

[fF][iI][vV][eE] {i+=5;}

[sS][iI][xX] {i+=6;}

[sS][eE][vV][eE][nN] {i+=7;}

[eE][iI][gG][hH][tT] {i+=8;}

[nN][iI][nN][eE] {i+=9;}

[hH][uU][nN][dD][rR][eE][dD] {i*=100;}

[tT][eE][nN] { i+=10;}

[tT][wW][eE][nN][tT][yY] { i+=20; }

[tT][hH][iI][rR][tT][yY] {i+=30; }

[fF][oO][rR][tT][yY] { i+=40; }

[fF][iI][fF][tT][yY] { i+=50; }

[sS][iI][xX][tT][yY] { i+=60; }

[sS][eE][vV][eE][nN][tT][yY] { i+=70; }

[eE][iI][gG][hH][tT][yY] { i+=80; }

[nN][iI][nN][eE][tT][yY] { i+=90; }




. {;}
[\n] {;}

%%

int main()

{
    yylex();
    printf("%d \n",i);
}