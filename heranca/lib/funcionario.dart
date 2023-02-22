import 'package:heranca/pessoa.dart';

class Funcionario extends Pessoa {
  double salario;
  String funcao;

  Funcionario(String nome, int idade, String sexo, String telefone,
      this.salario, this.funcao)
      : super(nome, idade, sexo, telefone);

  void printFuncionario() {
    printPessoa();
    print('Salário: $salario');
    print('Função: $funcao');
  }

  void printSalario() {
    print('Salário: $salario');
  }
}
