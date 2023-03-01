import 'package:abstrata/pedido.dart';

class Lanche implements Pedido {
  @override
  bool isPago = false;

  late String sabor;

  @override
  double valor = 10.0;

  @override
  void estaPago() {
    if (isPago) {
      print("O lanche foi pago");
    } else {
      print("O lanche não foi pago");
    }
  }
}
