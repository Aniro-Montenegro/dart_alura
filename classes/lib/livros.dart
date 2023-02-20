class Livros {
  String titulo;
  String editora;
  String autor;
  double? preco;
  Livros(this.titulo, this.editora, this.autor, {this.preco});

  Livros.nomeados(
      {required this.titulo,
      required this.editora,
      required this.autor,
      this.preco});

  void nomedoLivro() {
    print('O nome do livro é $titulo');
  }

  void precoDoLivro() {
    print('O preço do livro é $preco');
  }

  void livroGratuito() {
    if (preco == null) {
      print('O livro é gratuito');
    } else {
      print('O livro não é gratuito');
    }
  }

  bool isLivroCaro(double valorParemetro) {
    if (preco == null) {
      return false;
    } else {
      return preco! > valorParemetro;
    }
  }
}
