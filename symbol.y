%{
#include<stdio.h>
#include<stdlib.h>
char dt[20];
extern char* yytext;
extern int x;
%}

%token DT ID C SE E

%%
Stmt: S E{ printf("\nDONE!\n");return 0;}
;
S:S D| D
;
D: DT{strcpy(dt,yytext);} X SE
;
X: X C ID{fun();}
|ID{fun();}
;
%%
int yyerrror(){printf("error"); return 0;}
int main()
{
    extern FILE* yyin;
    yyin=fopen("tok.c","r");
    yyparse();
    return 0;
}
int size()
{
    if(dt[0]=='i')
        return 4;
    if(dt[0]=='f')
        return 4;
    if(dt[0]=='c')
        return 1;
    if(dt[0]=='d')
        return 8;

}
int fun()
{
    printf("%s - %s - %d - %s\n",dt,yytext,size(),x==0?"Global":"Local");
}
