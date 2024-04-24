void main() {
  int numeroSelecionado = 5;

  print("Nossa Tabuada:");
  print("Numero selecionado foi $numeroSelecionado");
  for (int i = 1; i <= 10; i++) {
    int resultado = numeroSelecionado * i;
    print('$numeroSelecionado * $i = $resultado');
  }
}
