void main() {
  Pessoa pessoa1 = Pessoa('Elisson', idade: 50, telefone: '819987654321');

  pessoa1.cumprimentar();

  Funcionario funcionario1 = Funcionario("Antonio", 30, '8798776543', 'vendas');
  funcionario1.cumprimentar();

  Gerente gerente1 = Gerente("Higor", 22, '8798764322', 'Vendas', 1);
  gerente1.cumprimentar();
}

class Pessoa {
  //Atributos
  String nome = '';
  int idade = 0;
  String telefone = '';

  //construtor
  // Pessoa(String nome, int idade, String telefone) {
  //   this.nome = nome;
  //   this.idade = idade;
  //   this.telefone = telefone;
  // }
  Pessoa(this.nome, {this.idade = 0, this.telefone = ''});

  //Métodos
  void cumprimentar() {
    print(
        'Olá, meu nome é ${this.nome}, tenho $idade anos e meu telefone é $telefone');
  }
  // public void setIdade(int idade){
  //   this.idade = idade;
  // }

  // set idade(int idade) {
  //   this._idade = idade;
  // }

  // int get idade => this._idade;
}

class Funcionario extends Pessoa {
  String setor = '';

  Funcionario(nome, idade, telefone, this.setor)
      : super(nome, idade: idade, telefone: telefone);

  //métodos
  void cumprimentar() {
    print(
        'Olá, meu nome é ${this.nome}, tenho $idade anos e meu telefone é $telefone e trabalho no setor $setor');
  }
}

class Gerente extends Funcionario {
  int quantidadePessoasSupervisionadas = 0;

  Gerente(nome, idade, telefone, setor, this.quantidadePessoasSupervisionadas)
      : super(nome, idade, telefone, setor);

  void cumprimentar() {
    print("Olá, eu sou o gerente. hahahaa. A desculpa, meu nome é $nome");
  }
}
