import 'package:objetos/moveis.dart';

class Cadeira extends Moveis {
  Cadeira(
      double peso,
      double altura,
      double largura,
      bool isQuebravel,
      this.cor,
      this.material,
      this.tipo,
      this.tipoPernas,
      this.tipoAssento,
      this.tipoEncosto,
      this.tipoRodas,
      this.tipoApoio)
      : super(
            peso: peso,
            altura: altura,
            largura: largura,
            isQuebravel: isQuebravel);
  late String nome = 'Cadeira';
  late String cor;
  late String material;
  late String tipo;
  late String tipoPernas;
  late String tipoAssento;
  late String tipoEncosto;
  late String tipoRodas;
  late String tipoApoio;

  String descricao() {
    return 'A $nome é $cor, feita de $material, do tipo $tipo, com $tipoPernas, $tipoAssento, $tipoEncosto, $tipoRodas e $tipoApoio';
  }

  String updateCadeira(String cor, String tipo, {String material = 'Madeira'}) {
    this.cor = cor;
    this.tipo = tipo;
    this.material = material;
    return 'A $nome foi atualizada para $cor, feita de $material, do tipo $tipo, com $tipoPernas, $tipoAssento, $tipoEncosto, $tipoRodas e $tipoApoio';
  }
}
