%{
    #include "y.tab.h"
    int x=0;
%}
%%
"int"|"float"|"char"|"double" {return DT;}
[a-z]+ {return ID;}
"," {return C;}
<<EOF>> {return E;}
";" {return SE;}
"{" {x++; }
"}" {x--;}
.|\n {}
%%
int yywrap(){return 1;}
