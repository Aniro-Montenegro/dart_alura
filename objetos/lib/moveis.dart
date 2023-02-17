class Moveis {
  late double peso;
  late double altura;
  late double largura;
  late bool isQuebravel;

  Moveis(
      {required this.peso,
      required this.altura,
      required this.largura,
      required this.isQuebravel});

  double get volume => altura * largura;
  double get pesoTotal => peso + volume;

  void isEletrico() {
    print('Este móvel é elétrico');
  }

  void comparacaoAltura(double altura) {
    if (altura > this.altura) {
      print('A altura do móvel é maior que a altura do objeto');
    } else {
      print('A altura do móvel é menor que a altura do objeto');
    }
  }
}
