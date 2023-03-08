import 'dart:async';

void main(List<String> args) {
  var myStream = myStreamF(1, 10).asBroadcastStream();
  StreamSubscription mystreamV = myStream.listen((event) {
    if (event.isEven) {
      print('Par: $event');
    } else {
      print('Impar: $event');
    }
  });
  myStream.map((event) => event * 2).listen((event) {
    print('Dobro: $event');
  });
}

Stream myStreamF(int intervalo, [int? maxCount]) async* {
  int i = 1;
  while (i != maxCount) {
    print('Contando $i');
    await Future.delayed(Duration(seconds: intervalo));
    yield i++;
  }
}
