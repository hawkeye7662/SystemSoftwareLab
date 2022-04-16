%option noyywrap
%{
#include <stdio.h>
int v=0,op=0,id=0,flag=0;
%}
%%
[a-zA-Z]+[0-9A-Za-z]* {id++;printf("\nIdenitifier:");ECHO;}
[\+\-\*\/\=] {op++;printf("\nOperator:");ECHO;}
"(" {v++;}
")" {v--;}
";" {flag=1;}
. | \n ;
%%
int main()
{
printf("Enter the expression\n");
yylex();
if((op+1)==id&&v==0&&flag==0)
printf("\nExpression is Valid\n");
else
printf("\nExpression is Invalid\n");
}
