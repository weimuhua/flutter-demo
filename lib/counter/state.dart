import 'package:fish_redux/fish_redux.dart';

class CounterState implements Cloneable<CounterState> {

  @override
  CounterState clone() {
    return CounterState();
  }
}

CounterState initState(Map<String, dynamic> args) {
  return CounterState();
}
