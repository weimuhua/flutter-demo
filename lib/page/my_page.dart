import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("My Page"),
        ),
        body: new Center(
          child: new RaisedButton(
            onPressed: () => Navigator.pushNamed(context, "/ListPage"),
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
