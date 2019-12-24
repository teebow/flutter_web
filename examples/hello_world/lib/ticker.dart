import 'dart:async';

class Ticker {


 @override
  // TODO: implement props
  List<Object> get props => null;
  

    Stream<int> tick({int ticks}) {
    return Stream.periodic(Duration(seconds: 1), (x) => ticks - x - 1)
        .take(ticks);

  }
}