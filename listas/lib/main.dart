import 'dart:io';
import 'listas.dart' as listas;

void main() {
  int i = -1;
  List<String> listaNomes = [];
  List<int> listaInteiros = [];
  List<dynamic> listaDinamica = [];
  List<dynamic> matriz = [
    [1, 2, 3],
    [4, 5, 6],
    ['Joao', 'Maria', 'Jose'],
    [true, false, true],
    [
      {1: 'a'},
      {2: 'b'},
      {3: 'c'}
    ]
  ];

  while (i != 0) {
    print('Menu');
    print('1 - Cria lista de String');
    print('2 - Cria lista de Int');
    print('3 - Adiciona nome na lista');
    print('4 - Retorna nome do index');
    print('5 - Retorna tamanho da lista');
    print('6 - Cria lista dinamica');
    print('7 - Executa forEach em lista nomes');
    print('8 - Executa map()');
    print('9 - Verifica se nome esta na lista');
    print('10 - Somando os elementos da lista');
    print('11 - Verifica se todos os nomes começam com a letra A');
    print('12 - Testa where(), firstWhere(), singleWhere(), lastWhere()');
    print('13 - Testa take()');
    print('14 - Testa skip()');
    print('15 - Testa sort()');
    print('16 - Testa from()');
    print('17 - Testa expand()');
    print('18 - Testa asMap()');
    print('19 - Testa JOIN()');
    print('20 - Testa split()');
    print('0 - Sair');

    try {
      print('Digite um numero: ');
      i = int.parse(stdin.readLineSync()!);
    } catch (e) {
      continue;
    }
    switch (i) {
      case 1:
        listaNomes = listas.crialistaSting();
        print(listaNomes);

        break;
      case 2:
        listaInteiros = listas.crialistaInt();
        print(listaInteiros);
        break;
      case 3:
        print('Digite um nome: ');
        String nome = stdin.readLineSync()!;
        listaNomes = listas.adicionaNomeLista(listaNomes, nome);
        print(listaNomes);
        break;
      case 4:
        print('Digite um index: ');
        int index = int.parse(stdin.readLineSync()!);
        print(listas.getNomeIndex(index));
        break;
      case 5:
        print(listas.tamanhoLista(listaNomes));
        break;
      case 6:
        print('Digite um objeto: ');
        dynamic nome = stdin.readLineSync()!;
        listaDinamica = listas.adicionaObjetoListaDinamica(listaDinamica, nome);
        print(listaDinamica);
        break;
      case 7:
        print('Executando forEach em lista nomes: ');
        listaNomes.forEach((nome) => print(nome));
        break;
      case 8:
        print('Executando map()');
        List<String> listaNomesNovos =
            listaNomes.map((nome) => 'Um nome de pessoa: $nome').toList();
        print(listaNomesNovos);
        break;

      case 9:
        print('Verifica se nome esta na lista');
        print('Digite um nome: ');
        String nome = stdin.readLineSync()!;
        var result = listaNomes.contains(nome);
        result == true
            ? print('Nome encontrado')
            : print('Nome não encontrado');
        break;
      case 10:
        print('Somando os elementos da lista');
        print(listaInteiros);
        var sum = listaInteiros.reduce((value, element) => value + element);
        var sum2 = listaInteiros.fold(
            2, (previousValue, element) => previousValue + element);
        print('Soma reduce: $sum');
        print('Soma fold: $sum2');
        break;
      case 11:
        print('Verifica se todos os nomes começam com a letra A');
        var hasNamesWithJ = listaNomes.every((nome) => nome.startsWith('A'));
        print(hasNamesWithJ);
        break;
      case 12:
        print('Testa where(), firstWhere(), singleWhere(), lastWhere()');
        var listaNomesComA = listaNomes.where((nome) => nome.startsWith('A'));
        print(listaNomesComA);
        var primeiroNomeComA =
            listaNomes.firstWhere((nome) => nome.startsWith('A'));
        print(primeiroNomeComA);
        var primeiroNomeComJ =
            listaNomes.firstWhere((nome) => nome.startsWith('A'));
        print(primeiroNomeComJ);
        var ultimoNomeComA =
            listaNomes.lastWhere((nome) => nome.startsWith('A'));
        print(ultimoNomeComA);

        break;
      case 13:
        print('Pega alguns elementos da lista');
        print('Digite um index: ');
        int index = int.parse(stdin.readLineSync()!);
        var listanova = listaNomes.take(index);
        print(listanova);
        break;
      case 14:
        print('Pula itens da lista nomes');
        print('Digite um index: ');
        int index = int.parse(stdin.readLineSync()!);
        var listanova = listaNomes.skip(index);
        print(listanova);
        break;
      case 15:
        print('Testa sort()');
        print(listaNomes);
        listaNomes.sort();
        print(listaNomes);
        break;
      case 16:
        print('Testa from()');
        print(listaNomes);
        var novalista = List.from(listaNomes);
        print(novalista);
        print(listaNomes.hashCode);
        print(novalista.hashCode);
        break;
      case 17:
        print('Testa expand()');
        print(matriz);
        var lista = matriz.expand((element) => element).toList();
        print(lista);
        break;
      case 18:
        print('Testa asMap()');
        print(listaNomes);
        var map = listaNomes.asMap();
        print(map);
        break;
      case 19:
        print('Testa join()');
        print(listaNomes);
        var nomes = listaNomes.join(' - ');
        print(nomes);
        break;
      case 20:
        print('Testa split()');
        print(listaNomes);
        var nomes = listaNomes.join(' - ');
        print(nomes);
        var lista = nomes.split(' - ');
        print(lista);
        break;

      case 0:
        print('Saindo...');
        break;
      default:
    }
  }
}
