%{
#include<stdio.h>
#include<stdlib.h>
int yylex();
void yyerror(const char *s);
%}
%token A B
%%
input:s'\n' {printf("Successful Grammar\n");exit(0);}
s: A s1 B| B 
s1: ; | A s1
%%
void yyerror(const char *s) {
printf("Error\n");
exit(0);
}
int main()
{
printf("Enter A String\n");
yyparse();
}
