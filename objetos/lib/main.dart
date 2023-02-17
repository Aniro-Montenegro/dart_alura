import 'dart:io';

import 'package:objetos/cadeira.dart';

import 'sofa.dart';

void main() {
  int index = -1;
  late Sofa sofa;
  late Cadeira cadeira;
  while (index != 0) {
    print('1- Criar cadeira');
    print('2- Criar sofá');
    print('3- Atualizar cadeira');
    print('4- Atualizar sofá');
    print('5- Descricao cadeira');
    print('6- Descricao sofá');
    print('0- Sair');
    print('Digite um número: \n');
    index = int.parse(stdin.readLineSync()!);
    if (index == 1) {
      sofa = Sofa(
          altura: 1.45,
          largura: 1.45,
          peso: 1.45,
          isQuebravel: true,
          cor: 'Azul',
          numeroDePernas: 4,
          tecido: 'Couro',
          material: 'Madeira',
          temEncosto: true,
          temAssento: true);
    } else if (index == 2) {
      cadeira = Cadeira(
          1.56,
          1.2,
          1.5,
          true,
          'Amarelo',
          'Madeira',
          'Escritorio',
          'Tipo 1',
          'Estofado',
          'Reclinavel',
          'Sem rodas',
          'Cabeca');
    } else if (index == 3) {
      cadeira.updateCadeira('Vermelha', 'Casa');
    } else if (index == 4) {
      sofa.updateSofa('Vermelho', 'Couro');
    } else if (index == 5) {
      print(cadeira.descricao());
    } else if (index == 6) {
      sofa.descricao();
    }
  }
}
