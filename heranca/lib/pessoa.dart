class Pessoa {
  String nome;
  int idade;
  String sexo;
  String telefone;
  Pessoa(this.nome, this.idade, this.sexo, this.telefone);

  void printPessoa() {
    print('Nome: $nome');
    print('Idade: $idade');
    print('Sexo: $sexo');
  }

  void printTelefone() {
    print('Telefone: $telefone');
  }
}
