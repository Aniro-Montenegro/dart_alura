import 'dart:io';

void main() {
  Set<String> presencas = {};
  String? nome;
  while (nome != '0') {
    print('Digite o nome do aluno:');

    nome = stdin.readLineSync();

    if (nome == 'sair') {
      break;
    } else {
      incluirPresenca(presencas, nome!);
    }
    print(presencas);
  }
}

incluirPresenca(Set<String> presencas, String nome) {
  presencas.add(nome);
}
