import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_demo/data/constant.dart';

class MyAppPage extends StatelessWidget {
  static const list_page = 0;
  static const counter_page = 1;
  static const my_page = 2;
  static const provider_page = 3;
  static const stack_page = 4;

  List pages = <String>[];

  @override
  Widget build(BuildContext context) {
    createContent();

    return new Scaffold(
        appBar: AppBar(
          title: Text("Flutter Sample App"),
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
            Navigator.pushNamed(context, Constant.route_list_page);
            break;
          case counter_page:
            Navigator.pushNamed(context, Constant.route_counter_page);
            break;
          case my_page:
            Navigator.pushNamed(context, Constant.route_my_page);
            break;
          case provider_page:
            Navigator.pushNamed(context, Constant.route_provider_page);
            break;
          case stack_page:
            Navigator.pushNamed(context, Constant.route_stack_page);
            break;
        }
      },
    );
  }

  void createContent() {
    pages.add("ListPage");
    pages.add("CounterPage");
    pages.add("MyPage");
    pages.add("ProviderPage");
    pages.add("StackPage");
  }
}
