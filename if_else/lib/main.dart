import 'dart:io';

double calculaimc(double peso, double altura) {
  return double.parse((peso / (altura * altura)).toStringAsFixed(0));
}

void main() {
  double peso;
  double altura;

  while (true) {
    print('Digite um peso: ');
    peso = double.parse(stdin.readLineSync()!);
    print('Digite uma altura (ex: 1.75): ');
    altura = double.parse(stdin.readLineSync()!);
    double imc = calculaimc(peso, altura);
    if (imc < 18.5) {
      print('Abaixo do peso');
    } else if (imc >= 18.5 && imc < 25) {
      print('Peso normal');
    } else if (imc >= 25 && imc < 30) {
      print('Sobrepeso');
    } else if (imc >= 30 && imc < 35) {
      print('Obesidade grau 1');
    } else if (imc >= 35 && imc < 40) {
      print('Obesidade grau 2');
    } else if (imc >= 40) {
      print('Obesidade grau 3');
    }

    print('Para sair digite 0');
    String index = stdin.readLineSync()!;
    if (index == '0') {
      break;
    }
  }
}
