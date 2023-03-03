class Pessoa {
  String _nome = "";
  String _cpf = "";
  late String apelido;

  String get getNome => _nome;

  set setNome(String nome) => _nome = nome;

  String get getCpf => _cpf;

  set setCpf(String cpf) => _cpf = cpf;
}
