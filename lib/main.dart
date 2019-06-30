import 'package:flutter/material.dart';
import 'package:flutter_demo/data/counter_model.dart';
import 'package:flutter_demo/page/counter_page.dart';
import 'package:flutter_demo/page/home_page.dart';
import 'package:flutter_demo/page/list_page.dart';
import 'package:flutter_demo/page/my_page.dart';
import 'package:flutter_demo/page/provider_page.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CounterModel>.value(
        value: CounterModel(),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: MyAppPage(),
          routes: <String, WidgetBuilder>{
            '/MyPage': (context) => new MyPage(),
            '/ListPage': (context) => new ListViewPage(),
            '/CounterPage': (context) => new CounterPage(),
            '/ProviderPage': (context) => new ProviderPage()
          },
        ));
  }
}
