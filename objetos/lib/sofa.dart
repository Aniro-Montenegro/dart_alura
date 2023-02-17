import 'moveis.dart';

class Sofa extends Moveis {
  late String cor;
  late int numeroDePernas;
  late String tecido;
  late String material;
  late bool temEncosto;
  late bool temAssento;

  Sofa(
      {required double peso,
      required double altura,
      required double largura,
      required bool isQuebravel,
      required this.cor,
      required this.numeroDePernas,
      required this.tecido,
      required this.material,
      required this.temEncosto,
      required this.temAssento})
      : super(
            peso: peso,
            altura: altura,
            largura: largura,
            isQuebravel: isQuebravel);

  void descricao() {
    print(
        'O sofá é $cor, feito de $material, com $numeroDePernas pernas, $tecido, $temEncosto e $temAssento');
  }

  String updateSofa(String cor, String tecido, {String material = 'Madeira'}) {
    this.cor = cor;
    this.tecido = tecido;
    this.material = material;
    return 'O sofá foi atualizado para $cor, feito de $material, com $numeroDePernas pernas, $tecido, $temEncosto e $temAssento';
  }
}
