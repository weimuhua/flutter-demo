import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum CounterAction { action, jump_list }

class CounterActionCreator {
  static Action onAction() {
    return const Action(CounterAction.action);
  }

  static Action onJumpListPage() {
    return const Action(CounterAction.jump_list);
  }
}
