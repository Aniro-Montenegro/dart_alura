import 'package:getter_setter/pessoa.dart';

void main() {
  Pessoa pessoa = Pessoa();
  pessoa.setNome = 'João';
  pessoa.setCpf = '123.456.789-00';
  pessoa.apelido = 'Joãozinho';
  // pessoa.nome="Nome"; nao funciona pois o atributo nome é privado
  print('Nome: ${pessoa.getNome}');
  print('CPF: ${pessoa.getCpf}');
  print('Apelido: ${pessoa.apelido}');
}
