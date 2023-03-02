void main() {
  Map<String, double> valores = {};
  valores['A'] = 10.0;
  valores['B'] = 20.0;
  valores['C'] = 30.0;
  valores['D'] = 40.0;

  print(valores);
  print(valores['A']);
  valores.remove('A');
  valores['B'] = 100.0;
  print(valores);

  Map<String, dynamic> pessoa = {
    'nome': 'João',
    'idade': 30,
    'peso': 80.0,
    'solteiro': false,
  };
  print(pessoa);
  pessoa['solteiro'] = true;
  print(pessoa);
}
