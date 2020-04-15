
%{
#include <stdio.h>
  #include <stdlib.h>
void yyerror(char *c);
int yylex(void);
%}

%token CHAVEABERTA NOME PONTO NUM CHAVEFECHADA ASPAS VIRGU COLABERTO COLFECHADO
%left OP

%%



%%

void yyerror(char *s) {

}

int main() {
  yyparse();
    return 0;

}
