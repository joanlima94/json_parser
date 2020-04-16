
%{
#include <stdlib.h>
void yyerror(char *);

#include "y.tab.h"

%}


%%

[{] {
    return CHAVEABERTA;
    }

[}] {
    return CHAVEFECHADA;
    }

[,] {
    return VIRGU;
    }

[[] {
    return COLABERTO;
    }

[]] {
    return COLFECHADO;
    }
[:] {
    return PONTOS;
    }

[a-zA-Z]+[0-9]*([ ]*[a-zA-Z]*[0-9]*)*(\n)* {
              return NOME;
             }
[0-9]+[.]?[0-9]+ {
                 return NUM;
                 }
[\"] {
    return ASPAS;
     }

. ;

[\n] ;

%%

int yywrap() {
  return 1;
}
