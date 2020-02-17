%{

%}
%%
["int main()"] {} 
int|float|char|double|void|auto {printf(" %s .... Keyword\n",yytext);}
[a-zA-Z]+([a-zA-Z0-9])* {printf(" %s .... identifier\n",yytext);}
[\+=/\*\^%] {printf(" %s .... operator\n",yytext);}
[0-9]+([\.]?[0-9]+)? {printf(" %s .... Constant\n",yytext);}
[{},;()] {printf(" %s .... separator\n",yytext);}
.|\n ;

#include([ ]?)<([a-z.])*> {
    printf("%s .... header file",yytext);
}
%%
int yywrap(){return 1;}
int main()
{
    extern FILE * yyin;
    yyin=fopen("tok.c","r");
    yylex();
    return 0;
}
