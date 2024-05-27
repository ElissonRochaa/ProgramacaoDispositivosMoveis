void main() {
  BombaCombustivel bomba1 = BombaCombustivel('Gasolina', 5.39, 10);

  double valorAbastecido = 100;
  double quantAbastecida = bomba1.abastacerPorValor(valorAbastecido);
  print(
      "Foi abastecido o valor de $valorAbastecido para uma quantidade de combustivel $quantAbastecida");
  print(
      "Nova quantidade de combustivel disponivel é ${bomba1.quantidadeCombustivel}");
}

class BombaCombustivel {
  //atributos
  String tipoCombustivel = '';
  double valorLitro = 0;
  double quantidadeCombustivel = 0;

  BombaCombustivel(
      this.tipoCombustivel, this.valorLitro, this.quantidadeCombustivel);

  //métodos
  //retorno será a quantidade abastecida
  double abastacerPorValor(double valorAbastecer) {
    double quantidadeAbastacida = valorAbastecer / this.valorLitro;
    this.quantidadeCombustivel -= quantidadeAbastacida;
    return quantidadeAbastacida;
  }

  //retorno será o valor a ser pago
  double abastecerPorLitro(double quantidadeLitroAbastecer) {
    double valorASerPago = quantidadeLitroAbastecer * this.valorLitro;
    this.quantidadeCombustivel -= quantidadeLitroAbastecer;
    return valorASerPago;
  }

  void alterarCombustivel(String novoCombustivel) {
    this.tipoCombustivel = novoCombustivel;
  }

  void alterarValor(double novoValorLitro) {
    this.valorLitro = novoValorLitro;
  }

  void alterarQuantidadeCombustivel(double novaQuantidadeCombustivel) {
    this.quantidadeCombustivel = novaQuantidadeCombustivel;
  }
}
