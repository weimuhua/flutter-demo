import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Effect<CounterState> buildEffect() {
  return combineEffects(<Object, Effect<CounterState>>{
    CounterAction.action: _onAction,
  });
}

void _onAction(Action action, Context<CounterState> ctx) {
}
