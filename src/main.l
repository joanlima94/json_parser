
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

[a-zA-Z0-9]+ {
              return NOME;
             }
[0-9]+[.]?[0-9]+ {
                 return NUM;
                 }
["] {
    return ASPAS;
    }

. ;

[\n] ;

%%

int yywrap() {
  return 1;
}
