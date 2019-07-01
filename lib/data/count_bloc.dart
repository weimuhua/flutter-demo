import 'dart:async';

class CountBLoC {
  int _count = 0;
  final _controller = StreamController<int>();

  Stream<int> get stream => _controller.stream;

  int get value => _count;

  getValue() {
    return _count;
  }

  increment() {
    _controller.sink.add(++_count);
  }

  close() {
    _controller.sink.close();
  }
}
