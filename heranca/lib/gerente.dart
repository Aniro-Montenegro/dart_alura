import 'package:heranca/pessoa.dart';

class Gerente extends Pessoa {
  String cargo;
  Gerente(String nome, int idade, String sexo, String telefone, this.cargo)
      : super(nome, idade, sexo, telefone);

  printGerente() {
    printPessoa();
    print('Cargo: $cargo');
  }

  printCargo() {
    print('Cargo: $cargo');
  }
}
