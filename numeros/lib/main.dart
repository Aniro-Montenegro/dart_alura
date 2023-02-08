import 'dart:io';

import 'package:numeros/numeros.dart' as numeros;

void main(List<String> args) {
  late int codigo = -1;
  while (codigo != 0) {
    print('\n\nMenu\n\n');
    print('1-Tipo do numero');
    print('2-Soma de dois numeros');
    print('3-Subtracao de dois numeros');
    print('4-Multiplicacao de dois numeros');
    print('5-Divisao de dois numeros');
    print('6- Resto da divisao');
    print('7- Converter em hexadecimal');
    print('8- Converter em decimal\n');
    print('0- Sair\n');

    print('Digite o codigo do menu:');
    codigo = int.parse(stdin.readLineSync()!);
    switch (codigo) {
      case 1:
        print('Digite um numero:\n');
        String numero = stdin.readLineSync()!;
        if (numero.contains('.') || numero.contains(',')) {
          stdout.write(numeros.typeNumber(double.parse(numero)));
        } else {
          stdout.write(numeros.typeNumber(int.parse(numero)));
        }

        break;
      case 2:
        print('Digite um numero:\n');
        var numero1 = stdin.readLineSync()!;
        final num1;
        final num2;
        if (numero1.contains('.') || numero1.contains(',')) {
          num1 = double.parse(numero1);
        } else {
          num1 = int.parse(numero1);
        }
        print('Digite outro numero:\n');
        var numero2 = stdin.readLineSync()!;
        if (numero2.contains('.') || numero2.contains(',')) {
          num2 = double.parse(numero2);
        } else {
          num2 = int.parse(numero2);
        }
        stdout.write(numeros.sumTwoNumbers(num1, num2));
        break;
      case 3:
        print('Digite um numero:\n');
        var numero1 = stdin.readLineSync()!;
        final num1;
        final num2;
        if (numero1.contains('.') || numero1.contains(',')) {
          num1 = double.parse(numero1);
        } else {
          num1 = int.parse(numero1);
        }
        print('Digite outro numero:\n');
        var numero2 = stdin.readLineSync()!;
        if (numero2.contains('.') || numero2.contains(',')) {
          num2 = double.parse(numero2);
        } else {
          num2 = int.parse(numero2);
        }
        stdout.write(numeros.subtractionTwoNumbers(num1, num2));
        break;
      case 4:
        print('Digite um numero:\n');
        var numero1 = stdin.readLineSync()!;
        final num1;
        final num2;
        if (numero1.contains('.') || numero1.contains(',')) {
          num1 = double.parse(numero1);
        } else {
          num1 = int.parse(numero1);
        }
        print('Digite outro numero:\n');
        var numero2 = stdin.readLineSync()!;
        if (numero2.contains('.') || numero2.contains(',')) {
          num2 = double.parse(numero2);
        } else {
          num2 = int.parse(numero2);
        }
        stdout.write(numeros.multiplicationwoNumbers(num1, num2));
        break;
      case 5:
        print('Digite um numero:\n');
        var numero1 = stdin.readLineSync()!;
        final num1;
        final num2;
        if (numero1.contains('.') || numero1.contains(',')) {
          num1 = double.parse(numero1);
        } else {
          num1 = int.parse(numero1);
        }
        print('Digite outro numero:\n');
        var numero2 = stdin.readLineSync()!;
        if (numero2.contains('.') || numero2.contains(',')) {
          num2 = double.parse(numero2);
        } else {
          num2 = int.parse(numero2);
        }
        stdout.write(numeros.divideTwoNumbers(num1, num2));
        break;
      case 6:
        print('Digite um numero:\n');
        var numero1 = stdin.readLineSync()!;
        final num1;
        final num2;
        if (numero1.contains('.') || numero1.contains(',')) {
          num1 = double.parse(numero1);
        } else {
          num1 = int.parse(numero1);
        }
        print('Digite outro numero:\n');
        var numero2 = stdin.readLineSync()!;
        if (numero2.contains('.') || numero2.contains(',')) {
          num2 = double.parse(numero2);
        } else {
          num2 = int.parse(numero2);
        }
        stdout.write(numeros.restDivideTwoNumbers(num1, num2));
        break;
      case 7:
        print('Digite um numero:\n');
        String numero = stdin.readLineSync()!;
        if (numero.contains('.') || numero.contains(',')) {
          stdout.write(numeros.convertHex(double.parse(numero)));
        } else {
          stdout.write(numeros.convertHex(int.parse(numero)));
        }

        break;
      case 8:
        print('Digite um numero:\n');
        String numero = stdin.readLineSync()!;
        if (numero.contains('.') || numero.contains(',')) {
          numero.replaceAll('.', '').replaceAll(',', '');
        }

        stdout.write(numeros.convertExp(int.parse(numero)));

        break;
      default:
        print('Codigo inválido:\n');
    }
  }
}
