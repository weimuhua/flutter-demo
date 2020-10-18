import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/data/counter_model.dart';
import 'package:flutter_demo/page/column_page.dart';
import 'package:flutter_demo/page/home_page.dart';
import 'package:flutter_demo/page/list_page.dart';
import 'package:flutter_demo/page/my_page.dart';
import 'package:flutter_demo/page/provider_page.dart';
import 'package:flutter_demo/page/stack_page.dart';
import 'package:flutter_demo/routes.dart';
import 'package:provider/provider.dart';

import 'data/constant.dart';
import 'page/my_page.dart';

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
          onGenerateRoute: (RouteSettings settings) {
            return MaterialPageRoute(builder: (BuildContext context) {
              if (!Routes.rawSet.contains(settings.name)) {
                return Routes.routes1
                    .buildPage(settings.name, settings.arguments);
              } else {
                return buildRoutes(settings.name, settings.arguments);
              }
            });
          },
        ));
  }

  Widget buildRoutes(String path, dynamic arguments) {
    if (Constant.route_my_page == path) {
      return MyPage();
    } else if (Constant.route_list_page == path) {
      return ListViewPage();
    } else if (Constant.route_provider_page == path) {
      return ProviderPage();
    } else if (Constant.route_stack_page == path) {
      return StackPage();
    } else if (Constant.route_column_page == path) {
      return ColumnPage();
    } else {
      return null;
    }
  }
}
