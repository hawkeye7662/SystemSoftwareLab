# System Software Lab
Working lab programs for System Software Lab
# Executing Lex Programs
You can edit and execute lex only programs as follows:
```sh
gedit Lab1a.l
lex Lab1a.l
cc lex.yy.c
./a.out
```
# Executing YACC Programs
You can edit and execute yacc programs as follows:
```sh
gedit Lab1b.l
gedit Lab1b.y
yacc -d Lab1b.y
lex Lab1b.l
cc y.tab.c lex.yy.c -ll
./a.out
```
# Troubleshooting and quick fixes
If you are getting the following warnings:
```sh
warning: implicit declaration of function ‘yylex’
warning: implicit declaration of function ‘yyerror’
```
Add this code
```y
int yylex();
void yyerror(const char *s);
```
to your declaration section, inside the C definition section.

If you are getting the following error:
```sh
warning: type defaults to ‘int’ in declaration of ‘yylval’
```
Make sure you are including the keyword `int` in
```l
extern int yylval;
```
If you are getting the following error:
```sh
warning: return type defaults to ‘int’
```
Make sure you are including int before writing the function definions for main and yywrap
```l
int main()
```
