import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(
    CounterState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Fish Redux Counter Page'),
    ),
    body: Center(
      child: Text(
        'You hit me: ${20} times',
        style: TextStyle(color: Colors.white),
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        //TODO
      },
      child: Icon(Icons.add),
    ),
  );
}
