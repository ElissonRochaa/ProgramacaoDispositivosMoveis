void main() {
  /*
  Oii
  */
  //produto
  int codigo = 1;
  double preco = 3.14444;
  String nome = 'Arroz';
  bool ativo = true;

  //Tente não usar
  //var qualquer = 10;
  //dynamic outraCoisa = 3.14;
  //qualquer = 'Elisson';
  //print(qualquer);

  print(
      'Meu Produto ' + nome + ' com o preço de R\$' + preco.toStringAsFixed(2));
  print('Meu Produto $nome com o preço de R\$ ${preco.toStringAsFixed(2)}');
  print('Meu Produto $nome com o preço de R\$' + (preco * 2).toString());
  print('Meu Produto $nome com o preço de R\$ ${preco * 2}');
}
