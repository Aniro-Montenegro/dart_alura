import 'dart:io';

void main() {
  print('Menu');
  print('1 - Criar lista de numeros usando for');
  print('2 - Criar lista de numeros usando while');
  print('3 - Percorrer lista nomes usando for');
  print('4 - Percorrer lista nomes usando while');
  print('5 - Percorrer lista nomes usando for do while');
  print('6- break ou continue');
  print('0 - Sair\n');
  int index = -1;
  while (index != 0) {
    print('Menu');
    print('1 - Criar lista de numeros usando for');
    print('2 - Criar lista de numeros usando while');
    print('3 - Percorrer lista nomes usando for');
    print('4 - Percorrer lista nomes usando while');
    print('5 - Percorrer lista nomes usando for do while');
    print('6- break ou continue');
    print('0 - Sair\n');
    print('Digite um numero: ');
    index = int.parse(stdin.readLineSync()!);
    switch (index) {
      case 1:
        print('Criar lista de numeros usando for');
        List<int> lista = [];
        for (int i = 0; i < 10; i++) {
          lista.add(i);
        }
        print(lista);
        break;
      case 2:
        print('Criar lista de numeros usando while');
        List<int> lista = [];
        int i = 0;
        while (i < 10) {
          lista.add(i);
          i++;
        }
        print(lista);
        break;
      case 3:
        print('Percorrer lista nomes usando for');
        List<String> nomes = ['Joao', 'Maria', 'Jose'];
        for (var nome in nomes) {
          print(nome);
        }
        break;
      case 4:
        print('Percorrer lista nomes usando while');
        List<String> nomes = ['Joao', 'Maria', 'Jose'];
        int i = 0;
        while (i < nomes.length) {
          print(nomes[i]);
          i++;
        }
        break;
      case 5:
        print('Percorrer lista nomes usando for do while');
        List<String> nomes = [
          'Joao',
          'Maria',
          'Jose',
          'Pedro',
          'Paulo',
          'Ana',
          'Julia',
          'Carla',
          'Leticia',
          'Livia'
        ];
        int i = 0;
        do {
          print(nomes[i]);
          i++;
        } while (i < nomes.length);
        break;
      case 6:
        print('break ou continue');
        List<String> nomes = [
          'Joao',
          'Maria',
          'Jose',
          'Pedro',
          'Paulo',
          'Ana',
          'Julia',
          'Carla',
          'Leticia',
          'Livia'
        ];
        for (var nome in nomes) {
          if (nome == 'Pedro') {
            print('Encontrei Pedro');
            print('Deseja continuar? (s/n)');
            String resposta = stdin.readLineSync()!;
            if (resposta == 'n') {
              break;
            } else {
              continue;
            }
          } else if (nome == 'Paulo') {
            print('Encontrei Paulo');
            print('Deseja continuar? (s/n)');
            String resposta = stdin.readLineSync()!;
            if (resposta == 'n') {
              break;
            } else {
              continue;
            }
          }
          print(nome);
        }
        break;
    }
  }
}
