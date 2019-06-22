import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Center(
      child: new RaisedButton(
        onPressed: null,
        child: new Text('Launch second screen'),
      ),
    ));
  }
}
