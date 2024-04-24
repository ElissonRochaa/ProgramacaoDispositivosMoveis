void main() {
  //for
  //while
  //do while
  int quantProdutos = 100;

  for (int i = 0; i < quantProdutos; i++) {}

  for (int i = quantProdutos - 1; i <= 0; i--) {}

  // int i = 0;
  // while (i < 10) {
  //   i++;
  // }

  bool condicao = false;
  int contador = 0;

  while (condicao) {
    print("WHILE: Olá");
    contador++;

    if (contador % 4 == 3) {
      condicao = false;
    }
  }
  contador = 0;
  condicao = false;
  do {
    print("DO WHILE: Olá");
    contador++;

    if (contador % 4 == 3) {
      condicao = false;
    }
  } while (condicao);
}
