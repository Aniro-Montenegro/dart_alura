void main() {
  Set<String> nomes = {"João", "Maria", "José", "Paulo", "Vitor", "José"};
  List<String> cidades = [
    "São Paulo",
    "Rio de Janeiro",
    "Belo Horizonte",
    "Curitiba",
    "Florianópolis",
    "São Paulo"
  ];
  Map<String, String> estados = {
    "SP": "São Paulo",
    "RJ": "Rio de Janeiro",
    "MG": "Minas Gerais",
    "PR": "Paraná",
    "SC": "Santa Catarina",
  };
  print(nomes);
  print(cidades);
  print(estados);
  print(nomes.first);
  print(cidades.last);
  print(estados.keys);

  print(nomes.elementAt(1));
  print(cidades.contains("São Paulo"));
  print(nomes.contains("José"));
}
