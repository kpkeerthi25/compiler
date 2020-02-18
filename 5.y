%{
	#include<stdio.h>
%}
%token	I ID NUM OP AP EQ LG DE DI
%%
E: I OP F C F AP {printf("valid");}
F: ID EQ NUM DE | ID DI | DE;
C: ID LG NUM DE ; 
%%
int yyerror(char *nsg)
{
	printf("erroe");
}
int main()
{
	yyparse();
	return 0;
}
