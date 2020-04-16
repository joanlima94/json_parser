
%{
#include <stdio.h>
  #include <stdlib.h>
void yyerror(char *c);
int yylex(void);

%}

%token CHAVEABERTA NOME PONTOS NUM CHAVEFECHADA ASPAS VIRGU COLABERTO COLFECHADO

%left VIRGU

%%

JSON:
    CHAVEABERTA DENTRO CHAVEFECHADA {printf("VALIDO\n") ;}

DENTRO:
      PALAVRA PONTOS VALOR;
      | DENTRO VIRGU DENTRO;

PALAVRA:
        ASPAS PALAVRAS ASPAS;

PALAVRAS:
        NOME;

LISTA:
      COLABERTO VALOR COLFECHADO;

VALOR:
      VALORES;
      | VALOR VIRGU VALOR;


VALORES:
    NUM;
    | LISTA;
    | JSON;
    | PALAVRA;
    | COLABERTO COLFECHADO;

%%

void yyerror(char *s) {
  printf("INVALIDO\n");

}

int main() {
  yyparse();
    return 0;

}
