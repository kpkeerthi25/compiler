%{

%}

%%
[a-zA-Z0-9]+[" "]*[=][" "]*[a-zA-Z0-9]+([" "]*[=\+-/\*\^%]+[" "\+-]*[a-zA-Z0-9]+)* {printf("\n %s - Assignment Statement \n",yytext);}
.|\n ;
%%
int yywrap(){return 1;}
int main(){
	yyin=fopen("tok.c","r");
	yylex();
	return 0;
}
