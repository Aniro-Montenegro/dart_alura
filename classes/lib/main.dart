import 'package:classes/livros.dart';

void main(List<String> args) {
  print('Criando livros!');

  Livros livro1 =
      Livros('O Senhor dos Anéis', 'Editora 1', 'J. R. R. Tolkien', preco: 100);
  Livros livro2 =
      Livros('O Hobbit', 'Editora 2', 'J. R. R. Tolkien', preco: 50);
  Livros livro3 =
      Livros('O Silmarillion', 'Editora 3', 'J. R. R. Tolkien', preco: 150);

  print('O nome do livro é ${livro1.titulo}');
  print('O nome do livro é ${livro2.titulo}');
  print('O nome do livro é ${livro3.titulo}');
  bool livro1isCaro = livro1.isLivroCaro(152);
  print('O livro 1 é caro? $livro1isCaro');
  bool livro2isCaro = livro2.isLivroCaro(98);
  print('O livro 2 é caro? $livro2isCaro');
  bool livro3isCaro = livro3.isLivroCaro(100);
  print('O livro 3 é caro? $livro3isCaro');
}
