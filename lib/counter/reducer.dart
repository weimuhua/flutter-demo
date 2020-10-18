import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<CounterState> buildReducer() {
  return asReducer(
    <Object, Reducer<CounterState>>{
      CounterAction.action: _onAction,
    },
  );
}

CounterState _onAction(CounterState state, Action action) {
  final CounterState newState = state.clone();
  return newState;
}
