import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Sample App"),
        ),
        body: new Center(
          child: new RaisedButton(
            onPressed: null,
            child: new Text('Launch second screen'),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          tooltip: 'finish this page',
          child: Icon(Icons.navigate_before),
        ));
  }
}
