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
    body: Column(
      children: [
        Row(
          children: [
            RaisedButton(
                onPressed: () {
                  dispatch(CounterActionCreator.onJumpListPage());
                },
                child: Text("Test Jump Page")),
            FlatButton(onPressed: null, child: Text("Button2")),
            FlatButton(onPressed: null, child: Text("Button3")),
          ],
        ),
        Center(
          child: Text(
            'You hit me: ${20} times',
            style: TextStyle(color: Colors.amber, fontSize: 20),
          ),
        ),
      ],
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        //TODO
      },
      child: Icon(Icons.add),
    ),
  );
}
