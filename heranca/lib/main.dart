import 'package:heranca/funcionario.dart';
import 'package:heranca/gerente.dart';

void main() {
  var funcionario =
      Funcionario('João', 30, 'Masculino', '9999-9999', 1000.0, 'Programador');
  funcionario.printTelefone();
  funcionario.printFuncionario();
  funcionario.printSalario();
  print("");
  var gerente =
      Gerente('Maria', 40, 'Feminino', '8888-8888', 'Gerente de Projetos');
  gerente.printGerente();
  gerente.printTelefone();
  gerente.printCargo();
  //gerente.printSalario(); nao funciona, sem relacao com esse metodo
}
