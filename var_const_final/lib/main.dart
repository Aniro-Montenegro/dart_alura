import 'package:var_const_final/var_const_final.dart';
import 'dart:io';

void main(List<String> args) {
  Pessoa pessoa = Pessoa(nome: 'Joao', altura: 1.80, profissao: 'Programador');

  int index = -1;
  while (index != 0) {
    print('Menu');
    print('1 - Imprime nome');
    print('2 - Imprime altura');
    print('3 - Imprime profissao');
    print('4 - Imprime dia de nascimento');
    print('5 - Imprime mes de nascimento');
    print('6 - Imprime ano de nascimento');

    print('7 - Muda idade');
    print('8 - Verifica tipo da variavel');
    print('9 - Declaração var');

    print('0 - Sair');
    try {
      print('Digite um numero: ');
      index = int.parse(stdin.readLineSync()!);
    } catch (e) {
      continue;
    }
    switch (index) {
      case 1:
        print(pessoa.nome);
        break;
      case 2:
        print(pessoa.altura);
        break;
      case 3:
        print(pessoa.profissao);
        break;
      case 4:
        print(Pessoa.diaNascimento);
        break;
      case 5:
        print(Pessoa.mesNascimento);
        break;
      case 6:
        print(Pessoa.anoNascimento);
        break;
      case 7:
        print('Mudar dia de nasciemnto');

        print(
            'Dia de nascimento não pode ser alterado. Tipo de variavel const');
        break;
      case 8:
        print('Verificar tipo da variavel');
        print('Nome tipo ${pessoa.nome.runtimeType}');
        print('Altura tipo ${pessoa.altura.runtimeType}');
        print('Profissao tipo ${pessoa.profissao.runtimeType}');
        print('Dia de nascimento tipo ${Pessoa.diaNascimento.runtimeType}');
        print('Mes de nascimento tipo ${Pessoa.mesNascimento.runtimeType}');
        print('Ano de nascimento tipo ${Pessoa.anoNascimento.runtimeType}');
        break;

      case 9:
        var numeroInt = 1;
        print('var numeroInt = 1;');
        print('Tipo da variavel numeroInt= ${numeroInt.runtimeType}\n');
        var numeroDouble = 2.56;
        print('var numeroDouble = 2.56;');
        print('Tipo da variavel numeroDouble= ${numeroDouble.runtimeType}\n');
        var nameString = 'Exemplo de string';
        print('var nameString = "Exemplo de string";');
        print('Tipo da variavel nameString= ${nameString.runtimeType}\n');
        var booleano = true;
        print('var booleano = true;');
        print('Tipo da variavel booleano= ${booleano.runtimeType}\n');
        break;
      default:
        break;
    }
  }
}
