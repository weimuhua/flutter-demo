import 'package:flutter/material.dart';
import 'package:flutter_demo/data/counter_model.dart';
import 'package:flutter_demo/page/column_page.dart';
import 'package:flutter_demo/page/expaned_page.dart';
import 'package:flutter_demo/page/home_page.dart';
import 'package:flutter_demo/page/list_page.dart';
import 'package:flutter_demo/page/my_page.dart';
import 'package:flutter_demo/page/provider_page.dart';
import 'package:flutter_demo/page/stack_page.dart';
import 'package:provider/provider.dart';

import 'data/constant.dart';

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
            Constant.route_my_page: (context) => new MyPage(),
            Constant.route_list_page: (context) => new ListViewPage(),
//            Constant.route_counter_page: (context) => new CounterPage(),
            Constant.route_provider_page: (context) => new ProviderPage(),
            Constant.route_stack_page: (context) => new StackPage(),
            Constant.route_column_page: (context) => new ColumnPage(),
            Constant.route_expanded_page: (context) => new ExpandedPage(),
          },
        ));
  }
}
