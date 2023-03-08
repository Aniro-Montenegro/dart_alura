void main() {
  //teste1();
  // teste2();
  minhaException();
}

teste1() {
  print('main() is running');

  Future returnInt = Future(() {
    print('`returnInt` Future is running');
    return 10;
  }).then((value) {
    print('`returnInt` Future is completed $value');
  });

  print('main() is completed');
}

teste2() async {
  Future.delayed(Duration(seconds: 5)).then((value) {
    print(DateTime.now().second);
  });
  await Future.delayed(Duration(seconds: 5)).then((value) {
    print(DateTime.now().second);
  });
  await Future.delayed(Duration(seconds: 6)).then((value) {
    print(DateTime.now().second);
  });
  await Future.delayed(Duration(seconds: 7)).then((value) {
    print(DateTime.now().second);
  });
  await Future.delayed(Duration(seconds: 8)).then((value) {
    print(DateTime.now().second);
  });
}

Future<int> myFutureFunc() async {
  print('myFutureFunc() is running');
  await Future.delayed(Duration(seconds: 5));
  throw Exception('Erro');
  return 10;
}

minhaException() async {
  myFutureFunc()
      .then((value) => print(value))
      .onError((error, stackTrace) => print(error))
      .whenComplete(() => print('Completo'));
}
