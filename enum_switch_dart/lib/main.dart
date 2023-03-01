enum ListaCores {
  vermelho,
  verde,
  azul,
  amarelo,
  laranja,
  roxo,
  rosa,
  branco,
  preto,
  cinza,
  marrom,
  dourado,
  prata,
  transparente,
  bege;

  static void listaCores() {
    print(ListaCores.values);
  }

  static void listaCoresString() {
    print(ListaCores.values.map((e) => e.toString()).toList());
  }
}

void main() {
  escolheCor(ListaCores.azul);
  escolheCor(ListaCores.vermelho);
  escolheCor(ListaCores.branco);
  escolheCor(ListaCores.marrom);
  escolheCor(ListaCores.transparente);
  escolherCorSwith(ListaCores.azul);
  escolherCorSwith(ListaCores.vermelho);
  escolherCorSwith(ListaCores.branco);
  escolherCorSwith(ListaCores.marrom);
  escolherCorSwith(ListaCores.transparente);
  ListaCores.listaCores();
  ListaCores.listaCoresString();
}

escolheCor(ListaCores cor) {
  if (cor == ListaCores.vermelho) {
    print('vermelho');
  } else if (cor == ListaCores.azul) {
    print('azul');
  } else if (cor == ListaCores.branco) {
    print('branco');
  } else if (cor == ListaCores.marrom) {
    print('marrom');
  } else {
    print('nenhuma cor');
  }
}

escolherCorSwith(cor) {
  switch (cor) {
    case ListaCores.vermelho:
      print('vermelho');
      break;
    case ListaCores.azul:
      print('azul');
      break;
    case ListaCores.branco:
      print('branco');
      break;
    case ListaCores.marrom:
      print('marrom');
      break;
    default:
      print('nenhuma cor');
  }
}
