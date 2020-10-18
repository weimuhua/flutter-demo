import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum CounterAction { action }

class CounterActionCreator {
  static Action onAction() {
    return const Action(CounterAction.action);
  }
}
