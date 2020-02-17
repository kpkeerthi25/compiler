%{ 
/* Definition section */
#include<stdio.h> 
#include<stdlib.h> 
%} 

%token DT FOR ID IN NL OP CL DE CO EQ PL MI MU DI GT LT UOP

/* Rule Section */
%% 
stmt: S NL { printf("\nValid statement\n\n"); 
			exit(0); } 
; 
S: FOR OP B1 DE B2 DE B3 CL 
; 
B1: DEC | ST |
;
B2: OPE |
;
B3: OPE |
;
OPE: ST EXX
;
EXX: CO ST |
;
ST: ASS | UN | E V E
;
UN: UOP ID | ID UOP
;
V: GT | LT
;
ASS: L EQ R | R
;
L: MU E | ID
;
R: E
;
DEC: DT IDX IDS
;
IDS: CO IDX IDS |
;
IDX: ID | ID EQ E
;
E: E PL T | T
;
T: T MI U | U
;
U: U MU P | P
;
P: P DI F | F
;
F: OP E CL | ID | IN
;
%% 

int yyerror(char *msg) 
{ 
printf("\nInvalid Statemet\n\n"); 
exit(0); 
} 

//driver code 
main() 
{ 
	extern FILE* yyin; 
    yyin=fopen("for.c","r");
	yyparse(); 
} 

