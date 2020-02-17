%{ 
/* Definition section */
#include "y.tab.h" 
%} 

IDD [_a-zA-Z][_a-zA-Z0-9]*
INT [0-9]+

/* Rule Section */
%% 
"int"|"float"|"char"|"double" {return DT;}
"for" {return FOR;}
{IDD} {return ID;} 
{INT} {return IN;}
\n  {return NL;}
"("  {return OP;}
")"  {return CL;}
; {return DE;}
, {return CO;}
"++"|"--" {return UOP;}
"+" {return PL;}
"-" {return MI;}
"*" {return MU;}
"/" {return DI;} 
"=" {return EQ;} 
">" {return GT;} 
"<" {return LT;} 
.   {} 
%% 

int yywrap() 
{ 
return 1; 
} 

