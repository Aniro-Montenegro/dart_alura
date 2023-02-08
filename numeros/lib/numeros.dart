String typeNumber(var number) {
  return 'tipo: ${number.runtimeType.toString()}';
}

dynamic sumTwoNumbers(var number1, var number2) {
  return 'Sum: ${number1 + number2}';
}

dynamic subtractionTwoNumbers(var number1, var number2) {
  return 'SubtractionT: ${number1 - number2}';
}

dynamic divideTwoNumbers(var number1, var number2) {
  return 'Divide: ${number1 / number2}';
}

dynamic multiplicationwoNumbers(var number1, var number2) {
  return 'Multiplication: ${number1 * number2}';
}

dynamic restDivideTwoNumbers(var number1, var number2) {
  return 'Rest Divide: ${number1 % number2}';
}

dynamic convertHex(var number1) {
  try {
    int numero = int.parse(number1.toString());
    return 'Hexadecimal: ${numero.toRadixString(16)}';
  } catch (e) {
    return 'Não é possivel converter para hexadecimal';
  }
}

dynamic convertExp(var number1) {
  var lista = number1.toString().split('');
  int tamanho = lista.length;
  for (int i = tamanho - 1; i >= 0; i--) {
    if (lista[i] == '0') {
      lista.removeAt(i);
    } else if (lista[i] != '0') {
      break;
    }
  }
  int novonumero = int.parse(lista.join());
  int x = 1;
  while (true) {
    String d = '${novonumero}e$x';
    print(d);
    print(double.parse(d).toString());
    if (number1.toString() == double.parse(d).toString()) {
      return 'Hexadecimal: $d';
    }
    x++;
  }
}
