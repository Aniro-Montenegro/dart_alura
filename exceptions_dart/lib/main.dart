class NotIntdataException implements Exception {
  static const String message = "Insira um numero no formato int ou double";
  String mensagem = "Nao corresponde a int ou double";

  @override
  String toString() {
    return message;
  }
}

void main() {
  // recusiveFunction(-1);
  // parseFunction("10pp");
  // funcao1(1);
  // dobro(10);
  //dobro('25');
  verBilhete(4);
  verBilhete(6);
}

void recusiveFunction(int numero) {
  print(numero);
  assert(numero > 0, "Numero deve ser maior que zero");

  try {
    recusiveFunction(numero + 1);
  } on StackOverflowError catch (e, stacktrace) {
    print('StackOverflowError $e');
    print('StackOverflowError $stacktrace');
  } on FormatException catch (e, stacktrace) {
    print('FormatException $e');
    print('FormatException $stacktrace');
  } on Exception catch (e) {
    print('Exception: $e');
  } catch (e) {
    print('Error: $e');
  }
}

void parseFunction(String valor) {
  try {
    int.parse(valor);
  } on FormatException {
    print('FormatException');
  } on Exception catch (e) {
    print('Exception: $e');
  } catch (e) {
    print('Error: $e');
  } finally {
    print('Fim da função');
  }
}

void dobro(dynamic numero) {
  try {
    verificaNumero(numero);
  } on NotIntdataException catch (e) {
    print(e.mensagem);
    print(e);
  }
}

verificaNumero(dynamic numero) {
  if (numero.runtimeType != int) {
    throw NotIntdataException();
  } else {
    print(numero * 2);
  }
}

void funcao1(int numero) {
  print('Função 1');
  try {
    recusiveFunction(numero);
  } catch (e, s) {
    print('Error: $e ');
    print('Error: $s ');
  }
}

verBilhete(int numero) {
  Bilhete? bilhete;
  if (numero > 5) {
    bilhete = Bilhete(filme: 'Avatar', valor: 20.56);
  }

  print(bilhete?.filme);
  print(bilhete?.valor ?? 0);
  if (bilhete != null) {
    print(bilhete.valor);
  } else {
    print('Bilhete não existe');
  }
}

class Bilhete {
  String filme;
  double valor;
  Bilhete({required this.filme, required this.valor});
}
