import 'dart:io';

void main() {
  print('Digite um número: ');
  int numero = int.parse(stdin.readLineSync()!);
  print('O fatorial de $numero é ${fatorial(numero)}');
}

int fatorial(int numero) {
  if (numero == 0) {
    return 1;
  } else {
    return numero * fatorial(numero - 1);
  }
}
