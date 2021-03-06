%option noyywrap yylineno
%{
   #include <string.h>
   #include "micko.tab.h"
   #include "defs.h"
   extern YYSTYPE yylval;
%}

%%

[ \t\n]+             { /* skip */ }

"ceo"                  { yylval.i = INT;  return _TYPE; } // int
"neoznacsen"           { yylval.i = UINT; return _TYPE; }	// unsigned
"ukoliko"              { return _IF; }	// if
"inacse"               { return _ELSE; }	// else
"vrni"                 { return _RETURN; }	// return

"vrti"		       { return _FOR; } // for
"stande"	       { return _BREAK; } // break
"dok"		       { return _WHILE; } // while
"radi"		       { return _DO; } // do (for do while loops)

"izbori"               { return _SWITCH; } // switch
"slucsaj"	       { return _CASE; } // case
"podrazumevano"        { return _DEFAULT; } // default

"jovan"		       { yylval.i = JSON;  return _TYPE;} // json ID = {["ID" : "ID"] || ["ID" : num]}
":"		       { return _DOUBLEDOT; } // :
"."		       { return _DOT; } // . for getting json member (user.age) 
","		       { return _ZAPETA; } // ,

"druzyba"	       { yylval.i = LIST;  return _TYPE; } // list / collection 
"za"		       { return _FOR_EACH; } // for each element in 
"svaki"                { return _EACH; } // each
"unutar"               { return _IN; } // in list
"["                    { return _LSQUAREBRACKER; } // [] for list elements
"]"		       { return _RSQUAREBRACKER; } // [] for list elements

"++"		       { return _INC; }

"("                  { return _LPAREN; }
")"                  { return _RPAREN; }
"{"                  { return _LBRACKET; }
"}"                  { return _RBRACKET; }
";"                  { return _SEMICOLON; }
"="                  { return _ASSIGN; }

"+"                  { yylval.i = ADD; return _AROP; }
"-"                  { yylval.i = SUB; return _AROP; }

"<"                  { yylval.i = LT; return _RELOP; }
">"                  { yylval.i = GT; return _RELOP; }
"<="                 { yylval.i = LE; return _RELOP; }
">="                 { yylval.i = GE; return _RELOP; }
"=="                 { yylval.i = EQ; return _RELOP; }
"!="                 { yylval.i = NE; return _RELOP; }

[a-zA-Z][a-zA-Z0-9]* { yylval.s = strdup(yytext); 
                       return _ID; }
[+-]?[0-9]{1,10}     { yylval.s = strdup(yytext); 
                       return _INT_NUMBER;}
[0-9]{1,10}[uU]      { yylval.s = strdup(yytext); 
                       yylval.s[yyleng-1] = 0;
                       return _UINT_NUMBER;}

\/\/.*               { /* skip */ }
.                    { printf("line %d: LEXICAL ERROR on char %c\n", yylineno, *yytext);}
%%
