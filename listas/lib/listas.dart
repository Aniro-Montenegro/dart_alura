List<String> crialistaSting() {
  List<String> lista = [
    'Ana',
    'Bia',
    'Carlos',
    'Daniel',
    'Rafael',
    'Gui',
    'Rebeca',
    'Pedro',
    'João',
    'Maria',
    'Eduardo',
    'Julia',
    'Isabela',
    'Felipe',
    'Fernanda',
    'Gabriel',
    'Gustavo',
    'Henrique',
    'Isaac',
    'Isadora',
    'Júlia',
    'Júlio',
    'Lara',
    'Larissa',
    'Laura',
    'Luana',
    'Luiza',
    'Manuela',
    'Maria',
    'Mariana',
    'Matheus',
    'Miguel',
    'Murilo',
    'Nicole',
    'Noah',
    'Pedro',
    'Rafael',
    'Rafaela',
    'Raul',
    'Rebeca',
    'Renan',
    'Renata',
    'Ricardo',
    'Rodrigo',
    'Samuel',
    'Sofia',
    'Thaís',
    'Thiago',
    'Vitória',
    'Yasmin',
    'Yuri',
    'Ágatha',
    'Álvaro',
    'Angela',
    'Antônio',
    'Arthur',
  ];
  return lista;
}

List<int> crialistaInt() {
  List<int> lista = [1, 2, 3, 4, 5, 6];
  return lista;
}

List<String> adicionaNomeLista(List<String> lista, String nome) {
  lista.add(nome);
  return lista;
}

List<dynamic> adicionaObjetoListaDinamica(List<dynamic> lista, dynamic nome) {
  lista.add(nome);
  return lista;
}

String getNomeIndex(int index) {
  try {
    return crialistaSting()[index];
  } catch (e) {
    return 'Indice não encontrado';
  }
}

String tamanhoLista(List<String> lista) {
  return 'Tamanho da lista é: ${lista.length}';
}
