import 'package:fish_redux/fish_redux.dart';

import 'counter/page.dart';
import 'data/constant.dart';

class Routes {
  static final Set<String> rawSet = {
    Constant.route_my_page,
    Constant.route_list_page,
    Constant.route_provider_page,
    Constant.route_stack_page,
    Constant.route_column_page
  };

  static final PageRoutes routes1 =
      PageRoutes(pages: <String, Page<Object, dynamic>>{
    Constant.route_counter_page: CounterPage(),
  });
}
