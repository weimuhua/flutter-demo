import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyAppPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SampleAppPageState();
  }
}

class _SampleAppPageState extends State<MyAppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample App"),
      ),
      body: ListView(
        children: <Widget>[
          Text('List Row One', style: new TextStyle(fontSize: 20)),
          Text('List Row Two', style: new TextStyle(fontSize: 20)),
          Text('List Row Three', style: new TextStyle(fontSize: 20)),
          Text('List Row Four', style: new TextStyle(fontSize: 20)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "/MyPage");
        },
        tooltip: 'jump to another page',
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}
