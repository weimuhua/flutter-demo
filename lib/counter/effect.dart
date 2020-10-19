import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_demo/data/constant.dart';

import 'action.dart';
import 'state.dart';

Effect<CounterState> buildEffect() {
  return combineEffects(<Object, Effect<CounterState>>{
    CounterAction.action: _onAction,
    CounterAction.jump_list: _onJumpListPage,
  });
}

void _onAction(Action action, Context<CounterState> ctx) {}

void _onJumpListPage(Action action, Context<CounterState> context) {
  Navigator.of(context.context)
      .pushNamed(Constant.route_list_page, arguments: null);
}
