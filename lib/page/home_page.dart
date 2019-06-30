import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyAppPage extends StatelessWidget {
  static const list_page = 0;
  static const counter_page = 1;
  static const my_page = 2;

  List pages = <String>[];

  @override
  Widget build(BuildContext context) {
    createContent();

    return new Scaffold(
        appBar: AppBar(
          title: Text("Sample App"),
        ),
        body: new Center(
            child: new ListView.builder(
          itemBuilder: (BuildContext context, int pos) {
            return getRow(context, pos);
          },
          itemCount: pages.length,
        )));
  }

  Widget getRow(BuildContext context, int i) {
    return GestureDetector(
      child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(pages[i], style: TextStyle(fontSize: 18))),
      onTap: () {
        switch (i) {
          case list_page:
            Navigator.pushNamed(context, "/ListPage");
            break;
          case counter_page:
            Navigator.pushNamed(context, "/CounterPage");
            break;
          case my_page:
            Navigator.pushNamed(context, "/MyPage");
            break;
        }
      },
    );
  }

  void createContent() {
    pages.add("ListPage");
    pages.add("CounterPage");
    pages.add("MyPage");
  }
}
