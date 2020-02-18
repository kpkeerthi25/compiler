%{
	#include"y.tab.h"
%}

%%
for		{return I;};
[a-zA-Z]*	{return ID;};
"("		{return OP;};
"="		{return EQ;};
[0-9]		{return NUM;};
";"		{return DE;};
"<"|">"|"<="|">="	{return LG;};
"++"|"--"		{return DI;};
")"		{return AP;};
.		{ECHO;};
%%

int yywrap()
{
	return 1;
}
