void main() {
  var numero = 10;
  //numero = '10'; erro
  dynamic numero2 = 10;
  numero2 = '10';

  var instrumento = Instrumento('Guitarra');
  print(instrumento.nome);
  print(Instrumento.tipo);
  Instrumento.tocar();
}

class Instrumento {
  String nome = 'Violão';
  static String tipo = 'corda';
  Instrumento(this.nome);
  static void tocar() {
    print('Tocando um instrumento');
  }
}
