import 'package:flutter/widgets.dart';

class BlocProvider<T> extends InheritedWidget {
  final T bloc;
  final Widget child;

  BlocProvider({
    this.bloc,
    this.child,
  }) : super(child: child);

  static T of<T>(BuildContext context) {
    final type = _typeOf<BlocProvider<T>>();
    final blocProvider =
        context.inheritFromWidgetOfExactType(type) as BlocProvider;

    if (blocProvider == null) {
      throw FlutterError('Unable to find BLoC of type $type.\n'
          'Context provided: $context');
    }
    return blocProvider.bloc;
  }

  static Type _typeOf<T>() => T;

  @override
  bool updateShouldNotify(BlocProvider oldWidget) => true;
}
